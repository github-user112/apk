package net.easyconn;

/* loaded from: classes.dex */
public class EcApplication extends net.easyconn.FrameworkApplication implements java.lang.Thread.UncaughtExceptionHandler {
    public static net.easyconn.EcApplication instance = null;
    public static volatile boolean isCurrentMirror = false;
    public static volatile boolean isCurrentMirrorChannelOpen = false;
    public static volatile boolean isDiskLogEnable = false;
    public static volatile boolean isForeground;
    public static android.widget.Toast mLongToast;
    public static android.widget.Toast mShortToast;
    public static final java.util.concurrent.ScheduledExecutorService workService = new java.util.concurrent.ScheduledThreadPoolExecutor(2, new java.util.concurrent.ThreadFactory() { // from class: f.a.b
        @Override // java.util.concurrent.ThreadFactory
        public final java.lang.Thread newThread(java.lang.Runnable runnable) {
            return net.easyconn.EcApplication.b(runnable);
        }
    });
    public java.lang.String channel;
    public java.lang.Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
    public android.util.SparseIntArray deviceFilterMap;
    public android.widget.Toast mCoustomToast;
    public f.a.i.k.b mEcCountDownTime;
    public java.lang.String pushSecret;
    public java.lang.String oldLocale = "";
    public final java.lang.String APP_KEY = "60b733afdd01c71b57d11fc5";
    public final int DEVICE_TYPE = 1;

    public class a implements e.e.a.e {
        public a() {
        }

        @Override // e.e.a.e
        public void a(int i, java.lang.String str, java.lang.String str2) {
            if (str == null) {
                str = net.easyconn.EcApplication.this.getString(net.easyconn.R.string.easyconn_log_tag);
            }
            android.util.Log.println(i, str, str2);
        }

        @Override // e.e.a.e
        public boolean b(int i, java.lang.String str) {
            return true;
        }
    }

    public class b extends e.e.a.b {
        public b(net.easyconn.EcApplication ecApplication, e.e.a.d dVar) {
            super(dVar);
        }

        @Override // e.e.a.e
        public boolean b(int i, java.lang.String str) {
            return net.easyconn.EcApplication.isDiskLogEnable;
        }
    }

    public class c implements com.tencent.bugly.beta.interfaces.BetaPatchListener {
        public c(net.easyconn.EcApplication ecApplication) {
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onApplyFailure(java.lang.String str) {
            e.e.a.g.e(e.a.c.a.a.e("onApplyFailure==>", str), new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onApplySuccess(java.lang.String str) {
            e.e.a.g.e(e.a.c.a.a.e("onApplySuccess==>", str), new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onDownloadFailure(java.lang.String str) {
            e.e.a.g.e(e.a.c.a.a.e("onDownloadFailure==>", str), new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onDownloadReceived(long j, long j2) {
            e.e.a.g.e("onDownloadReceived==>" + j + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + j2, new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onDownloadSuccess(java.lang.String str) {
            e.e.a.g.e(e.a.c.a.a.e("onDownloadSuccess==>", str), new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onPatchReceived(java.lang.String str) {
            e.e.a.g.e(e.a.c.a.a.e("onPatchReceived==>", str), new java.lang.Object[0]);
        }

        @Override // com.tencent.bugly.beta.interfaces.BetaPatchListener
        public void onPatchRollback() {
            e.e.a.g.e("onPatchRollback", new java.lang.Object[0]);
        }
    }

    public static /* synthetic */ java.lang.Thread b(java.lang.Runnable runnable) {
        return new java.lang.Thread(runnable, "EcApplication_work_thread");
    }

    public static net.easyconn.EcApplication getInstance() {
        return instance;
    }

    public static java.lang.String getTime() {
        return java.lang.String.valueOf(java.util.Calendar.getInstance().get(11));
    }

    private void initCountDownTime() {
        if (f.a.i.m.g.m(getApplicationContext()) && this.mEcCountDownTime == null) {
            this.mEcCountDownTime = new f.a.i.k.b(this);
        }
    }

    public /* synthetic */ void a() {
        f.a.i.l.a.f(this);
    }

    @Override // androidx.multidex.MultiDexApplication, android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) {
        super.attachBaseContext(context);
        this.defaultUncaughtExceptionHandler = java.lang.Thread.getDefaultUncaughtExceptionHandler();
        net.easyconn.FrameworkApplication.setContext(context);
        installTinker(context);
    }

    public void executeTask(java.lang.Runnable runnable) {
        workService.execute(runnable);
    }

    public void executeTaskDelay(java.lang.Runnable runnable, long j) {
        workService.schedule(runnable, j, java.util.concurrent.TimeUnit.MILLISECONDS);
    }

    public android.util.SparseIntArray getDeviceFilterMap() {
        android.util.SparseIntArray sparseIntArray = this.deviceFilterMap;
        if (sparseIntArray != null && sparseIntArray.size() > 0) {
            return this.deviceFilterMap;
        }
        android.content.res.XmlResourceParser xml = getResources().getXml(net.easyconn.R.xml.device_filter);
        android.util.SparseIntArray sparseIntArray2 = new android.util.SparseIntArray(70);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    if ("usb-device".equals(xml.getName())) {
                        int iIntValue = java.lang.Integer.valueOf(xml.getAttributeValue(0)).intValue();
                        sparseIntArray2.append(iIntValue, iIntValue);
                    }
                }
            }
        } catch (java.io.IOException | org.xmlpull.v1.XmlPullParserException e2) {
            e.e.a.g.d(e2, "getDeviceFilterMap error", new java.lang.Object[0]);
        }
        this.deviceFilterMap = sparseIntArray2;
        return sparseIntArray2;
    }

    public boolean getIsDayTheme() {
        int i = net.easyconn.FrameworkApplication.getContext().getResources().getConfiguration().uiMode;
        e.a.c.a.a.v("EcApplicationTheme getIsDayTheme(). setDayNightTheme uiMode = ", i);
        if (i == 16) {
            e.e.a.g.a("EcApplicationTheme getIsDayTheme Light ");
            return true;
        }
        if (i != 32) {
            return false;
        }
        e.e.a.g.a("EcApplicationTheme getIsDayTheme Dark ");
        return false;
    }

    public void handleLocaleChanged(android.content.res.Configuration configuration) throws java.lang.InterruptedException, java.io.IOException {
        java.lang.String string = (android.os.Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale).toString();
        if (this.oldLocale.equals(string)) {
            return;
        }
        e.e.a.g.b("current locale is %s, change to %s", this.oldLocale, string);
        if (f.a.i.m.g.y(getApplicationContext())) {
            android.content.Intent intent = new android.content.Intent("net.easyconn.usb.netlink.status");
            intent.putExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, 0);
            intent.putExtra("error_code", 0);
            net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(getApplicationContext(), intent);
            net.easyconn.netlink.service.NetLinkService.l();
        }
        onTerminate();
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    public void initBugly() {
        com.tencent.bugly.beta.Beta.betaPatchListener = new net.easyconn.EcApplication.c(this);
        com.tencent.bugly.Bugly.init(this, "900037976", false);
    }

    public void initUmeng() throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        this.channel = "tocfree";
        this.pushSecret = null;
        com.umeng.commonsdk.UMConfigure.setLogEnabled(true);
        com.umeng.commonsdk.UMConfigure.preInit(getApplicationContext(), "60b733afdd01c71b57d11fc5", this.channel);
        com.umeng.commonsdk.UMConfigure.init(this, "60b733afdd01c71b57d11fc5", this.channel, 1, this.pushSecret);
        com.umeng.analytics.MobclickAgent.setPageCollectionMode(com.umeng.analytics.MobclickAgent.PageMode.MANUAL);
    }

    public void installTinker() {
        com.tencent.bugly.beta.Beta.installTinker();
    }

    public void installTinker(android.content.Context context) {
        d.o.e.f(context);
        installTinker();
    }

    public boolean notifyIsDayTheme(android.content.res.Configuration configuration) {
        int i = configuration.uiMode;
        e.a.c.a.a.v("EcApplicationTheme onConfigurationChanged(). notifyIsDayTheme uiMode = ", i);
        if (i == 16) {
            e.e.a.g.a("EcApplicationTheme notifyIsDayTheme onChangeLight ");
            return true;
        }
        if (i != 32) {
            return false;
        }
        e.e.a.g.a("EcApplicationTheme notifyIsDayTheme onChangeDark ");
        return false;
    }

    public void onActivityPause() {
        e.e.a.g.c("onActivityPause", new java.lang.Object[0]);
        com.umeng.analytics.MobclickAgent.onPause(this);
    }

    public void onActivityResume() {
        e.e.a.g.c("onActivityResume", new java.lang.Object[0]);
        com.umeng.analytics.MobclickAgent.onResume(this);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.InterruptedException, java.io.IOException {
        e.e.a.g.a("application onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        handleLocaleChanged(configuration);
        if (f.a.i.m.g.u(getApplicationContext())) {
            setDayNightTheme(notifyIsDayTheme(configuration));
        }
    }

    @Override // android.app.Application
    public void onCreate() throws java.lang.Throwable {
        super.onCreate();
        f.a.i.m.g.c(getApplicationContext());
        onCreateImpl();
        initUmeng();
        initCountDownTime();
        if (f.a.i.m.g.u(getApplicationContext())) {
            setDayNightTheme(getIsDayTheme());
        }
    }

    public void onCreateImpl() throws java.lang.Throwable {
        instance = this;
        f.a.i.i.q.g0(false);
        net.easyconn.ecsdk.ECSDK.getInstance().setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel.EC_LOG_LEVEL_ALL, net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_LOGCAT, null, 1);
        e.e.a.g.a.b.add(new net.easyconn.EcApplication.a());
        e.e.a.a.b bVarB = e.e.a.a.b();
        bVarB.b(getString(net.easyconn.R.string.easyconn_log_tag));
        e.e.a.g.a.b.add(new net.easyconn.EcApplication.b(this, bVarB.a()));
        isDiskLogEnable = f.a.i.g.a.b(this).a("key_ec_disk_log_state", false);
        initBugly();
        f.a.i.m.d.e(this);
        this.oldLocale = e.c.b.a.f.j(this);
        f.a.i.l.a.B(this);
        executeTask(new java.lang.Runnable() { // from class: f.a.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a();
            }
        });
        java.lang.Thread.setDefaultUncaughtExceptionHandler(this);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("EcApplication onCreate, locale = ");
        sb.append(this.oldLocale);
        sb.append(", isDiskLogEnable = ");
        e.a.c.a.a.C(sb, isDiskLogEnable);
    }

    public void onEventAirplayClick() {
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_Function_Name", "airplay_click");
        map.put("key_ClickTime", getTime());
        com.umeng.analytics.MobclickAgent.onEventObject(this, "Function_Click", map);
        e.e.a.g.c("onEventAirplayClick getTime = " + getTime(), new java.lang.Object[0]);
    }

    public void onEventAirplayUse(long j) {
        long j2 = j / 1000;
        if (j2 < 60) {
            return;
        }
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_AirplayUseTime", java.lang.Long.valueOf(j2));
        com.umeng.analytics.MobclickAgent.onEventObject(this, "AirplayUse", map);
        e.e.a.g.c("onEventAirplayUse time = " + j2, new java.lang.Object[0]);
    }

    public void onEventDlnaClick() {
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_Function_Name", "dlna_click");
        map.put("key_ClickTime", getTime());
        com.umeng.analytics.MobclickAgent.onEventObject(this, "Function_Click", map);
        e.e.a.g.c("onEventDlnaClick getTime = " + getTime(), new java.lang.Object[0]);
    }

    public void onEventDlnaUse(long j) {
        long j2 = j / 1000;
        if (j2 < 60) {
            return;
        }
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_DlnaUseTime", java.lang.Long.valueOf(j2));
        com.umeng.analytics.MobclickAgent.onEventObject(this, "DlnaUse", map);
        e.e.a.g.c("onEventDlnaUse time = " + j2, new java.lang.Object[0]);
    }

    public void onEventMiracastClick() {
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_Function_Name", "miracast_click");
        map.put("key_ClickTime", getTime());
        com.umeng.analytics.MobclickAgent.onEventObject(this, "Function_Click", map);
        e.e.a.g.c("onEventMiracastClick getTime = " + getTime(), new java.lang.Object[0]);
    }

    public void onEventMiracastUse(long j) {
        long j2 = j / 1000;
        if (j2 < 60) {
            return;
        }
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_MiracastUseTime", java.lang.Long.valueOf(j2));
        com.umeng.analytics.MobclickAgent.onEventObject(this, "MiracastUse", map);
        e.e.a.g.c("onEventMiracastUse time = " + j2, new java.lang.Object[0]);
    }

    public void onEventMirrorClick() {
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_Function_Name", "mirror_click");
        map.put("key_ClickTime", getTime());
        com.umeng.analytics.MobclickAgent.onEventObject(this, "Function_Click", map);
        e.e.a.g.c("onEventMirrorClick getTime = " + getTime(), new java.lang.Object[0]);
    }

    public void onEventMirrorUse(long j) {
        long j2 = j / 1000;
        if (j2 < 60) {
            return;
        }
        java.util.HashMap map = new java.util.HashMap();
        map.put("key_MirrorUseTime", java.lang.Long.valueOf(j2));
        com.umeng.analytics.MobclickAgent.onEventObject(this, "MirrorUse", map);
        e.e.a.g.c("onEventMirrorUse time = " + j2, new java.lang.Object[0]);
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(getApplicationContext(), net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_APP_QUIT);
    }

    public void regCountDownTimeCallBack(f.a.i.k.b.a aVar) {
        if (f.a.i.m.g.m(getApplicationContext())) {
            this.mEcCountDownTime.a(aVar);
        }
    }

    public void setDayNightTheme(boolean z) {
        f.a.i.m.g.l0(this, z ? "true" : "false");
    }

    public void showLastToastCustom(java.lang.String str, int i) {
        android.view.View viewInflate = android.view.LayoutInflater.from(getApplicationContext()).inflate(net.easyconn.R.layout.custom_toast, (android.view.ViewGroup) null);
        ((android.widget.TextView) viewInflate.findViewById(net.easyconn.R.id.toast_layout_text)).setText(str);
        if (this.mCoustomToast == null) {
            this.mCoustomToast = new android.widget.Toast(getApplicationContext());
        }
        if (getResources().getConfiguration().orientation == 1) {
            this.mCoustomToast.setGravity(17, 0, 0);
        } else {
            this.mCoustomToast.setGravity(81, 0, getResources().getDimensionPixelSize(net.easyconn.R.dimen.dp_40));
        }
        this.mCoustomToast.setDuration(i);
        this.mCoustomToast.setView(viewInflate);
        this.mCoustomToast.show();
    }

    public final void showToast(int i, int i2) {
        showToast(getString(i), i2);
    }

    public void showToast(java.lang.String str, int i) {
        showLastToastCustom(str, i);
    }

    public final void showToastCustom(int i, int i2) {
        showToastCustom(getString(i), i2);
    }

    public void showToastCustom(java.lang.String str, int i) {
        showLastToastCustom(str, i);
    }

    public void startCountDown() {
        if (f.a.i.m.g.m(getApplicationContext())) {
            this.mEcCountDownTime.b();
            e.e.a.g.c("startCountDown", new java.lang.Object[0]);
        }
    }

    public void stopCountDown() {
        if (f.a.i.m.g.m(getApplicationContext())) {
            this.mEcCountDownTime.c();
            e.e.a.g.c("stopCountDown", new java.lang.Object[0]);
        }
    }

    public void unRegCountDownTimeCallBack() {
        if (f.a.i.m.g.m(getApplicationContext())) {
            this.mEcCountDownTime.d();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        if (th != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("uncaughtException e = ");
            sbO.append(th.toString());
            e.e.a.g.a(sbO.toString());
            try {
                java.io.StringWriter stringWriter = new java.io.StringWriter();
                java.io.PrintWriter printWriter = new java.io.PrintWriter(stringWriter);
                th.printStackTrace(printWriter);
                printWriter.close();
                e.e.a.g.c("fatal easyconn exception detail: \n\n" + stringWriter.toString(), new java.lang.Object[0]);
            } catch (java.lang.Exception unused) {
            }
        }
        java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.defaultUncaughtExceptionHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            android.os.Process.killProcess(android.os.Process.myPid());
        }
    }
}
