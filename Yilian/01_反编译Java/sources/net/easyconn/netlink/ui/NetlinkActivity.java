package net.easyconn.netlink.ui;

/* loaded from: classes.dex */
public class NetlinkActivity extends android.app.Activity {
    public net.easyconn.netlink.service.NetLinkService a;
    public android.os.Handler b = new android.os.Handler(new net.easyconn.netlink.ui.NetlinkActivity.a());

    /* renamed from: c, reason: collision with root package name */
    public android.content.ServiceConnection f3209c = new net.easyconn.netlink.ui.NetlinkActivity.b();

    public class a implements android.os.Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            if (message.what != 10) {
                return true;
            }
            net.easyconn.netlink.ui.NetlinkActivity.this.b();
            return true;
        }
    }

    public class b implements android.content.ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            e.e.a.g.a("onServiceConnected");
            net.easyconn.netlink.ui.NetlinkActivity netlinkActivity = net.easyconn.netlink.ui.NetlinkActivity.this;
            netlinkActivity.a = net.easyconn.netlink.service.NetLinkService.this;
            netlinkActivity.c(netlinkActivity.getIntent());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            e.e.a.g.a("onServiceDisconnected");
        }
    }

    public final void b() {
        try {
            android.content.Intent intentPrepare = android.net.VpnService.prepare(this);
            e.e.a.g.a("prepareVpn: intent=" + intentPrepare);
            if (intentPrepare != null) {
                startActivityForResult(intentPrepare, 1);
            } else {
                onActivityResult(1, -1, null);
            }
        } catch (java.lang.Exception unused) {
            e.e.a.g.a("prepareVpn failed!!!");
            this.b.sendEmptyMessageDelayed(10, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
    }

    public final void c(android.content.Intent intent) {
        e.e.a.g.a("processIntent: " + intent);
        if (intent != null && intent.getBooleanExtra("prepareVpn", false)) {
            b();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, android.content.Intent intent) {
        e.e.a.g.a("onActivityResult: requestCode=" + i + ", resultCode=" + i2);
        if (i == 1) {
            if (i2 == -1) {
                net.easyconn.netlink.service.NetLinkService netLinkService = this.a;
                if (netLinkService != null) {
                    try {
                        netLinkService.g(true);
                    } catch (java.lang.Exception e2) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("onActivityResult: ");
                        sbO.append(e2.toString());
                        e.e.a.g.a(sbO.toString());
                    }
                }
            } else {
                super.onActivityResult(i, i2, intent);
            }
        }
        net.easyconn.netlink.service.NetLinkService netLinkService2 = this.a;
        if (netLinkService2 == null || netLinkService2.k) {
            e.e.a.g.a("netlinkactiviey finish");
            finish();
        } else {
            e.e.a.g.a("netlinkactiviey moveTaskToBack");
            moveTaskToBack(true);
        }
    }

    @Override // android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        e.e.a.g.a("onCreate");
        super.onCreate(bundle);
        bindService(new android.content.Intent(getApplicationContext(), (java.lang.Class<?>) net.easyconn.netlink.service.NetLinkService.class), this.f3209c, 1);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        e.e.a.g.a("onDestroy");
        unbindService(this.f3209c);
        super.onDestroy();
        e.e.a.g.a("onDestroy end");
    }

    @Override // android.app.Activity
    public void onNewIntent(android.content.Intent intent) {
        e.e.a.g.a("onNewIntent: " + intent);
        c(intent);
    }
}
