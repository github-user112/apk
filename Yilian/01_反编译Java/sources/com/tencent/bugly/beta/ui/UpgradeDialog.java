package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class UpgradeDialog extends com.tencent.bugly.beta.ui.BaseDialogFrag {
    public static com.tencent.bugly.beta.ui.UpgradeDialog instance = new com.tencent.bugly.beta.ui.UpgradeDialog();
    public java.lang.Runnable cancelRunnable;
    public com.tencent.bugly.proguard.B strategyDetail;
    public com.tencent.bugly.beta.download.DownloadTask strategyTask;
    public android.graphics.drawable.BitmapDrawable titleDrawable;
    public android.widget.TextView tvApkInfoTop;
    public android.widget.TextView tvUpgradeInfoBottom;
    public com.tencent.bugly.beta.ui.UILifecycleListener upgradeDialogListener;
    public java.lang.Runnable upgradeRunnable;
    public com.tencent.bugly.beta.ui.BetaOnPreDraw onPreDraw = null;
    public android.graphics.Bitmap titleBitmap = null;
    public android.view.View.OnClickListener installTaskListener = new com.tencent.bugly.beta.global.b(9, this);
    public android.view.View.OnClickListener startTaskListener = new com.tencent.bugly.beta.global.b(4, this);
    public android.view.View.OnClickListener stopTaskListener = new com.tencent.bugly.beta.global.b(5, this);
    public android.view.View.OnClickListener negListener = new com.tencent.bugly.beta.global.b(6, this);
    public com.tencent.bugly.beta.download.DownloadListener taskListener = new com.tencent.bugly.beta.download.a(2, this);

    @Override // androidx.fragment.app.Fragment
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
        this.mLayoutResId = eVar.l;
        this.upgradeDialogListener = eVar.n;
        try {
            this.mStyle = java.lang.Integer.parseInt(com.tencent.bugly.beta.global.ResBean.a.a("VAL_style"));
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.c(e2.getMessage(), new java.lang.Object[0]);
            this.mStyle = 0;
        }
    }

    @Override // com.tencent.bugly.beta.ui.BaseDialogFrag, androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        android.view.View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mLayoutResId != 0) {
            this.tvApkInfoTop = (android.widget.TextView) viewOnCreateView.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_UPGRADE_INFO);
            this.tvUpgradeInfoBottom = (android.widget.TextView) viewOnCreateView.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_UPGRADE_FEATURE);
        } else {
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, -1);
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this.mContext);
            linearLayout.setLayoutParams(layoutParams);
            linearLayout.setOrientation(1);
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(-1, -2);
            com.tencent.bugly.beta.global.ResBean resBean = com.tencent.bugly.beta.global.ResBean.a;
            if (com.tencent.bugly.beta.global.e.b.W) {
                android.widget.TextView textView = new android.widget.TextView(this.mContext);
                this.tvApkInfoTop = textView;
                textView.setLayoutParams(layoutParams2);
                android.widget.TextView textView2 = this.tvApkInfoTop;
                resBean.getClass();
                textView2.setTextColor(android.graphics.Color.parseColor("#757575"));
                this.tvApkInfoTop.setTextSize(14);
                this.tvApkInfoTop.setTag(com.tencent.bugly.beta.Beta.TAG_UPGRADE_INFO);
                this.tvApkInfoTop.setLineSpacing(15.0f, 1.0f);
                linearLayout.addView(this.tvApkInfoTop);
            }
            android.widget.TextView textView3 = new android.widget.TextView(this.mContext);
            textView3.setLayoutParams(layoutParams2);
            resBean.getClass();
            textView3.setTextColor(android.graphics.Color.parseColor("#273238"));
            float f2 = 14;
            textView3.setTextSize(f2);
            textView3.setSingleLine();
            textView3.setEllipsize(android.text.TextUtils.TruncateAt.END);
            textView3.setText(java.lang.String.valueOf(com.tencent.bugly.beta.Beta.strUpgradeDialogFeatureLabel + ": "));
            textView3.setPadding(0, com.tencent.bugly.beta.global.a.a(this.mContext, 8.0f), 0, 0);
            linearLayout.addView(textView3);
            android.widget.TextView textView4 = new android.widget.TextView(this.mContext);
            this.tvUpgradeInfoBottom = textView4;
            textView4.setLayoutParams(layoutParams2);
            android.widget.TextView textView5 = this.tvUpgradeInfoBottom;
            resBean.getClass();
            textView5.setTextColor(android.graphics.Color.parseColor("#273238"));
            this.tvUpgradeInfoBottom.setTextSize(f2);
            this.tvUpgradeInfoBottom.setTag(com.tencent.bugly.beta.Beta.TAG_UPGRADE_FEATURE);
            this.tvUpgradeInfoBottom.setMaxHeight(com.tencent.bugly.beta.global.a.a(this.mContext, 200.0f));
            this.tvUpgradeInfoBottom.setLineSpacing(15.0f, 1.0f);
            linearLayout.addView(this.tvUpgradeInfoBottom);
            this.mContentContainer.addView(linearLayout);
        }
        com.tencent.bugly.beta.ui.UILifecycleListener uILifecycleListener = this.upgradeDialogListener;
        if (uILifecycleListener != null) {
            d.j.d.l activity = getActivity();
            com.tencent.bugly.proguard.B b = this.strategyDetail;
            uILifecycleListener.onCreate(activity, viewOnCreateView, b != null ? new com.tencent.bugly.beta.UpgradeInfo(b) : null);
        }
        return viewOnCreateView;
    }

    @Override // com.tencent.bugly.beta.ui.BaseDialogFrag, androidx.fragment.app.Fragment
    public void onDestroyView() {
        try {
            super.onDestroyView();
            this.tvApkInfoTop = null;
            this.tvUpgradeInfoBottom = null;
            synchronized (this) {
                this.onPreDraw = null;
            }
            if (this.titleDrawable != null) {
                this.titleDrawable.setCallback(null);
            }
            if (this.upgradeDialogListener != null) {
                this.upgradeDialogListener.onDestroy(this.mContext, this.mLayoutContainer, this.strategyDetail != null ? new com.tencent.bugly.beta.UpgradeInfo(this.strategyDetail) : null);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    @Override // com.tencent.bugly.beta.ui.BaseFrag
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        if (this.strategyDetail.l == 2) {
            return true;
        }
        java.lang.Runnable runnable = this.cancelRunnable;
        if (runnable != null) {
            runnable.run();
        }
        close();
        return true;
    }

    @Override // com.tencent.bugly.beta.ui.BaseFrag, androidx.fragment.app.Fragment
    public void onPause() {
        com.tencent.bugly.beta.download.DownloadTask downloadTask;
        super.onPause();
        com.tencent.bugly.beta.download.DownloadListener downloadListener = this.taskListener;
        if (downloadListener != null && (downloadTask = this.strategyTask) != null) {
            downloadTask.removeListener(downloadListener);
        }
        com.tencent.bugly.beta.ui.UILifecycleListener uILifecycleListener = this.upgradeDialogListener;
        if (uILifecycleListener != null) {
            android.content.Context context = this.mContext;
            android.view.View view = this.mLayoutContainer;
            com.tencent.bugly.proguard.B b = this.strategyDetail;
            uILifecycleListener.onPause(context, view, b != null ? new com.tencent.bugly.beta.UpgradeInfo(b) : null);
        }
    }

    @Override // com.tencent.bugly.beta.ui.BaseFrag, androidx.fragment.app.Fragment
    public void onResume() {
        com.tencent.bugly.beta.download.DownloadTask downloadTask;
        super.onResume();
        com.tencent.bugly.beta.download.DownloadListener downloadListener = this.taskListener;
        if (downloadListener != null && (downloadTask = this.strategyTask) != null) {
            downloadTask.addListener(downloadListener);
        }
        updateView();
        if (this.mStyle != 0 && this.titleBitmap == null) {
            com.tencent.bugly.beta.global.f.a.a(new com.tencent.bugly.beta.global.d(7, this));
        }
        com.tencent.bugly.beta.ui.UILifecycleListener uILifecycleListener = this.upgradeDialogListener;
        if (uILifecycleListener != null) {
            android.content.Context context = this.mContext;
            android.view.View view = this.mLayoutContainer;
            com.tencent.bugly.proguard.B b = this.strategyDetail;
            uILifecycleListener.onResume(context, view, b != null ? new com.tencent.bugly.beta.UpgradeInfo(b) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        com.tencent.bugly.beta.ui.UILifecycleListener uILifecycleListener = this.upgradeDialogListener;
        if (uILifecycleListener != null) {
            android.content.Context context = this.mContext;
            android.view.View view = this.mLayoutContainer;
            com.tencent.bugly.proguard.B b = this.strategyDetail;
            uILifecycleListener.onStart(context, view, b != null ? new com.tencent.bugly.beta.UpgradeInfo(b) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        com.tencent.bugly.beta.ui.UILifecycleListener uILifecycleListener = this.upgradeDialogListener;
        if (uILifecycleListener != null) {
            android.content.Context context = this.mContext;
            android.view.View view = this.mLayoutContainer;
            com.tencent.bugly.proguard.B b = this.strategyDetail;
            uILifecycleListener.onStop(context, view, b != null ? new com.tencent.bugly.beta.UpgradeInfo(b) : null);
        }
    }

    public synchronized void setUpgradeInfo(com.tencent.bugly.proguard.B b, com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        this.strategyDetail = b;
        this.strategyTask = downloadTask;
        downloadTask.addListener(this.taskListener);
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(7, this));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateBtn(com.tencent.bugly.beta.download.DownloadTask r8) {
        /*
            r7 = this;
            int r0 = r8.getStatus()
            r1 = 2
            r2 = 0
            if (r0 == 0) goto L54
            r3 = 1
            if (r0 == r3) goto L4f
            if (r0 == r1) goto L20
            r8 = 3
            if (r0 == r8) goto L1d
            r8 = 4
            if (r0 == r8) goto L54
            r8 = 5
            if (r0 == r8) goto L1a
            java.lang.String r8 = ""
            r0 = r2
            goto L58
        L1a:
            java.lang.String r8 = com.tencent.bugly.beta.Beta.strUpgradeDialogRetryBtn
            goto L56
        L1d:
            java.lang.String r8 = com.tencent.bugly.beta.Beta.strUpgradeDialogContinueBtn
            goto L56
        L20:
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.Object[] r3 = new java.lang.Object[r3]
            long r4 = r8.getSavedLength()
            float r4 = (float) r4
            long r5 = r8.getTotalLength()
            float r8 = (float) r5
            float r4 = r4 / r8
            r8 = 1120403456(0x42c80000, float:100.0)
            float r4 = r4 * r8
            java.lang.Float r8 = java.lang.Float.valueOf(r4)
            r4 = 0
            r3[r4] = r8
            java.lang.String r8 = "%.1f%%"
            java.lang.String r8 = java.lang.String.format(r0, r8, r3)
            java.lang.String r0 = "NaN%"
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto L4c
            java.lang.String r8 = "0%"
        L4c:
            android.view.View$OnClickListener r0 = r7.stopTaskListener
            goto L58
        L4f:
            java.lang.String r8 = com.tencent.bugly.beta.Beta.strUpgradeDialogInstallBtn
            android.view.View$OnClickListener r0 = r7.installTaskListener
            goto L58
        L54:
            java.lang.String r8 = com.tencent.bugly.beta.Beta.strUpgradeDialogUpgradeBtn
        L56:
            android.view.View$OnClickListener r0 = r7.startTaskListener
        L58:
            com.tencent.bugly.proguard.B r3 = r7.strategyDetail
            byte r3 = r3.l
            if (r3 == r1) goto L66
            java.lang.String r1 = com.tencent.bugly.beta.Beta.strUpgradeDialogCancelBtn
            android.view.View$OnClickListener r2 = r7.negListener
            r7.setBtn(r1, r2, r8, r0)
            goto L69
        L66:
            r7.setBtn(r2, r2, r8, r0)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.ui.UpgradeDialog.updateBtn(com.tencent.bugly.beta.download.DownloadTask):void");
    }

    public synchronized void updateView() {
        java.lang.String str;
        try {
        } catch (java.lang.Exception e2) {
            if (this.mLayoutResId != 0) {
                com.tencent.bugly.proguard.aa.b("please confirm your argument: [Beta.upgradeDialogLayoutId] is correct", new java.lang.Object[0]);
            }
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
        }
        if (this.mLayoutContainer != null && this.strategyDetail != null && this.strategyTask != null) {
            android.graphics.Bitmap bitmapA = null;
            if (this.mLayoutResId != 0) {
                this.mTitleTextView.setText(this.strategyDetail.f1055f);
                if (this.mBannerImageView != null) {
                    this.mBannerImageView.setAdjustViewBounds(true);
                    if (this.mStyle != 0) {
                        android.content.Context context = this.mContext;
                        java.lang.Object[] objArr = new java.lang.Object[1];
                        objArr[0] = this.mRes.a("IMG_title");
                        android.graphics.Bitmap bitmapA2 = com.tencent.bugly.beta.global.a.a(context, 0, objArr);
                        this.titleBitmap = bitmapA2;
                        this.titleDrawable = null;
                        if (bitmapA2 != null) {
                            bitmapA = bitmapA2;
                        } else if (com.tencent.bugly.beta.global.e.b.k != 0) {
                            bitmapA = com.tencent.bugly.beta.global.a.a(this.mContext, 1, java.lang.Integer.valueOf(com.tencent.bugly.beta.global.e.b.k));
                        }
                        this.mBannerImageView.setImageBitmap(bitmapA);
                    }
                }
            } else if (this.mStyle != 0) {
                android.content.Context context2 = this.mContext;
                java.lang.Object[] objArr2 = new java.lang.Object[1];
                objArr2[0] = this.mRes.a("IMG_title");
                android.graphics.Bitmap bitmapA3 = com.tencent.bugly.beta.global.a.a(context2, 0, objArr2);
                this.titleBitmap = bitmapA3;
                this.titleDrawable = null;
                if (bitmapA3 != null) {
                    bitmapA = bitmapA3;
                } else if (com.tencent.bugly.beta.global.e.b.k != 0) {
                    bitmapA = com.tencent.bugly.beta.global.a.a(this.mContext, 1, java.lang.Integer.valueOf(com.tencent.bugly.beta.global.e.b.k));
                }
                this.mTitleTextView.getViewTreeObserver().removeOnPreDrawListener(this.onPreDraw);
                this.onPreDraw = new com.tencent.bugly.beta.ui.BetaOnPreDraw(1, this, this.mTitleTextView, bitmapA, java.lang.Integer.valueOf(this.mStyle));
                this.mTitleTextView.getViewTreeObserver().addOnPreDrawListener(this.onPreDraw);
            } else {
                this.mTitleTextView.setHeight(com.tencent.bugly.beta.global.a.a(this.mContext, 42.0f));
                this.mTitleTextView.setText(this.strategyDetail.f1055f);
            }
            this.tvUpgradeInfoBottom.setText(this.strategyDetail.f1056g.length() > 500 ? this.strategyDetail.f1056g.substring(0, 500) : this.strategyDetail.f1056g);
            if (com.tencent.bugly.beta.global.e.b.W) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(com.tencent.bugly.beta.Beta.strUpgradeDialogVersionLabel);
                sb.append(": ");
                sb.append(this.strategyDetail.j.f1176e);
                sb.append("\n");
                sb.append(com.tencent.bugly.beta.Beta.strUpgradeDialogFileSizeLabel);
                sb.append(": ");
                float f2 = this.strategyDetail.k.f1167e;
                if (f2 >= 1048576.0f) {
                    sb.append(java.lang.String.format(java.util.Locale.getDefault(), "%.1f", java.lang.Float.valueOf(f2 / 1048576.0f)));
                    str = "M";
                } else if (f2 >= 1024.0f) {
                    sb.append(java.lang.String.format(java.util.Locale.getDefault(), "%.1f", java.lang.Float.valueOf(f2 / 1024.0f)));
                    str = "K";
                } else {
                    sb.append(java.lang.String.format(java.util.Locale.getDefault(), "%.1f", java.lang.Float.valueOf(f2)));
                    str = "B";
                }
                sb.append(str);
                sb.append("\n");
                java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.CHINA);
                sb.append(com.tencent.bugly.beta.Beta.strUpgradeDialogUpdateTimeLabel);
                sb.append(": ");
                sb.append(simpleDateFormat.format(new java.util.Date(this.strategyDetail.t)));
                this.tvApkInfoTop.setText(sb);
            }
            updateBtn(this.strategyTask);
        }
    }
}
