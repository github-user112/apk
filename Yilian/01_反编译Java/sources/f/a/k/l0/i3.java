package f.a.k.l0;

/* loaded from: classes.dex */
public abstract class i3 extends androidx.fragment.app.Fragment {
    public android.widget.ImageView a;
    public android.widget.ImageView b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.TextView f3058c;
    public boolean i;
    public java.lang.String j;
    public java.lang.String k;
    public android.net.ConnectivityManager l;
    public f.a.k.l0.i3.b m;
    public java.lang.String o;
    public java.lang.String p;
    public java.lang.String q;
    public java.lang.String r;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3059d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3060e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3061f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3062g = false;
    public boolean h = false;
    public android.content.BroadcastReceiver n = new f.a.k.l0.i3.a();

    public class a extends android.content.BroadcastReceiver {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01af A[PHI: r10
  0x01af: PHI (r10v49 f.a.k.l0.i3) = (r10v22 f.a.k.l0.i3), (r10v52 f.a.k.l0.i3) binds: [B:95:0x01ad, B:22:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r10, android.content.Intent r11) {
            /*
                Method dump skipped, instructions count: 563
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.i3.a.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public interface b {
        void a(boolean z, boolean z2);
    }

    public void L(android.content.Context context) {
        android.net.ConnectivityManager connectivityManager = this.l;
        if (connectivityManager == null) {
            return;
        }
        android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            e.e.a.g.a("wifi disconnected!");
            this.f3062g = false;
            this.j = "";
            int iN = N();
            e.a.c.a.a.v("getUsbDeviceType is ", iN);
            if (iN != 0) {
                if (iN != 1) {
                    if (iN != -1) {
                        return;
                    }
                    this.f3059d = false;
                    this.f3060e = false;
                    return;
                }
                this.f3059d = true;
                this.f3060e = true;
            }
            this.f3059d = true;
            this.f3060e = false;
        } else {
            if (activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.getType() == 1) {
                    e.e.a.g.a("wifi connected!");
                    this.f3062g = true;
                    android.net.wifi.WifiInfo connectionInfo = ((android.net.wifi.WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
                    if (connectionInfo != null) {
                        this.j = connectionInfo.getSSID();
                    }
                    Z();
                    return;
                }
                return;
            }
            e.e.a.g.a("wifi disconnected!");
            this.f3062g = false;
            this.j = "";
            int iN2 = N();
            e.a.c.a.a.v("getUsbDeviceType is ", iN2);
            if (iN2 != 0) {
                if (iN2 != 1) {
                    if (iN2 != -1) {
                        return;
                    }
                    this.f3059d = false;
                    this.f3060e = false;
                    return;
                }
                this.f3059d = true;
                this.f3060e = true;
            }
            this.f3059d = true;
            this.f3060e = false;
        }
        Y();
    }

    public final java.lang.String M(int i) {
        if (i == 0) {
            return null;
        }
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    public final int N() {
        android.util.SparseIntArray deviceFilterMap = net.easyconn.EcApplication.getInstance().getDeviceFilterMap();
        java.util.Iterator<android.hardware.usb.UsbDevice> it = ((android.hardware.usb.UsbManager) getActivity().getSystemService("usb")).getDeviceList().values().iterator();
        while (it.hasNext()) {
            android.hardware.usb.UsbDevice next = it.next();
            if (!(next != null && next.getInterfaceCount() > 0 && next.getInterface(0).getInterfaceClass() == 8) && deviceFilterMap.get(next.getVendorId(), -1) > 0) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("device.getVendorId() is ");
                sbO.append(next.getVendorId());
                e.e.a.g.a(sbO.toString());
                return next.getVendorId() == 1452 ? 1 : 0;
            }
        }
        return -1;
    }

    public void O(android.view.View view) {
        this.l = (android.net.ConnectivityManager) getActivity().getApplicationContext().getSystemService("connectivity");
        e.e.a.g.a("registerReceiver()");
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        getActivity().getApplicationContext().registerReceiver(this.n, intentFilter);
        this.a = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.fragment_connection_tip_progressbar);
        this.b = (android.widget.ImageView) view.findViewById(net.easyconn.R.id.fragment_connection_tip_connected);
        this.f3058c = (android.widget.TextView) view.findViewById(net.easyconn.R.id.fragment_connection_tip_connected_tv);
        this.o = getActivity().getString(net.easyconn.R.string.connected);
        this.p = getActivity().getString(net.easyconn.R.string.f3128android);
        this.q = getActivity().getString(net.easyconn.R.string.ios);
        this.r = getActivity().getString(net.easyconn.R.string.ap_open);
    }

    public void P() {
    }

    public void Q() {
    }

    public void R() {
    }

    public void S() {
    }

    public void T() {
    }

    public void U() {
    }

    public void V() {
    }

    public final void W() {
        e.e.a.g.a("showApTip()");
        android.widget.ImageView imageView = this.a;
        if (imageView != null) {
            imageView.setVisibility(8);
            ((android.graphics.drawable.AnimationDrawable) this.a.getBackground()).stop();
        }
        this.b.setVisibility(0);
        this.f3058c.setVisibility(0);
        if (this.i) {
            this.f3058c.setText(this.r);
        }
    }

    public final void X() {
        e.e.a.g.a("showSearchTip()");
        android.widget.ImageView imageView = this.a;
        if (imageView != null) {
            imageView.setVisibility(0);
            ((android.graphics.drawable.AnimationDrawable) this.a.getBackground()).start();
        }
        this.b.setVisibility(8);
        this.f3058c.setVisibility(8);
    }

    public final void Y() {
        android.widget.TextView textView;
        java.lang.String str;
        e.e.a.g.a("showUsbDevTip()");
        android.widget.ImageView imageView = this.a;
        if (imageView != null) {
            imageView.setVisibility(8);
            ((android.graphics.drawable.AnimationDrawable) this.a.getBackground()).stop();
        }
        this.b.setVisibility(0);
        this.f3058c.setVisibility(0);
        if (this.f3060e) {
            textView = this.f3058c;
            str = java.lang.String.format("%s：%s", this.o, this.q);
        } else {
            textView = this.f3058c;
            str = java.lang.String.format("%s：%s", this.o, this.p);
        }
        textView.setText(str);
    }

    public final void Z() {
        android.widget.TextView textView;
        java.lang.String str;
        e.e.a.g.a("showWifiTip()");
        android.widget.ImageView imageView = this.a;
        if (imageView != null) {
            imageView.setVisibility(8);
            ((android.graphics.drawable.AnimationDrawable) this.a.getBackground()).stop();
        }
        this.b.setVisibility(0);
        this.f3058c.setVisibility(0);
        if (this.f3062g) {
            textView = this.f3058c;
            str = java.lang.String.format("%s：%s", this.o, this.j);
        } else {
            if (!this.h) {
                return;
            }
            textView = this.f3058c;
            str = java.lang.String.format("%s：%s", this.o, this.k);
        }
        textView.setText(str);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        e.e.a.g.a("onDestroy()");
        getActivity().getApplicationContext().unregisterReceiver(this.n);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0112  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.l0.i3.onResume():void");
    }
}
