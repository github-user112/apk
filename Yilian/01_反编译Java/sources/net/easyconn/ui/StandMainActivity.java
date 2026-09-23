package net.easyconn.ui;

/* loaded from: classes.dex */
public class StandMainActivity extends f.a.k.g0 {
    public android.os.PowerManager.WakeLock S;

    public class a extends e.e.a.b {
        public a(e.e.a.d dVar) {
            super(dVar);
        }

        @Override // e.e.a.b, e.e.a.e
        public void a(int i, java.lang.String str, java.lang.String str2) {
            if (str == null) {
                str = net.easyconn.ui.StandMainActivity.this.getString(net.easyconn.R.string.easyconn_log_tag);
            }
            android.util.Log.println(i, str, str2);
        }

        @Override // e.e.a.e
        public boolean b(int i, java.lang.String str) {
            return true;
        }
    }

    @Override // f.a.k.g0
    public void D() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    @Override // f.a.k.g0, d.b.k.h, d.j.d.l, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.IllegalArgumentException {
        super.onConfigurationChanged(configuration);
    }

    @Override // f.a.k.g0, d.b.k.h, d.j.d.l, androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        super.onCreate(bundle);
        if (this.S == null) {
            this.S = ((android.os.PowerManager) getSystemService("power")).newWakeLock(805306394, net.easyconn.ui.StandMainActivity.class.getSimpleName());
        }
        e.e.a.g.a.b.clear();
        e.e.a.a.b bVarB = e.e.a.a.b();
        bVarB.f2829d = getString(net.easyconn.R.string.easyconn_log_tag);
        e.e.a.g.a.b.add(new net.easyconn.ui.StandMainActivity.a(bVarB.a()));
        net.easyconn.ecsdk.ECSDK.getInstance().setLogInfo(net.easyconn.ecsdk.ECTypes.ECLogLevel.EC_LOG_LEVEL_ALL, net.easyconn.ecsdk.ECTypes.ECLogOutputType.EC_LOG_OUT_FILE, "/sdcard/logger", 7);
    }

    @Override // f.a.k.g0, d.j.d.l, android.app.Activity
    public void onPause() {
        super.onPause();
        android.os.PowerManager.WakeLock wakeLock = this.S;
        if (wakeLock != null) {
            wakeLock.release();
            e.e.a.g.a("WakeLock.release");
        }
    }

    @Override // f.a.k.g0, d.j.d.l, android.app.Activity
    public void onResume() {
        super.onResume();
        android.os.PowerManager.WakeLock wakeLock = this.S;
        if (wakeLock != null) {
            wakeLock.acquire();
            e.e.a.g.a("WakeLock.acquire");
        }
    }
}
