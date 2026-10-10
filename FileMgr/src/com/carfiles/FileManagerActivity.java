package com.carfiles;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputType;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.15 车机文件管理器。
 *
 * 车机场景下真正用得上的操作：看 /system /etc 里的配置、把亿连日志和配置传到手机、
 * 把手机上改好的配置文件传回任意目录、顺手删掉占空间的录音/视频。所以做了两层：
 *   - 普通模式：File API，够用且安全（/sdcard、App 目录）
 *   - root 模式：借 su 的眼睛和手，能看能改 /system /etc /data（eng 版车机有 su）
 *
 * 与现有骰 HTTP 通道打通：条目菜单里「发到手机 / 从此目录接收」会起 ShareServer(18083)。
 *
 * UI 全部代码构建（和 MainActivity 一样，不引 res/layout，省得 apktool 改编译资源）。
 */
public class FileManagerActivity extends Activity implements ShareServer.Listener {

    private static final int BG = 0xFF101014;
    private static final int FG = 0xFFE8E6F0;
    private static final int FG2 = 0xFF9B98A8;
    private static final int[] MAX_TEXT_VIEW = new int[]{512 * 1024};

    private TextView mPath;
    private TextView mStatus;
    private ListView mList;
    private CheckBox mRoot;
    private final Handler mHandler = new Handler();

    private String mCur;
    private boolean mRootMode;
    private FileOps.Entry[] mEntries = new FileOps.Entry[0];
    private String mClipFrom;
    private boolean mClipMove;

    // ------------------------------------------------------------------ 生命周期

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        UploadServer.init(this);
        setTitle("文件管理器");

        String start = getIntent().getStringExtra("path");
        if (start == null || start.length() == 0) {
            start = "/sdcard";
            if (!new File(start).isDirectory()) {
                start = FileOps.tmpDir().getAbsolutePath();
            }
        }
        mCur = start;

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        int pad = dp(10);
        root.setPadding(pad, pad, pad, pad);

        mPath = new TextView(this);
        mPath.setTextColor(0xFF8FB2FF);
        mPath.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        mPath.setSingleLine(false);
        mPath.setMaxLines(3);
        root.addView(mPath, mw());

        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.addView(btn("↑ 上级", new View.OnClickListener() {
            public void onClick(View v) {
                cd(FileOps.parent(mCur));
            }
        }), flex());
        row1.addView(btn("快捷位置", new View.OnClickListener() {
            public void onClick(View v) {
                showShortcuts();
            }
        }), flex());
        row1.addView(btn("新建目录", new View.OnClickListener() {
            public void onClick(View v) {
                askNewDir();
            }
        }), flex());
        row1.addView(btn("粘贴", new View.OnClickListener() {
            public void onClick(View v) {
                doPaste();
            }
        }), flex());
        LinearLayout.LayoutParams r1 = mw();
        r1.topMargin = dp(6);
        root.addView(row1, r1);

        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.addView(btn("搜索", new View.OnClickListener() {
            public void onClick(View v) {
                askSearch();
            }
        }), flex());
        row2.addView(btn("📱 手机遥控", new View.OnClickListener() {
            public void onClick(View v) {
                shareDir();
            }
        }), flex());
        row2.addView(btn("刷新", new View.OnClickListener() {
            public void onClick(View v) {
                FileOps.resetSu();
                refresh();
            }
        }), flex());
        LinearLayout.LayoutParams r2 = mw();
        r2.topMargin = dp(4);
        root.addView(row2, r2);

        mRoot = new CheckBox(this);
        mRoot.setText("root 模式（借用 su 查看/修改系统目录；无 su 自动退回普通模式）");
        mRoot.setTextColor(FG2);
        mRoot.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        mRoot.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton b, boolean checked) {
                mRootMode = checked;
                if (checked && !FileOps.suOk()) {
                    Toast.makeText(FileManagerActivity.this,
                            "未取得 root，本次仍按普通模式浏览（可先打开授权弹窗后点刷新）",
                            Toast.LENGTH_LONG).show();
                }
                refresh();
            }
        });
        LinearLayout.LayoutParams rlp = mw();
        rlp.topMargin = dp(6);
        root.addView(mRoot, rlp);

        mList = new ListView(this);
        mList.setBackgroundColor(0xFF16151C);
        mList.setCacheColorHint(0xFF16151C);
        mList.setAdapter(mAdapter);
        mList.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            public void onItemClick(android.widget.AdapterView<?> p, View v, int pos, long id) {
                FileOps.Entry e = mEntries[pos];
                if (e.dir) {
                    cd(e.path);
                } else {
                    fileMenu(e);
                }
            }
        });
        mList.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {
            public boolean onItemLongClick(android.widget.AdapterView<?> p, View v, int pos, long id) {
                if (mEntries[pos].dir) {
                    dirMenu(mEntries[pos]);
                } else {
                    fileMenu(mEntries[pos]);
                }
                return true;
            }
        });
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        llp.topMargin = dp(6);
        root.addView(mList, llp);

        mStatus = new TextView(this);
        mStatus.setTextColor(FG2);
        mStatus.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        mStatus.setPadding(dp(6), dp(6), dp(6), dp(6));
        mStatus.setBackgroundColor(0xFF1B1A21);
        LinearLayout.LayoutParams slp = mw();
        slp.topMargin = dp(6);
        root.addView(mStatus, slp);

        setContentView(root);
        mRootMode = FileOps.suOk();
        mRoot.setChecked(mRootMode);
        refresh();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    // ------------------------------------------------------------------ 浏览

    private void cd(String path) {
        mCur = path;
        refresh();
    }

    private void refresh() {
        final boolean useRoot = mRootMode && FileOps.suOk();
        if (mRootMode != useRoot) {
            mPath.post(new Runnable() {
                public void run() {
                    mStatus.setText("root 不可用，已按普通模式浏览");
                }
            });
        }
        mPath.setText(mCur);
        mStatus.setText("读取中…");
        final String dir = mCur;
        new Thread(new Runnable() {
            public void run() {
                final FileOps.Entry[] r = FileOps.list(dir, useRoot);
                mHandler.post(new Runnable() {
                    public void run() {
                        if (r == null) {
                            mEntries = new FileOps.Entry[0];
                            mAdapter.notifyDataSetChanged();
                            mStatus.setText("无法打开该目录（不存在 / 无权限）"
                                    + (useRoot ? "" : " — 可勾选 root 模式重试"));
                        } else {
                            mEntries = r;
                            mAdapter.notifyDataSetChanged();
                            long sz = 0;
                            int dirs = 0;
                            for (int i = 0; i < r.length; i++) {
                                if (r[i].dir) {
                                    dirs++;
                                } else if (r[i].size > 0) {
                                    sz += r[i].size;
                                }
                            }
                            mStatus.setText(r.length + " 项（" + dirs + " 目录 / "
                                    + (r.length - dirs) + " 文件，文件合计 "
                                    + FileOps.human(sz) + "）"
                                    + (useRoot ? "  [root]" : "  [普通]")
                                    + (mClipFrom != null ? "  剪贴板：" + new File(mClipFrom).getName() : ""));
                        }
                    }
                });
            }
        }).start();
    }

    private final BaseAdapter mAdapter = new BaseAdapter() {
        public int getCount() {
            return mEntries.length;
        }

        public Object getItem(int i) {
            return mEntries[i];
        }

        public long getItemId(int i) {
            return i;
        }

        public View getView(int i, View cv, ViewGroup parent) {
            FileOps.Entry e = mEntries[i];
            LinearLayout box = new LinearLayout(FileManagerActivity.this);
            box.setOrientation(LinearLayout.VERTICAL);
            int p = dp(10);
            box.setPadding(p, dp(7), p, dp(7));

            TextView name = new TextView(FileManagerActivity.this);
            name.setText((e.dir ? "📁 " : "📄 ") + e.name);
            name.setTextColor(e.dir ? 0xFF8FB2FF : FG);
            name.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
            name.setSingleLine(false);
            name.setMaxLines(2);
            box.addView(name);

            TextView meta = new TextView(FileManagerActivity.this);
            meta.setText(e.displayMeta());
            meta.setTextColor(FG2);
            meta.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            LinearLayout.LayoutParams mlp = mw();
            mlp.topMargin = dp(2);
            box.addView(meta, mlp);
            return box;
        }
    };

    // ------------------------------------------------------------------ 文件菜单

    private void fileMenu(final FileOps.Entry e) {
        String[] items = new String[]{
                "打开",
                "查看/编辑文本",
                "重命名",
                "复制",
                "剪切",
                "删除",
                "属性",
                "手机遥控这个目录（推荐）",
                "安装 APK"
        };
        new AlertDialog.Builder(this)
                .setTitle(e.name)
                .setItems(items, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        switch (w) {
                            case 0:
                                openFile(new File(e.path));
                                break;
                            case 1:
                                showText(e, true);
                                break;
                            case 2:
                                askRename(e);
                                break;
                            case 3:
                                mClipFrom = e.path;
                                mClipMove = false;
                                toast("已复制 " + e.name + "，到目标目录点「粘贴」");
                                refresh();
                                break;
                            case 4:
                                mClipFrom = e.path;
                                mClipMove = true;
                                toast("已剪切 " + e.name + "，到目标目录点「粘贴」");
                                refresh();
                                break;
                            case 5:
                                confirmDelete(e);
                                break;
                            case 6:
                                showProps(e);
                                break;
                            case 7:
                                openShare(new File(e.path));
                                break;
                            case 8:
                                if (e.path.toLowerCase().endsWith(".apk")) {
                                    doInstall(new File(e.path));
                                } else {
                                    toast("不是 APK");
                                }
                                break;
                        }
                    }
                })
                .setNegativeButton("关闭", null)
                .show();
    }

    private void dirMenu(final FileOps.Entry e) {
        String[] items = new String[]{
                "进入",
                "重命名",
                "复制整个目录",
                "删除（递归）",
                "打包发到手机",
                "上传到这个目录（手机→车机）",
                "属性"
        };
        new AlertDialog.Builder(this)
                .setTitle("目录 " + e.name)
                .setItems(items, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        switch (w) {
                            case 0:
                                cd(e.path);
                                break;
                            case 1:
                                askRename(e);
                                break;
                            case 2:
                                mClipFrom = e.path;
                                mClipMove = false;
                                toast("已复制目录 " + e.name);
                                refresh();
                                break;
                            case 3:
                                confirmDelete(e);
                                break;
                            case 4:
                                openShare(new File(e.path));
                                break;
                            case 5:
                                openShare(null);
                                break;
                            case 6:
                                showProps(e);
                                break;
                        }
                    }
                })
                .setNegativeButton("关闭", null)
                .show();
    }

    // ------------------------------------------------------------------ 各项动作

    private void openFile(File f) {
        String lower = f.getAbsolutePath().toLowerCase();
        if (lower.endsWith(".apk")) {
            doInstall(f);
            return;
        }
        if (isTextName(lower) && f.length() <= MAX_TEXT_VIEW[0]) {
            FileOps.Entry e = new FileOps.Entry();
            e.name = f.getName();
            e.path = f.getAbsolutePath();
            e.size = f.length();
            showText(e, true);
            return;
        }
        String mime = guessMime(lower);
        try {
            Intent i = new Intent(Intent.ACTION_VIEW);
            i.setDataAndType(Uri.fromFile(f), mime);
            startActivity(Intent.createChooser(i, "用什么打开"));
        } catch (Throwable t) {
            toast("打不开：" + t);
        }
    }

    private static boolean isTextName(String lower) {
        String[] exts = new String[]{".txt", ".log", ".conf", ".prop", ".ini", ".xml",
                ".json", ".csv", ".sh", ".rc", ".yml", ".yaml", ".lua", ".py", ".java",
                ".smali", ".html", ".htm", ".md", ".cfg", ".config", ".Gradle", ".properties"};
        for (int i = 0; i < exts.length; i++) {
            if (lower.endsWith(exts[i])) {
                return true;
            }
        }
        // 无扩展名的小文件（/etc 里很多这种）也按文本读
        int slash = lower.lastIndexOf('/');
        String n = slash >= 0 ? lower.substring(slash + 1) : lower;
        return n.indexOf('.') < 0;
    }

    private static String guessMime(String lower) {
        if (lower.endsWith(".png") || lower.endsWith(".jpg") || lower.endsWith(".jpeg")) {
            return "image/*";
        }
        if (lower.endsWith(".mp4") || lower.endsWith(".avi") || lower.endsWith(".mkv")) {
            return "video/*";
        }
        if (lower.endsWith(".mp3") || lower.endsWith(".wav") || lower.endsWith(".flac")) {
            return "audio/*";
        }
        if (lower.endsWith(".apk")) {
            return "application/vnd.android.package-archive";
        }
        if (lower.endsWith(".zip")) {
            return "application/zip";
        }
        return "*/*";
    }

    private void doInstall(final File apk) {
        toast("开始安装 " + apk.getName());
        new Thread(new Runnable() {
            public void run() {
                final String r = ApkInstaller.install(FileManagerActivity.this, apk, true);
                runOnUiThread(new Runnable() {
                    public void run() {
                        toast(r.length() > 200 ? r.substring(0, 200) : r);
                    }
                });
            }
        }).start();
    }

    /** 文本查看/编辑：大文件只读，超限提示 */
    private void showText(final FileOps.Entry e, final boolean editable) {
        final boolean useRoot = mRootMode;
        final int max = MAX_TEXT_VIEW[0];
        final File f = new File(e.path);
        if (!useRoot && f.exists() && f.length() > max) {
            toast("文件过大（" + FileOps.human(f.length()) + "），超出显示范围");
            return;
        }
        if (!useRoot && !f.isFile()) {
            toast("不是文件或无法读取");
            return;
        }
        final String content = FileOps.readText(e.path, useRoot, max);
        if (content == null) {
            toast("读不到内容（无权限？试试 root 模式）");
            return;
        }
        ScrollView sv = new ScrollView(this);
        final EditText et = new EditText(this);
        et.setText(content);
        et.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        et.setTextColor(FG);
        et.setBackgroundColor(0xFF0B0B0F);
        et.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        et.setSingleLine(false);
        sv.addView(et, mw());
        sv.setPadding(dp(8), dp(8), dp(8), dp(8));

        AlertDialog.Builder b = new AlertDialog.Builder(this)
                .setTitle(e.name + "（" + FileOps.human(content.length()) + "）")
                .setView(sv)
                .setNegativeButton("关闭", null);
        final boolean canWrite = FileOps.canDirectWrite(e.path) || (FileOps.suOk());
        if (canWrite) {
            b.setPositiveButton("保存", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    final String text = et.getText().toString();
                    new Thread(new Runnable() {
                        public void run() {
                            final String err = FileOps.writeText(e.path, text);
                            runOnUiThread(new Runnable() {
                                public void run() {
                                    toast(err == null ? "已保存" : "保存失败：" + err);
                                    refresh();
                                }
                            });
                        }
                    }).start();
                }
            });
        }
        b.show();
    }

    private void askRename(final FileOps.Entry e) {
        final EditText et = new EditText(this);
        et.setText(e.name);
        et.setTextColor(FG);
        et.selectAll();
        new AlertDialog.Builder(this)
                .setTitle("重命名")
                .setView(et)
                .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        final String nn = et.getText().toString().trim();
                        if (nn.length() == 0 || nn.equals(e.name)) {
                            return;
                        }
                        final String to = FileOps.join(FileOps.parent(e.path), nn);
                        runAsyncOp(new Op() {
                            public String go() {
                                return FileOps.rename(e.path, to);
                            }
                        }, "重命名完成", "重命名失败");
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void askNewDir() {
        final EditText et = new EditText(this);
        et.setHint("新目录名");
        et.setTextColor(FG);
        new AlertDialog.Builder(this)
                .setTitle("在 " + mCur + " 下新建目录")
                .setView(et)
                .setPositiveButton("创建", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        final String nn = et.getText().toString().trim();
                        if (nn.length() == 0) {
                            return;
                        }
                        final String to = FileOps.join(mCur, nn);
                        runAsyncOp(new Op() {
                            public String go() {
                                return FileOps.mkdir(to);
                            }
                        }, "已创建", "创建失败");
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void confirmDelete(final FileOps.Entry e) {
        new AlertDialog.Builder(this)
                .setTitle("确认删除？")
                .setMessage(e.dir ? "目录 " + e.name + " 及其全部内容都会被删除，不可恢复！"
                        : e.name + "\n删除后不可恢复")
                .setPositiveButton("删除", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        runAsyncOp(new Op() {
                            public String go() {
                                return FileOps.delete(e.path);
                            }
                        }, "已删除", "删除失败");
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void doPaste() {
        if (mClipFrom == null) {
            toast("剪贴板为空（先在文件或目录菜单里选「复制/剪切」）");
            return;
        }
        final String from = mClipFrom;
        final boolean move = mClipMove;
        final String to = FileOps.join(mCur, new File(from).getName());
        if (to.equals(from)) {
            toast("源和目标相同，跳过");
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle(move ? "移动到这里？" : "复制到这里？")
                .setMessage(from + "\n  →  " + to)
                .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        runAsyncOp(new Op() {
                            public String go() {
                                return FileOps.copy(from, to, move);
                            }
                        }, "完成", "失败");
                        mClipFrom = null;
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void showProps(FileOps.Entry e) {
        File f = new File(e.path);
        StringBuilder b = new StringBuilder(256);
        b.append("路径：").append(e.path).append('\n');
        b.append("类型：").append(e.dir ? "目录" : "文件").append('\n');
        b.append("大小：").append(e.size < 0 ? "未知" : FileOps.human(e.size)).append('\n');
        b.append("修改时间：").append(e.modified > 0 ? FileOps.timeStr(e.modified) : "未知").append('\n');
        b.append("权限：").append(e.perms.length() > 0 ? e.perms : "未知")
                .append(e.owner.length() > 0 ? "  " + e.owner : "").append('\n');
        if (!mRootMode) {
            b.append("可读：").append(f.canRead()).append("  可写：").append(f.canWrite()).append('\n');
        }
        b.append("可直接写入：").append(FileOps.canDirectWrite(e.path) ? "是" : "否（需 root 模式）");
        new AlertDialog.Builder(this)
                .setTitle("属性")
                .setMessage(b.toString())
                .setPositiveButton("关闭", null)
                .show();
    }

    private void askSearch() {
        final EditText et = new EditText(this);
        et.setHint("文件名关键字");
        et.setTextColor(FG);
        new AlertDialog.Builder(this)
                .setTitle("在 " + mCur + " 下搜索（最多 4 层）")
                .setView(et)
                .setPositiveButton("搜索", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        final String key = et.getText().toString().trim();
                        if (key.length() == 0) {
                            return;
                        }
                        runSearch(key);
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void runSearch(final String key) {
        final ProgressDialog pd = new ProgressDialog(this);
        pd.setMessage("搜索 " + key + " …");
        pd.setCancelable(true);
        pd.show();
        final boolean useRoot = mRootMode && FileOps.suOk();
        final String root = mCur;
        new Thread(new Runnable() {
            public void run() {
                final List<FileOps.Entry> hits =
                        FileOps.search(root, key, useRoot, 200);
                runOnUiThread(new Runnable() {
                    public void run() {
                        try {
                            pd.dismiss();
                        } catch (Throwable ignored) {
                        }
                        if (hits.size() == 0) {
                            toast("没有找到包含 “" + key + "” 的项");
                            return;
                        }
                        String[] names = new String[hits.size()];
                        for (int i = 0; i < hits.size(); i++) {
                            names[i] = hits.get(i).name + "\n" + hits.get(i).path;
                        }
                        final List<FileOps.Entry> finalHits = hits;
                        new AlertDialog.Builder(FileManagerActivity.this)
                                .setTitle("搜索结果 " + hits.size() + " 项")
                                .setItems(names, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface d, int w) {
                                        String p = finalHits.get(w).path;
                                        cd(new File(p).isDirectory() ? p : FileOps.parent(p));
                                    }
                                })
                                .setNegativeButton("关闭", null)
                                .show();
                    }
                });
            }
        }).start();
    }

    // ------------------------------------------------------------------ 与手机互通

    /** 起远程服务 + 打开车机端二维码页；真正的文件操作在手机浏览器里做 */
    private void shareDir() {
        startRemote(mCur);
    }

    private void openShare(File f) {
        startRemote(f == null ? mCur : FileOps.parent(f.getAbsolutePath()));
    }

    private void startRemote(String dir) {
        ShareServer.init(this);
        ShareServer.setHome(dir);
        ShareServer.setListener(this);
        ShareServer.get().start();
        if (!ShareServer.get().isRunning()) {
            toast("端口 " + ShareServer.PORT + " 启动失败（可能被占用）");
            return;
        }
        startActivity(new Intent(this, FileShareActivity.class));
    }

    public void onUploaded(final File f, final long bytes) {
        runOnUiThread(new Runnable() {
            public void run() {
                String dir = FileOps.parent(f.getAbsolutePath());
                toast("已从手机收到 " + f.getName() + "（" + FileOps.human(bytes) + "）");
                if (dir.equals(mCur)) {
                    refresh();
                }
            }
        });
    }

    // ------------------------------------------------------------------ 快捷位置

    private void showShortcuts() {
        List<String> cand = new ArrayList<String>();
        // v1.0：可移动存储（U 盘/外置 SD，/proc/mounts 探测）排最前——车机上最常去的地方
        cand.addAll(FileOps.removableMounts());
        cand.add("/storage/emulated/0");
        cand.add("/sdcard");
        cand.add("/mnt/sdcard");
        cand.add("/sdcard/Download");
        cand.add("/storage");
        cand.add("/mnt");
        cand.add("/data");
        cand.add("/data/data/com.carfiles/files");
        cand.add("/etc");
        cand.add("/system");
        cand.add("/system/etc");
        cand.add("/proc");
        cand.add("/sdcard/Android/data/com.carfiles/files/inbox");
        List<String> alive = new ArrayList<String>();
        for (int i = 0; i < cand.size(); i++) {
            File f = new File(cand.get(i));
            if (f.exists() && f.isDirectory()) {
                alive.add(cand.get(i));
            }
        }
        if (alive.size() == 0) {
            alive.add("/");
        }
        String[] names = alive.toArray(new String[alive.size()]);
        new AlertDialog.Builder(this)
                .setTitle("跳到…")
                .setItems(names, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        String[] arr = null;    // 回调里拿不到原数组，改用 indices 查 Industrys
                        cd(names[w]);
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    // ------------------------------------------------------------------ 工具

    /** 耗时文件操作的统一壳：后台跑 + toast 结果 + 自动刷新 */
    private interface Op {
        String go();
    }

    private void runAsyncOp(final Op op, final String okMsg, final String errMsg) {
        new Thread(new Runnable() {
            public void run() {
                final String err = op.go();
                runOnUiThread(new Runnable() {
                    public void run() {
                        toast(err == null ? okMsg : errMsg + "：" + err);
                        refresh();
                    }
                });
            }
        }).start();
    }

    private Button btn(String text, View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(text);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        b.setOnClickListener(l);
        return b;
    }

    private void toast(String s) {
        Toast.makeText(this, s, Toast.LENGTH_SHORT).show();
    }

    private static class Button extends android.widget.Button {
        public Button(android.content.Context c) {
            super(c);
        }
    }

    private LinearLayout.LayoutParams mw() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout.LayoutParams flex() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.rightMargin = dp(4);
        return lp;
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
