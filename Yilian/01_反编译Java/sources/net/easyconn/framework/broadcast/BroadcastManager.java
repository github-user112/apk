package net.easyconn.framework.broadcast;

/* loaded from: classes.dex */
public class BroadcastManager implements f.a.i.h.b {
    public static final java.lang.String BROADCAST_AIRPLAY_PLAY = "net.easyconn.airplay.play";
    public static final java.lang.String BROADCAST_AIRPLAY_STOP = "net.easyconn.airplay.stop";
    public static final java.lang.String BROADCAST_ANDROID_TAB = "net.easyconn.android.tab";
    public static final java.lang.String BROADCAST_APP_MUSIC_STATUS = "net.easyconn.music.status";
    public static final java.lang.String BROADCAST_APP_OPEN = "net.easyconn.app.open";
    public static final java.lang.String BROADCAST_APP_OPEN_STATE = "net.easyconn.app.open.state";
    public static final java.lang.String BROADCAST_APP_PAUSE = "net.easyconn.app.pause";
    public static final java.lang.String BROADCAST_APP_QUIT = "net.easyconn.app.quit";
    public static final java.lang.String BROADCAST_APP_RESUME = "net.easyconn.app.resume";
    public static final java.lang.String BROADCAST_AUDIOFOCUS_MUSIC_STATUS = "net.easyconn.audiofocus.music.status";
    public static final java.lang.String BROADCAST_BACKING_UP_START = "net.easyconn.BACKING_UP_START";
    public static final java.lang.String BROADCAST_BACKING_UP_STOP = "net.easyconn.BACKING_UP_STOP";
    public static final java.lang.String BROADCAST_BT_A2DP_ACQUIRE = "net.easyconn.a2dp.acquire";
    public static final java.lang.String BROADCAST_BT_A2DP_ACQUIRE_NG = "net.easyconn.a2dp.acquire.fail";
    public static final java.lang.String BROADCAST_BT_A2DP_RELEASE = "net.easyconn.a2dp.release";
    public static final java.lang.String BROADCAST_BT_CALL_PHONE = "net.easyconn.bluetooth.call";
    public static final java.lang.String BROADCAST_BT_CHECKSTATUS = "net.easyconn.bt.checkstatus";
    public static final java.lang.String BROADCAST_BT_CLOSED = "net.easyconn.bt.closed";
    public static final java.lang.String BROADCAST_BT_CONNECTED = "net.easyconn.bt.connected";
    public static final java.lang.String BROADCAST_BT_INFO = "net.easyconn.bt.info";
    public static final java.lang.String BROADCAST_BT_OPENED = "net.easyconn.bt.opened";
    public static final java.lang.String BROADCAST_BT_SETTING = "net.easyconn.bt.setting";
    public static final java.lang.String BROADCAST_CARCONTROL_CMD = "net.easyconn.carcontrol.cmd";
    public static final java.lang.String BROADCAST_CARCONTROL_REQUEST = "net.easyconn.carcontrol.request";
    public static final java.lang.String BROADCAST_CARCONTROL_RESPONSE = "net.easyconn.carcontrol.response";
    public static final java.lang.String BROADCAST_CAR_CUSTOM_VR_SHOW_STATUS = "net.easyconn.car.vr.show.status";
    public static final java.lang.String BROADCAST_CONNECT_CHECK_STATUS = "net.easyconn.connect.checkstatus";
    public static final java.lang.String BROADCAST_CONNECT_TYPE_CHANGED = "net.easyconn.CONNECT_TYPE_CHANGED";
    public static final java.lang.String BROADCAST_CORE_SERVICE_RELEASE = "net.easyconn.core.service.release";
    public static final java.lang.String BROADCAST_DAYORNIGHT_CHECKSTATUS = "net.easyconn.navi.checkstatus";
    public static final java.lang.String BROADCAST_DRIVEMODE_CHECKSTATUS = "net.easyconn.drivemode.checkstatus";
    public static final java.lang.String BROADCAST_DRIVEMODE_CLOSED = "net.easyconn.drivemode.closed";
    public static final java.lang.String BROADCAST_DRIVEMODE_OPENED = "net.easyconn.drivemode.opened";
    public static final java.lang.String BROADCAST_EASYCONN_NAVI_STARTED = "net.easyconn.navigation.STARTED";
    public static final java.lang.String BROADCAST_EASYCONN_NAVI_STOPPED = "net.easyconn.navigation.STOPPED";
    public static final java.lang.String BROADCAST_EC_EXIT_APP = "net.easyconn.action.EXIT_APP";
    public static final java.lang.String BROADCAST_EC_REGISTED = "net.easyconn.registed";
    public static final java.lang.String BROADCAST_EC_SHORTCUTS = "net.easyconn.shortcuts";
    public static final java.lang.String BROADCAST_EC_SWITCH_BACKGROUND = "net.easyconn.action.SWITCH_BACKGROUND";
    public static final java.lang.String BROADCAST_EC_VR_TEXT = "net.easyconn.vr.text";
    public static final java.lang.String BROADCAST_GPS_INFO = "net.easyconn.gps";
    public static final java.lang.String BROADCAST_INSTALL_EC = "net.easyconn.install.ec";
    public static final java.lang.String BROADCAST_IOS_TAB = "net.easyconn.ios.tab";
    public static final java.lang.String BROADCAST_IPHONE_PAUSE = "net.easyconn.iphone.pause";
    public static final java.lang.String BROADCAST_IPHONE_RESUME = "net.easyconn.iphone.resume";
    public static final java.lang.String BROADCAST_KEY_CODE = "net.easyconn.KEYCODE";
    public static final java.lang.String BROADCAST_LINK_IN = "net.easyconn.link.in";
    public static final java.lang.String BROADCAST_LINK_OUT = "net.easyconn.link.out";
    public static final java.lang.String BROADCAST_LINK_STATUS_CHECK = "net.easyconn.link.checkstatus";
    public static final java.lang.String BROADCAST_MEDIACODEC_ACQUIRE = "net.easyconn.mediacodec.acquire";
    public static final java.lang.String BROADCAST_MEDIACODEC_RELEASE = "net.easyconn.mediacodec.release";
    public static final java.lang.String BROADCAST_MIRROR_CHECKSTATUS = "net.easyconn.mirror.checkstatus";
    public static final java.lang.String BROADCAST_MIRROR_IN = "net.easyconn.mirror.in";
    public static final java.lang.String BROADCAST_MIRROR_OUT = "net.easyconn.mirror.out";
    public static final java.lang.String BROADCAST_MIRROR_PAUSE = "net.easyconn.screen.pause";
    public static final java.lang.String BROADCAST_MIRROR_RESUME = "net.easyconn.screen.resume";
    public static final java.lang.String BROADCAST_MIRROR_SAME_MODE = "net.easyconn.screen.mirroring_mode";
    public static final java.lang.String BROADCAST_MIRROR_SAME_MODE_QUIT = "net.easyconn.screen.mirroring_mode.quit";
    public static final java.lang.String BROADCAST_MIRROR_SENDSTATUS = "net.easyconn.mirror.sendstatus";
    public static final java.lang.String BROADCAST_NAVIGATION_STATUS = "net.easyconn.navigation.status";
    public static final java.lang.String BROADCAST_NAVI_DAYTIME = "net.easyconn.navi.daytime";
    public static final java.lang.String BROADCAST_NAVI_NIGHT = "net.easyconn.navi.night";
    public static final java.lang.String BROADCAST_NEXT_MUSIC = "net.easyconn.music.next";
    public static final java.lang.String BROADCAST_PARALLEL_WORLD_BACK = "net.easyconn.parallel.world.back";
    public static final java.lang.String BROADCAST_PARALLEL_WORLD_HOME = "net.easyconn.parallel.world.home";
    public static final java.lang.String BROADCAST_PARALLEL_WORLD_MENU = "net.easyconn.parallel.world.menu";
    public static final java.lang.String BROADCAST_PAUSE_MUSIC = "net.easyconn.music.pause";
    public static final java.lang.String BROADCAST_PHONE_TIME = "net.easyconn.phone.time";
    public static final java.lang.String BROADCAST_PLAY_MUSIC = "net.easyconn.music.play";
    public static final java.lang.String BROADCAST_PLAY_PAUSE_MUSIC = "net.easyconn.music.play.pause";
    public static final java.lang.String BROADCAST_PRE_MUSIC = "net.easyconn.music.previous";
    public static final java.lang.String BROADCAST_QR_LINK_SWITCH_ANDROID = "net.easyconn.qrlink.switch.android";
    public static final java.lang.String BROADCAST_QR_LINK_SWITCH_IOS = "net.easyconn.qrlink.switch.ios";
    public static final java.lang.String BROADCAST_RECORD_START = "net.easyconn.start.record";
    public static final java.lang.String BROADCAST_RECORD_STOP = "net.easyconn.stop.record";
    public static final java.lang.String BROADCAST_SPEED_PLAY_ACTION = "com.zjinnova.zlink";
    public static final java.lang.String BROADCAST_SPEED_PLAY_STATUS_ENTER = "ENTER";
    public static final java.lang.String BROADCAST_SPEED_PLAY_STATUS_EXIT = "EXIT";
    public static final java.lang.String BROADCAST_SPEED_PLAY_STATUS_MAIN_PAGE_SHOW = "MAIN_PAGE_SHOW";
    public static final java.lang.String BROADCAST_START_EC = "net.easyconn.start.ec";
    public static final java.lang.String BROADCAST_START_VR = "net.easyconn.start.vr";
    public static final java.lang.String BROADCAST_STOP_EASYCONN_NAVI = "net.easyconn.navigation.STOP_EASYCONN_NAVI";
    public static final java.lang.String BROADCAST_STOP_LOCAL_NAVI = "net.easyconn.navigation.STOP_LOCAL_NAVI";
    public static final java.lang.String BROADCAST_STOP_VR = "net.easyconn.stop.vr";
    public static final int BROADCAST_TYPE_ACION = 0;
    public static final int BROADCAST_TYPE_INTENT = 1;
    public static final java.lang.String BROADCAST_VR_STATUS = "net.easyconn.vr.status";
    public static final java.lang.String BROADCAST_VR_TEXT_STATUS = "net.easyconn.carvr.status";
    public static final java.lang.String BROADCAST_VR_TIPS = "net.easyconn.vr.tips";
    public static final java.lang.String BROADCAST_WEATHER_INFO = "net.easyconn.weather.info";
    public static final int DIRECTION_113 = 113;
    public static final int DIRECTION_158 = 158;
    public static final int DIRECTION_203 = 203;
    public static final int DIRECTION_23 = 23;
    public static final int DIRECTION_248 = 248;
    public static final int DIRECTION_293 = 293;
    public static final int DIRECTION_338 = 338;
    public static final int DIRECTION_68 = 68;
    public static final java.lang.String EC_APP_TYPE = "ec_app_type";
    public static final java.lang.String EC_CARCONTROL_CMDS = "key_ec_carcontrol_cmds";
    public static final java.lang.String EC_CARCONTROL_SUPPORT_GLOBAL_NO_WAKEUP = "key_ec_carcontrol_support_global_no_wakeup";
    public static final java.lang.String EC_CARCONTROL_WORDS = "key_ec_carcontrol_words";
    public static final java.lang.String EXTRA_AUDIOFOCUS_MUSIC_STATUS = "status";
    public static final java.lang.String EXTRA_MUSIC_INFO = "ec_music_info";
    public static final java.lang.String SUDING_ACTION_PROP_KEY = "sys.suding.speedplay.apk";
    public static final int VR_STATUS_END = 0;
    public static final int VR_STATUS_START = 1;
    public static final int VR_TEXT_STATUS_END = 0;
    public static final int VR_TEXT_STATUS_START = 1;
    public static boolean mCurrentConnectStatus = false;
    public static boolean mCurrentLinkStatus = false;
    public static f.a.i.i.q sdkManager;
    public android.content.IntentFilter intentFilter;
    public net.easyconn.framework.broadcast.BroadcastManager.b mBroadcastReceiver;
    public android.content.Context mContext;
    public android.os.Handler mHandler;
    public android.os.HandlerThread mHandlerThread;
    public java.lang.String sudingAction = BROADCAST_SPEED_PLAY_ACTION;
    public net.easyconn.framework.broadcast.BroadcastManager.e mOnMediaCodecStateRequestListener = null;
    public net.easyconn.framework.broadcast.BroadcastManager.d mKeyCodeActionListener = null;
    public net.easyconn.framework.broadcast.BroadcastManager.c mOnBroadcastListener = null;
    public boolean isVrStarted = false;
    public boolean isNaviStarted = false;
    public boolean isInMirroringMode = false;

    public static class EcConnectStateReceiver extends android.content.BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String str;
            java.lang.String action = intent.getAction();
            if (net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_CONNECT_CHECK_STATUS.equals(action)) {
                java.lang.StringBuilder sbR = e.a.c.a.a.r("Receive broadcast action = ", action, ", mCurrentConnectStatus:");
                sbR.append(net.easyconn.framework.broadcast.BroadcastManager.mCurrentConnectStatus);
                e.e.a.g.a(sbR.toString());
                str = net.easyconn.framework.broadcast.BroadcastManager.mCurrentConnectStatus ? net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_MIRROR_IN : net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_MIRROR_OUT;
            } else {
                if (!net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_LINK_STATUS_CHECK.equals(action)) {
                    return;
                }
                java.lang.StringBuilder sbR2 = e.a.c.a.a.r("Receive broadcast action = ", action, ", mCurrentLinkStatus:");
                sbR2.append(net.easyconn.framework.broadcast.BroadcastManager.mCurrentLinkStatus);
                e.e.a.g.a(sbR2.toString());
                str = net.easyconn.framework.broadcast.BroadcastManager.mCurrentLinkStatus ? net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_LINK_IN : net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_LINK_OUT;
            }
            net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(context, str);
        }
    }

    public static class EcShortcutBroadcastReceiver extends android.content.BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            java.lang.String action = intent.getAction();
            if (action == null) {
                return;
            }
            e.e.a.g.a("Receive broadcast action = " + action);
            net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage = null;
            int i = 0;
            if (!net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_START_EC.equals(action)) {
                if (net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_INSTALL_EC.equals(action)) {
                    int intExtra = intent.getIntExtra(net.easyconn.framework.broadcast.BroadcastManager.EC_APP_TYPE, -1);
                    e.a.c.a.a.v("Receive broadcast type = ", intExtra);
                    if (intExtra > 0 && f.a.i.m.g.M(context) == 1) {
                        e.a.c.a.a.v("BROADCAST_INSTALL_EC install appPage = ", intExtra);
                        f.a.i.i.q qVar = net.easyconn.framework.broadcast.BroadcastManager.sdkManager;
                        if (qVar == null) {
                            e.e.a.g.a("BROADCAST_INSTALL_EC install error");
                            return;
                        }
                        e.a.c.a.a.v("installAppPageByChannel appPage = ", intExtra);
                        if (intExtra <= 0) {
                            return;
                        }
                        java.util.ArrayList arrayList = new java.util.ArrayList();
                        arrayList.add(java.lang.Integer.valueOf(intExtra));
                        android.os.Message messageObtain = android.os.Message.obtain();
                        messageObtain.obj = arrayList;
                        messageObtain.arg1 = 0;
                        messageObtain.what = 47;
                        qVar.r.sendMessage(messageObtain);
                        return;
                    }
                    return;
                }
                return;
            }
            int intExtra2 = intent.getIntExtra(net.easyconn.framework.broadcast.BroadcastManager.EC_APP_TYPE, -1);
            e.a.c.a.a.v("Receive broadcast type = ", intExtra2);
            if (intExtra2 <= 0) {
                return;
            }
            f.a.i.i.q qVar2 = net.easyconn.framework.broadcast.BroadcastManager.sdkManager;
            if (qVar2 == null || !qVar2.Z) {
                e.e.a.g.a("startActivity");
                android.content.Intent intent2 = new android.content.Intent("net.easyconn6.mainactivity");
                intent2.addCategory("android.intent.category.DEFAULT");
                intent2.setFlags(270532608);
                context.getApplicationContext().startActivity(intent2);
            }
            if (f.a.i.m.g.M(context) == 1) {
                e.a.c.a.a.v("EC_PRODUCT_TYPE_DA appPage = ", intExtra2);
                f.a.i.i.q qVar3 = net.easyconn.framework.broadcast.BroadcastManager.sdkManager;
                if (qVar3 == null) {
                    f.a.i.i.q.b0 = intExtra2;
                    return;
                } else {
                    qVar3.T(intExtra2);
                    return;
                }
            }
            net.easyconn.ecsdk.ECTypes.ECAppPage[] eCAppPageArrValues = net.easyconn.ecsdk.ECTypes.ECAppPage.values();
            int length = eCAppPageArrValues.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                net.easyconn.ecsdk.ECTypes.ECAppPage eCAppPage2 = eCAppPageArrValues[i];
                if (intExtra2 == eCAppPage2.getValue()) {
                    eCAppPage = eCAppPage2;
                    break;
                }
                i++;
            }
            if (eCAppPage == null) {
                return;
            }
            f.a.i.i.q qVar4 = net.easyconn.framework.broadcast.BroadcastManager.sdkManager;
            if (qVar4 == null) {
                f.a.i.i.q.a0 = eCAppPage;
            } else {
                qVar4.S(eCAppPage);
            }
        }
    }

    public class a extends android.os.Handler {
        public a(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            android.content.Intent intent;
            int i = message.what;
            if (i != 0) {
                if (i == 1 && (intent = (android.content.Intent) message.obj) != null) {
                    net.easyconn.framework.broadcast.BroadcastManager.this.sendBroadcast(intent);
                    return;
                }
                return;
            }
            java.lang.String str = (java.lang.String) message.obj;
            if (str != null) {
                net.easyconn.framework.broadcast.BroadcastManager.this.sendBroadcast(str);
            }
        }
    }

    public class b extends android.content.BroadcastReceiver {
        public b() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0411 A[PHI: r0
  0x0411: PHI (r0v29 net.easyconn.framework.broadcast.BroadcastManager$c) = 
  (r0v26 net.easyconn.framework.broadcast.BroadcastManager$c)
  (r0v35 net.easyconn.framework.broadcast.BroadcastManager$c)
 binds: [B:219:0x040f, B:207:0x03d5] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0461  */
        /* JADX WARN: Removed duplicated region for block: B:237:? A[RETURN, SYNTHETIC] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r9, android.content.Intent r10) throws org.json.JSONException {
            /*
                Method dump skipped, instructions count: 1308
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.easyconn.framework.broadcast.BroadcastManager.b.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public interface c {
    }

    public interface d {
    }

    public interface e {
    }

    public BroadcastManager(android.content.Context context) {
        this.mContext = context;
        if (!(context instanceof net.easyconn.framework.sdkservice.EasyConnectService)) {
            throw new java.lang.RuntimeException("context is not EasyConnectService");
        }
        sdkManager = ((net.easyconn.framework.sdkservice.EasyConnectService) context).a;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("BroadcastManager");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new net.easyconn.framework.broadcast.BroadcastManager.a(this.mHandlerThread.getLooper());
    }

    public static android.content.Intent getAppMusicStatusIntent(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_APP_MUSIC_STATUS);
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(EXTRA_AUDIOFOCUS_MUSIC_STATUS, eCAppMusicInfo.status);
        bundle.putInt("page", eCAppMusicInfo.page);
        bundle.putString("title", eCAppMusicInfo.title);
        bundle.putString("artist", eCAppMusicInfo.artist);
        bundle.putString("album", eCAppMusicInfo.album);
        bundle.putString("albumArtist", eCAppMusicInfo.albumArtist);
        bundle.putLong(com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.COLUMN_LENGTH, eCAppMusicInfo.length);
        intent.putExtra(EXTRA_MUSIC_INFO, bundle);
        return intent;
    }

    public static java.lang.String getBroadcastExtraString(android.content.Intent intent) {
        android.os.Bundle extras;
        java.lang.StringBuilder sbO;
        java.lang.String str;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return "";
        }
        java.util.Set<java.lang.String> setKeySet = extras.keySet();
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (java.lang.String str2 : setKeySet) {
            if (extras.get(str2) instanceof java.lang.Integer) {
                sbO = e.a.c.a.a.o(str2);
                str = "(int) = ";
            } else if (extras.get(str2) instanceof java.lang.String) {
                sbO = e.a.c.a.a.o(str2);
                str = "(String) = ";
            } else {
                sbO = e.a.c.a.a.o(str2);
                str = "(Obj) = ";
            }
            sbO.append(str);
            sbO.append(extras.get(str2));
            sbO.append(";");
            stringBuffer.append(sbO.toString());
        }
        return stringBuffer.toString();
    }

    public static void sendBroadcast(android.content.Context context, android.content.Intent intent) {
        e.e.a.g.a(" sendBroadcast intent =" + intent + " action=" + intent.getAction() + " Extra = (" + getBroadcastExtraString(intent) + ")");
        context.sendBroadcast(intent);
    }

    public static void sendBroadcast(android.content.Context context, java.lang.String str) {
        e.e.a.g.a(" sendBroadcast action=" + str);
        context.sendBroadcast(new android.content.Intent(str));
    }

    public static void sendCarControlRequestBroadcast(android.content.Context context) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_CARCONTROL_REQUEST);
        sendBroadcast(context, intent);
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" sendBroadcast action=");
        sbO.append(intent.getAction());
        e.e.a.g.a(sbO.toString());
    }

    public static void sendMusicFocusStatusBroadcast(android.content.Context context, int i) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_AUDIOFOCUS_MUSIC_STATUS);
        intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, i);
        sendBroadcast(context, intent);
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" sendBroadcast action=");
        sbO.append(intent.getAction());
        sbO.append(" musicStatus = ");
        sbO.append(i);
        e.e.a.g.a(sbO.toString());
    }

    private void sendNaviInfo(net.easyconn.ecsdk.ECTypes.ECNavigationHudInfo eCNavigationHudInfo) {
        int i = eCNavigationHudInfo.carDirection;
        if (i > 338 || i <= 23) {
            i = 0;
        } else if (i > 23 && i <= 68) {
            i = 1;
        } else if (i > 68 && i <= 113) {
            i = 2;
        } else if (i > 113 && i <= 158) {
            i = 3;
        } else if (i > 158 && i <= 203) {
            i = 4;
        } else if (i > 203 && i <= 248) {
            i = 5;
        } else if (i > 248 && i <= 293) {
            i = 6;
        } else if (i > 293 && i <= 338) {
            i = 7;
        }
        android.content.Intent intent = new android.content.Intent(BROADCAST_NAVIGATION_STATUS);
        if (eCNavigationHudInfo.status.getValue() >= -1) {
            intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, eCNavigationHudInfo.status.getValue());
        }
        java.lang.String str = eCNavigationHudInfo.currentRoad;
        if (str != null && !android.text.TextUtils.isEmpty(str)) {
            intent.putExtra("currentRoad", eCNavigationHudInfo.currentRoad);
        }
        if (i >= -1) {
            intent.putExtra("carDirection", i);
        }
        if (eCNavigationHudInfo.cameraType.getValue() >= -1) {
            intent.putExtra("cameraType", eCNavigationHudInfo.cameraType.getValue());
        }
        int i2 = eCNavigationHudInfo.cameraSpeed;
        if (i2 >= -1) {
            intent.putExtra("cameraSpeed", i2);
        }
        int i3 = eCNavigationHudInfo.cameraDistance;
        if (i3 >= -1) {
            intent.putExtra("cameraDistance", i3);
        }
        if (eCNavigationHudInfo.naviIcon.getValue() >= -1) {
            intent.putExtra("naviIcon", eCNavigationHudInfo.naviIcon.getValue());
        }
        java.lang.String str2 = eCNavigationHudInfo.nextRoad;
        if (str2 != null && !android.text.TextUtils.isEmpty(str2)) {
            intent.putExtra("nextRoad", eCNavigationHudInfo.nextRoad);
        }
        int i4 = eCNavigationHudInfo.roadRemainingDistance;
        if (i4 >= -1) {
            intent.putExtra("roadRemainingDistance", i4);
        }
        int i5 = eCNavigationHudInfo.roadRemainingTime;
        if (i5 >= -1) {
            intent.putExtra("roadRemainingTime", i5);
        }
        int i6 = eCNavigationHudInfo.destinationRemainingDistance;
        if (i6 >= -1) {
            intent.putExtra("destinationRemainingDistance", i6);
        }
        int i7 = eCNavigationHudInfo.destinationRemainingTime;
        if (i7 >= -1) {
            intent.putExtra("destinationRemainingTime", i7);
        }
        if (eCNavigationHudInfo.status == net.easyconn.ecsdk.ECTypes.ECNaviStatus.EC_NAVI_STATUS_ACTIVE) {
            long j = eCNavigationHudInfo.arriveTime;
            if (j > 0) {
                intent.putExtra("arriveTime", j);
                e.a.c.a.a.w("intent extra arriveTime: ", new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(java.lang.Long.valueOf(eCNavigationHudInfo.arriveTime)));
            }
        }
        if (!android.text.TextUtils.isEmpty(eCNavigationHudInfo.arriveTimeZone)) {
            intent.putExtra("arriveTimeZone", eCNavigationHudInfo.arriveTimeZone);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("intent extra : ");
        sbO.append(intent.getExtras().toString());
        e.e.a.g.a(sbO.toString());
        e.e.a.g.a(eCNavigationHudInfo.toString());
        sendBroadcast(intent);
    }

    public static void sendQrLinkBroadcast(android.content.Context context, boolean z) {
        sendBroadcast(context, z ? BROADCAST_QR_LINK_SWITCH_IOS : BROADCAST_QR_LINK_SWITCH_ANDROID);
    }

    public void checkBtStatusOnBroadcast() {
        sendBroadcast(new android.content.Intent(BROADCAST_BT_CHECKSTATUS));
        e.e.a.g.a("checkBtStatusOnBroadcast action = net.easyconn.bt.checkstatus");
    }

    public void handleBTStatus(android.content.Intent intent) {
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType;
        net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue;
        boolean z = false;
        if (BROADCAST_BT_CONNECTED.equalsIgnoreCase(intent.getAction())) {
            e.e.a.g.a("BT CONNECTED");
            java.lang.String[] stringArrayExtra = intent.getStringArrayExtra("name");
            java.lang.String str = sdkManager.w;
            if (stringArrayExtra != null && stringArrayExtra.length > 0 && !android.text.TextUtils.isEmpty(str)) {
                int i = 0;
                while (true) {
                    if (i >= stringArrayExtra.length) {
                        break;
                    }
                    java.lang.String str2 = stringArrayExtra[i];
                    e.e.a.g.a("BT CONNECTED name " + i + " = " + str2 + " bluetoothName = " + str);
                    if (str2 != null && str2.equals(str)) {
                        sdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_BLUETOOTH, net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_CONNECTED_SAME);
                        z = true;
                        break;
                    }
                    e.e.a.g.c("BT CONNECTED name " + i + "  is " + str2 + ", error", new java.lang.Object[0]);
                    i++;
                }
            }
            if (onBTConnectStatus(true)) {
                return;
            }
            if (stringArrayExtra == null || stringArrayExtra.length <= 0) {
                qVar = sdkManager;
                eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_BLUETOOTH;
                eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_UNCONNECTED;
            } else {
                if (z) {
                    return;
                }
                qVar = sdkManager;
                eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_BLUETOOTH;
                eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_CONNECTED;
            }
        } else {
            if (BROADCAST_BT_OPENED.equalsIgnoreCase(intent.getAction())) {
                e.e.a.g.a("BT OPENED");
                if (onBTConnectStatus(false)) {
                    return;
                }
                sdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_BLUETOOTH, net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_UNCONNECTED);
                try {
                    java.lang.String stringExtra = intent.getStringExtra("name");
                    java.lang.String stringExtra2 = intent.getStringExtra("pin");
                    java.lang.String stringExtra3 = intent.getStringExtra(com.umeng.commonsdk.statistics.idtracking.g.a);
                    e.e.a.g.e("Receive BT msg name = " + stringExtra + "; pin = " + stringExtra2 + "; mac = " + stringExtra3, new java.lang.Object[0]);
                    if (android.text.TextUtils.isEmpty(stringExtra)) {
                        return;
                    }
                    f.a.i.i.q qVar2 = sdkManager;
                    if (stringExtra3 == null) {
                        stringExtra3 = "";
                    }
                    if (stringExtra2 == null) {
                        stringExtra2 = "";
                    }
                    if (qVar2 == null) {
                        throw null;
                    }
                    android.os.Bundle bundle = new android.os.Bundle();
                    bundle.putSerializable("name", stringExtra);
                    bundle.putSerializable("address", stringExtra3);
                    bundle.putSerializable("pin", stringExtra2);
                    android.os.Message messageObtain = android.os.Message.obtain();
                    messageObtain.obj = bundle;
                    messageObtain.what = 9;
                    qVar2.r.sendMessage(messageObtain);
                    return;
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("error:");
                    e.e.a.g.c(e.a.c.a.a.I(e2, sb), new java.lang.Object[0]);
                    return;
                }
            }
            if (!BROADCAST_BT_CLOSED.equalsIgnoreCase(intent.getAction())) {
                return;
            }
            e.e.a.g.a("BT CLOSED");
            if (onBTConnectStatus(false)) {
                return;
            }
            qVar = sdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_BLUETOOTH;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_CLOSED;
        }
        qVar.c0(eCCarStatusType, eCCarStatusValue);
    }

    public void handleBackingUp(boolean z) {
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType;
        net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue;
        if (z) {
            qVar = sdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_REVERSING;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_STARTED;
        } else {
            qVar = sdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_REVERSING;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_STOPPED;
        }
        qVar.c0(eCCarStatusType, eCCarStatusValue);
    }

    public void handleDriveModeStatus(boolean z) {
        sdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_DRIVINGMODE, z ? net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_STARTED : net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_STOPPED);
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null && ((f.a.k.g0) cVar) == null) {
            throw null;
        }
    }

    public void handleKeyCode(android.content.Intent intent) {
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode;
        net.easyconn.ecsdk.ECTypes.ECBtnEventType eCBtnEventType;
        f.a.i.j.c cVar;
        int i;
        java.lang.String str;
        int intExtra = intent.getIntExtra("ECBtnEventType", -1);
        int intExtra2 = intent.getIntExtra("ECBtnCode", -1);
        e.e.a.g.a("handleKeyCodeFromGWM ecBtnEventType = " + intExtra + "| ecBtnCode = " + intExtra2);
        net.easyconn.framework.broadcast.BroadcastManager.d dVar = this.mKeyCodeActionListener;
        if (dVar != null) {
            f.a.k.m0.r0 r0Var = (f.a.k.m0.r0) dVar;
            if (r0Var == null) {
                throw null;
            }
            if (intExtra2 == net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_VOICE_ASSISTANT.getValue()) {
                e.e.a.g.a("onKeyAction keyCode = " + intExtra2 + " keyType = " + intExtra);
                if (intExtra == net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK.getValue()) {
                    cVar = r0Var.f3098d;
                    i = 14;
                    str = "EC_MIRROR_SUCCEED_KEY_VR_CLICK";
                } else if (intExtra == net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS.getValue()) {
                    cVar = r0Var.f3098d;
                    i = 15;
                    str = "EC_MIRROR_SUCCEED_KEY_VR_LONG_PRESS";
                }
                cVar.a(com.google.android.exoplayer2.audio.Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, i, str);
            }
        }
        if (intExtra2 != 4112) {
            if (intExtra2 != 4144) {
                if (intExtra2 != 4208) {
                    switch (intExtra2) {
                        case 4192:
                            if (intExtra == 2) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TOPLEFT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
                                break;
                            } else if (intExtra == 4) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TOPLEFT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
                                break;
                            } else {
                                return;
                            }
                        case 4193:
                            if (intExtra == 2) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TOPRIGHT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
                                break;
                            } else if (intExtra == 4) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TOPRIGHT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
                                break;
                            } else {
                                return;
                            }
                        case 4194:
                            if (intExtra == 2) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_BOTTOMLEFT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
                                break;
                            } else if (intExtra == 4) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_BOTTOMLEFT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
                                break;
                            } else {
                                return;
                            }
                        case 4195:
                            if (intExtra == 2) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_BOTTOMRIGHT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
                                break;
                            } else if (intExtra == 4) {
                                qVar = sdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_BOTTOMRIGHT;
                                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
                                break;
                            } else {
                                return;
                            }
                        default:
                            return;
                    }
                } else if (intExtra == 2) {
                    qVar = sdkManager;
                    eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MODE;
                    eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
                } else {
                    if (intExtra != 4) {
                        return;
                    }
                    qVar = sdkManager;
                    eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MODE;
                    eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
                }
            } else if (intExtra == 2) {
                qVar = sdkManager;
                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_VOICE_ASSISTANT;
                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
            } else {
                if (intExtra != 4) {
                    return;
                }
                qVar = sdkManager;
                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_VOICE_ASSISTANT;
                eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
            }
        } else if (intExtra == 2) {
            qVar = sdkManager;
            eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TALKIE;
            eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK;
        } else {
            if (intExtra != 4) {
                return;
            }
            qVar = sdkManager;
            eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_TALKIE;
            eCBtnEventType = net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_LONG_PRESS;
        }
        qVar.b0(eCBtnCode, eCBtnEventType);
    }

    public void handleMediaCodecAcquire(boolean z) {
    }

    public void handleSpeedPlayStatusAction(android.content.Intent intent) {
        net.easyconn.framework.broadcast.BroadcastManager.c cVar;
        java.lang.String action = intent.getAction();
        java.lang.String stringExtra = intent.getStringExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS);
        java.lang.String stringExtra2 = intent.getStringExtra("command");
        java.lang.String stringExtra3 = intent.getStringExtra("phoneMode");
        java.lang.String stringExtra4 = intent.getStringExtra("phoneType");
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("handleSpeedPlayStatusAction action = ");
        sb.append(action);
        sb.append(", status = ");
        sb.append(stringExtra);
        sb.append(", command = ");
        e.a.c.a.a.B(sb, stringExtra2, ", phoneMode = ", stringExtra3, ", phoneType = ");
        sb.append(stringExtra4);
        e.e.a.g.a(sb.toString());
        if (!this.sudingAction.equals(action) || android.text.TextUtils.isEmpty(stringExtra)) {
            return;
        }
        char c2 = 65535;
        int iHashCode = stringExtra.hashCode();
        if (iHashCode != -1843701849) {
            if (iHashCode == 66129592 && stringExtra.equals(BROADCAST_SPEED_PLAY_STATUS_ENTER)) {
                c2 = 0;
            }
        } else if (stringExtra.equals(BROADCAST_SPEED_PLAY_STATUS_MAIN_PAGE_SHOW)) {
            c2 = 1;
        }
        if (c2 == 1 && (cVar = this.mOnBroadcastListener) != null) {
            ((f.a.k.g0) cVar).j0();
        }
    }

    public boolean isInMirroringMode() {
        return this.isInMirroringMode;
    }

    @Override // f.a.i.h.b
    public void notifyPhoneDisconnect(int i) {
    }

    @Override // f.a.i.h.b
    public void onA2dpAcquire(boolean z, boolean z2) {
        android.content.Intent intent = new android.content.Intent(z ? BROADCAST_BT_A2DP_ACQUIRE : BROADCAST_BT_A2DP_RELEASE);
        java.lang.String str = sdkManager.w;
        intent.putExtra("bluetoothName", str);
        sendBroadcast(intent);
        e.e.a.g.a("broadcast a2dp phone bluetoothName = " + str);
    }

    @Override // f.a.i.h.b
    public void onAcquire2BluePhoneView() {
    }

    public void onActionRegister(android.content.IntentFilter intentFilter) {
    }

    @Override // f.a.i.h.b
    public void onAppMusicStatus(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
        sendBroadcast(getAppMusicStatusIntent(eCAppMusicInfo));
    }

    @Override // f.a.i.h.b
    public void onAppNaviStatus(boolean z) {
        if (this.isNaviStarted == z) {
            return;
        }
        this.isNaviStarted = z;
        sendBroadcast(new android.content.Intent(z ? BROADCAST_EASYCONN_NAVI_STARTED : BROADCAST_EASYCONN_NAVI_STOPPED));
    }

    @Override // f.a.i.h.b
    public void onAppVRStatus(boolean z) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_VR_TEXT_STATUS);
        intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, z ? 1 : 0);
        sendBroadcast(intent);
        if (this.isVrStarted == z) {
            return;
        }
        this.isVrStarted = z;
        android.content.Intent intent2 = new android.content.Intent(BROADCAST_VR_STATUS);
        intent2.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, z ? 1 : 0);
        sendBroadcast(intent2);
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null && ((f.a.k.g0) cVar) == null) {
            throw null;
        }
    }

    public boolean onBTConnectStatus(boolean z) {
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar == null || ((f.a.k.g0) cVar) != null) {
            return false;
        }
        throw null;
    }

    @Override // f.a.i.h.b
    public void onCustomVrShow(boolean z) {
        e.e.a.g.a("onCustomVrShow isShow = " + z);
        android.content.Intent intent = new android.content.Intent(BROADCAST_CAR_CUSTOM_VR_SHOW_STATUS);
        intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, z ? 1 : 0);
        sendBroadcast(intent);
    }

    @Override // f.a.i.h.b
    public void onLicenseAuthSuccess() {
        e.e.a.g.a(" sendBroadcast action = net.easyconn.registed");
        sendBroadcast(new android.content.Intent(BROADCAST_EC_REGISTED));
    }

    @Override // f.a.i.h.b
    public void onNavigationInfo(net.easyconn.ecsdk.ECTypes.ECNavigationHudInfo eCNavigationHudInfo) {
        sendNaviInfo(eCNavigationHudInfo);
    }

    @Override // f.a.i.h.b
    public void onOpenBluetoothSetting() {
        sendBroadcast(new android.content.Intent(BROADCAST_BT_SETTING));
    }

    @Override // f.a.i.h.b
    public void onPhoneAudioStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
    }

    @Override // f.a.i.h.b
    public void onPhoneAudioStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
    }

    @Override // f.a.i.h.b
    public void onPhoneCallAction(net.easyconn.ecsdk.ECTypes.ECCallType eCCallType, java.lang.String str, java.lang.String str2) {
        if (eCCallType.ordinal() == 0) {
            android.content.Intent intent = new android.content.Intent(BROADCAST_BT_CALL_PHONE);
            intent.putExtra("phoneName", str);
            intent.putExtra("phoneNum", str2);
            intent.putExtra("bluetoothName", sdkManager.w);
            sendBroadcast(intent);
        }
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null && ((f.a.k.g0) cVar) == null) {
            throw null;
        }
    }

    @Override // f.a.i.h.b
    public void onPhoneVRText(net.easyconn.ecsdk.ECTypes.ECVRTextInfo eCVRTextInfo) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_EC_VR_TEXT);
        intent.putExtra("source", eCVRTextInfo.type);
        intent.putExtra("text", eCVRTextInfo.plainText);
        intent.putExtra("html", eCVRTextInfo.htmlText);
        intent.putExtra("sequence", eCVRTextInfo.sequence);
        sendBroadcast(intent);
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null && ((f.a.k.g0) cVar) == null) {
            throw null;
        }
    }

    @Override // f.a.i.h.b
    public boolean onPullToFront() {
        return false;
    }

    public boolean onReceive(android.content.Context context, android.content.Intent intent) {
        return false;
    }

    @Override // f.a.i.h.b
    public void onShortcutListReceived(java.lang.String str) {
        e.e.a.g.a("onShortcutListReceived data = " + str);
        android.content.Intent intent = new android.content.Intent(BROADCAST_EC_SHORTCUTS);
        intent.putExtra("data", str);
        sendBroadcast(intent);
    }

    @Override // f.a.i.h.b
    public void onTalkieRecordStatus(boolean z) {
        if (this.isVrStarted == z) {
            return;
        }
        this.isVrStarted = z;
        android.content.Intent intent = new android.content.Intent(BROADCAST_VR_STATUS);
        intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, z ? 1 : 0);
        sendBroadcast(intent);
    }

    @Override // f.a.i.h.b
    public void onVRTips(java.lang.String str) {
        java.lang.String[] strArr;
        android.content.Intent intent = new android.content.Intent(BROADCAST_VR_TIPS);
        intent.putExtra("data", str);
        sendBroadcast(intent);
        if (this.mOnBroadcastListener != null) {
            try {
                com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.JSON.parseObject(str);
                strArr = new java.lang.String[object.getIntValue("cnt")];
                try {
                    object.getJSONArray("tips").toArray(strArr);
                } catch (com.alibaba.fastjson.JSONException unused) {
                    e.e.a.g.c("tips json convert error", new java.lang.Object[0]);
                    if (strArr == null) {
                    } else {
                        return;
                    }
                }
            } catch (com.alibaba.fastjson.JSONException unused2) {
                strArr = null;
            }
            if (strArr == null && ((f.a.k.g0) this.mOnBroadcastListener) == null) {
                throw null;
            }
        }
    }

    @Override // f.a.i.h.b
    public void onWeatherInfo(java.lang.String str) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_WEATHER_INFO);
        intent.putExtra("data", str);
        sendBroadcast(intent);
    }

    public void registerAll() {
        java.lang.String str;
        e.e.a.g.a("registerAll");
        if (this.mBroadcastReceiver != null) {
            e.e.a.g.a.b(5, null, "registerAll: already registered", new java.lang.Object[0]);
            return;
        }
        this.mBroadcastReceiver = new net.easyconn.framework.broadcast.BroadcastManager.b();
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction(BROADCAST_KEY_CODE);
        this.intentFilter.addAction(BROADCAST_STOP_EASYCONN_NAVI);
        this.intentFilter.addAction(BROADCAST_BACKING_UP_START);
        this.intentFilter.addAction(BROADCAST_BACKING_UP_STOP);
        this.intentFilter.addAction(BROADCAST_BT_OPENED);
        this.intentFilter.addAction(BROADCAST_BT_CLOSED);
        this.intentFilter.addAction(BROADCAST_BT_CONNECTED);
        this.intentFilter.addAction(BROADCAST_BT_A2DP_ACQUIRE_NG);
        this.intentFilter.addAction(BROADCAST_DRIVEMODE_OPENED);
        this.intentFilter.addAction(BROADCAST_DRIVEMODE_CLOSED);
        this.intentFilter.addAction(BROADCAST_NAVI_DAYTIME);
        this.intentFilter.addAction(BROADCAST_NAVI_NIGHT);
        this.intentFilter.addAction(BROADCAST_START_VR);
        this.intentFilter.addAction(BROADCAST_STOP_VR);
        this.intentFilter.addAction(BROADCAST_MEDIACODEC_ACQUIRE);
        this.intentFilter.addAction(BROADCAST_MEDIACODEC_RELEASE);
        this.intentFilter.addAction(BROADCAST_EC_EXIT_APP);
        this.intentFilter.addAction(BROADCAST_EC_SWITCH_BACKGROUND);
        this.intentFilter.addAction(BROADCAST_PLAY_MUSIC);
        this.intentFilter.addAction(BROADCAST_PAUSE_MUSIC);
        this.intentFilter.addAction(BROADCAST_PRE_MUSIC);
        this.intentFilter.addAction(BROADCAST_NEXT_MUSIC);
        this.intentFilter.addAction(BROADCAST_PLAY_PAUSE_MUSIC);
        this.intentFilter.addAction(BROADCAST_PARALLEL_WORLD_BACK);
        this.intentFilter.addAction(BROADCAST_PARALLEL_WORLD_HOME);
        this.intentFilter.addAction(BROADCAST_PARALLEL_WORLD_MENU);
        this.intentFilter.addAction(BROADCAST_CARCONTROL_RESPONSE);
        try {
            try {
                str = android.os.SystemProperties.get(SUDING_ACTION_PROP_KEY, BROADCAST_SPEED_PLAY_ACTION);
            } catch (java.lang.Exception unused) {
                android.util.Log.d("MirrorSystemProperties", "Unable to read system properties");
                str = BROADCAST_SPEED_PLAY_ACTION;
            }
            this.sudingAction = str;
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Get suding action exception = ");
            e.e.a.g.c(e.a.c.a.a.J(e2, sb), new java.lang.Object[0]);
            this.sudingAction = BROADCAST_SPEED_PLAY_ACTION;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Get suding action = ");
        sbO.append(this.sudingAction);
        e.e.a.g.a(sbO.toString());
        if (android.text.TextUtils.isEmpty(this.sudingAction)) {
            e.e.a.g.a("Get suding action empty, usb default acion = com.zjinnova.zlink");
            this.sudingAction = BROADCAST_SPEED_PLAY_ACTION;
        }
        this.intentFilter.addAction(this.sudingAction);
        this.intentFilter.addAction(BROADCAST_RECORD_START);
        this.intentFilter.addAction(BROADCAST_RECORD_STOP);
        this.intentFilter.addAction(BROADCAST_APP_OPEN_STATE);
        onActionRegister(this.intentFilter);
        this.mContext.registerReceiver(this.mBroadcastReceiver, this.intentFilter);
    }

    public void release() {
        android.os.HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
            this.mHandlerThread = null;
        }
    }

    public void removeBroadcastListener() {
        this.mOnBroadcastListener = null;
    }

    public void removeKeyCodeActionListener() {
        this.mKeyCodeActionListener = null;
    }

    public void removeOnMediaCodecStateRequestListener() {
        this.mOnMediaCodecStateRequestListener = null;
    }

    public void sendAirplayPlayBroadcast() {
        sendBroadcast(BROADCAST_AIRPLAY_PLAY);
    }

    public void sendAirplayStopBroadcast() {
        sendBroadcast(BROADCAST_AIRPLAY_STOP);
    }

    public void sendBroadcast(android.content.Intent intent) {
        e.e.a.g.a(" sendBroadcast intent = " + intent + " action=" + intent.getAction() + " Extra = (" + getBroadcastExtraString(intent) + ")");
        this.mContext.sendBroadcast(intent);
    }

    public void sendBroadcast(java.lang.String str) {
        e.a.c.a.a.w(" sendBroadcast action=", str);
        this.mContext.sendBroadcast(new android.content.Intent(str));
    }

    public void sendBroadcastDelay(android.content.Intent intent, long j) {
        android.os.Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendMessageDelayed(handler.obtainMessage(1, intent), j);
        }
    }

    public void sendBroadcastDelay(java.lang.String str, long j) {
        android.os.Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendMessageDelayed(handler.obtainMessage(1, new android.content.Intent(str)), j);
        }
    }

    public void sendDayOrNightCheckStatusBroadcast() {
        sendBroadcast(BROADCAST_DAYORNIGHT_CHECKSTATUS);
    }

    public void sendDriveModeCheckStatusBroadcast() {
        sendBroadcast(BROADCAST_DRIVEMODE_CHECKSTATUS);
    }

    public void sendGPSBroadcast(net.easyconn.ecsdk.ECTypes.ECGPSInfo eCGPSInfo) {
        if (eCGPSInfo != null) {
            android.content.Intent intent = new android.content.Intent(BROADCAST_GPS_INFO);
            intent.putExtra(EXTRA_AUDIOFOCUS_MUSIC_STATUS, eCGPSInfo.status);
            intent.putExtra("longitude", eCGPSInfo.longitude);
            intent.putExtra("latitude", eCGPSInfo.latitude);
            sendBroadcast(intent);
        }
    }

    public void sendIphonePauseBroadcast() {
        sendBroadcast(BROADCAST_IPHONE_PAUSE);
    }

    public void sendIphoneResumeBroadcast() {
        sendBroadcast(BROADCAST_IPHONE_RESUME);
    }

    public void sendLinkInBroadcast() {
        e.e.a.g.a("**=> sendLinkInBroadcast");
        mCurrentLinkStatus = true;
        sendBroadcast(BROADCAST_LINK_IN);
    }

    public void sendLinkOutBroadcast() {
        e.e.a.g.a("**=> sendLinkOutBroadcast");
        mCurrentLinkStatus = false;
        sendBroadcast(BROADCAST_LINK_OUT);
    }

    public void sendMirrorInBroadcast() {
        mCurrentConnectStatus = true;
        sendBroadcast(BROADCAST_MIRROR_IN);
    }

    public void sendMirrorOutBroadcast() {
        if (this.isInMirroringMode) {
            sendQuitMirrorSameBroadcast();
        }
        mCurrentConnectStatus = false;
        sendBroadcast(BROADCAST_MIRROR_OUT);
    }

    public void sendMirrorPauseBroadcast() {
        sendBroadcast(BROADCAST_MIRROR_PAUSE);
    }

    public void sendMirrorResumeBroadcast() {
        sendBroadcast(BROADCAST_MIRROR_RESUME);
    }

    public void sendMirrorSameBroadcast() {
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null && ((f.a.k.g0) cVar) == null) {
            throw null;
        }
        sendBroadcast(BROADCAST_MIRROR_SAME_MODE);
        this.isInMirroringMode = true;
    }

    public void sendNightModeStatus(boolean z) {
        e.a.c.a.a.z("sendNightModeStatus:", z);
        net.easyconn.framework.broadcast.BroadcastManager.c cVar = this.mOnBroadcastListener;
        if (cVar != null) {
            boolean z2 = !z;
            f.a.k.g0 g0Var = (f.a.k.g0) cVar;
            if (f.a.i.m.g.u(g0Var.f3029c)) {
                net.easyconn.EcApplication.getInstance().setDayNightTheme(z2);
                if (g0Var.f3032f != null && f.a.i.m.g.e(g0Var.f3029c)) {
                    ((f.a.k.l0.b4) g0Var.f3032f).j0();
                }
                g0Var.A();
            }
        }
        f.a.i.i.q qVar = sdkManager;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 30;
        messageObtain.obj = java.lang.Boolean.valueOf(z);
        qVar.r.sendMessage(messageObtain);
    }

    public void sendPhoneBTInfo() {
        android.content.Intent intent = new android.content.Intent(BROADCAST_BT_INFO);
        intent.putExtra("name", sdkManager.w);
        sendBroadcast(intent);
    }

    public void sendPhoneTimeBroadcast(net.easyconn.ecsdk.ECTypes.ECTimeInfo eCTimeInfo) {
        android.content.Intent intent = new android.content.Intent(BROADCAST_PHONE_TIME);
        intent.putExtra(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME, eCTimeInfo.gmtTime);
        intent.putExtra("currentTime", eCTimeInfo.localTime);
        intent.putExtra("currentTimeZone", eCTimeInfo.timeZone);
        intent.putExtra("dateTime", eCTimeInfo.dateTime);
        sendBroadcast(intent);
    }

    public void sendQuitMirrorSameBroadcast() {
        sendBroadcast(BROADCAST_MIRROR_SAME_MODE_QUIT);
        this.isInMirroringMode = false;
    }

    public void sendRunnableDelay(java.lang.Runnable runnable, long j) {
        android.os.Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(runnable);
            this.mHandler.postDelayed(runnable, j);
        }
    }

    public void sendVRCmdByCar(boolean z) {
        if (z) {
            sdkManager.b0(net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_VOICE_ASSISTANT, net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK);
            return;
        }
        f.a.i.i.q qVar = sdkManager;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 11;
        qVar.r.sendMessage(messageObtain);
    }

    public void setOnBroadcastListener(net.easyconn.framework.broadcast.BroadcastManager.c cVar) {
        this.mOnBroadcastListener = cVar;
    }

    public void setOnKeyCodeActionListener(net.easyconn.framework.broadcast.BroadcastManager.d dVar) {
        this.mKeyCodeActionListener = dVar;
    }

    public void setOnMediaCodecStateRequestListener(net.easyconn.framework.broadcast.BroadcastManager.e eVar) {
        this.mOnMediaCodecStateRequestListener = eVar;
    }

    public void stopEasyConnNavigation() {
        f.a.i.i.q qVar = sdkManager;
        if (qVar == null || !qVar.V) {
            return;
        }
        f.a.i.i.q qVar2 = sdkManager;
        if (qVar2 == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 13;
        qVar2.r.sendMessage(messageObtain);
    }

    public void unregisterAll() {
        e.e.a.g.a("unregisterAll");
        net.easyconn.framework.broadcast.BroadcastManager.b bVar = this.mBroadcastReceiver;
        if (bVar != null) {
            this.mContext.unregisterReceiver(bVar);
            this.mBroadcastReceiver = null;
            sdkManager = null;
        }
    }
}
