package f.a.g;

/* loaded from: classes.dex */
public class h {
    public final android.bluetooth.BluetoothHidDeviceAppQosSettings a = new android.bluetooth.BluetoothHidDeviceAppQosSettings(1, 800, 9, 0, 11250, -1);
    public final android.bluetooth.BluetoothHidDeviceAppSdpSettings b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.g.h.b f2858c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f2859d;

    /* renamed from: e, reason: collision with root package name */
    public android.bluetooth.BluetoothManager f2860e;

    /* renamed from: f, reason: collision with root package name */
    public android.bluetooth.BluetoothAdapter f2861f;

    /* renamed from: g, reason: collision with root package name */
    public java.util.Set<android.bluetooth.BluetoothDevice> f2862g;
    public android.bluetooth.BluetoothDevice h;
    public android.bluetooth.BluetoothHidDevice i;
    public boolean j;
    public boolean k;
    public final android.bluetooth.BluetoothProfile.ServiceListener l;

    public class a implements android.bluetooth.BluetoothProfile.ServiceListener {
        public a() {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i, android.bluetooth.BluetoothProfile bluetoothProfile) {
            e.e.a.g.c(e.a.c.a.a.K("BtHidHelper onServiceConnected profile = ", i), new java.lang.Object[0]);
            try {
                if (i == f.a.g.h.this.b()) {
                    if (!(bluetoothProfile instanceof android.bluetooth.BluetoothHidDevice)) {
                        e.e.a.g.c("BtHidHelper Proxy received but it's not BluetoothHidDevice", new java.lang.Object[0]);
                        return;
                    }
                    f.a.g.h.this.i = (android.bluetooth.BluetoothHidDevice) bluetoothProfile;
                    if (f.a.g.h.this.f2858c != null) {
                        f.a.g.j jVar = (f.a.g.j) f.a.g.h.this.f2858c;
                        if (jVar == null) {
                            throw null;
                        }
                        e.e.a.g.c("BtHidManager onProfileServiceConnected", new java.lang.Object[0]);
                        jVar.i = true;
                        jVar.g();
                    }
                }
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidHelper onServiceConnected.exception");
                sbO.append(android.util.Log.getStackTraceString(e2));
                e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i) {
            e.e.a.g.c(e.a.c.a.a.K("BtHidHelper onServiceDisconnected profile = ", i), new java.lang.Object[0]);
            if (i == f.a.g.h.this.b()) {
                f.a.g.h hVar = f.a.g.h.this;
                hVar.j = false;
                hVar.k = false;
                f.a.g.h.b bVar = hVar.f2858c;
                if (bVar != null) {
                    final f.a.g.j jVar = (f.a.g.j) bVar;
                    if (jVar == null) {
                        throw null;
                    }
                    e.e.a.g.c("BtHidManager onProfileServiceDisConnected", new java.lang.Object[0]);
                    jVar.i = false;
                    if (jVar.c()) {
                        jVar.f2863c.postDelayed(new java.lang.Runnable() { // from class: f.a.g.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                jVar.g();
                            }
                        }, 1000L);
                    }
                }
            }
        }
    }

    public interface b {
    }

    public h(f.a.g.h.b bVar) {
        byte[] bArr = new byte[(f.a.g.g.b.length * 2) + f.a.g.g.a.length + f.a.g.g.f2857c.length];
        byte[] bArr2 = f.a.g.g.a;
        java.lang.System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        for (int i = 0; i < 2; i++) {
            byte[] bArr3 = f.a.g.g.b;
            int length = f.a.g.g.a.length;
            byte[] bArr4 = f.a.g.g.b;
            java.lang.System.arraycopy(bArr3, 0, bArr, (bArr4.length * i) + length, bArr4.length);
        }
        java.lang.System.arraycopy(f.a.g.g.f2857c, 0, bArr, (f.a.g.g.b.length * 2) + f.a.g.g.a.length, f.a.g.g.f2857c.length);
        this.b = new android.bluetooth.BluetoothHidDeviceAppSdpSettings("VV Mouse", "VV for you", "VV", (byte) -64, bArr);
        this.j = false;
        this.k = false;
        this.l = new f.a.g.h.a();
        this.f2858c = bVar;
        android.content.Context context = net.easyconn.FrameworkApplication.getContext();
        this.f2859d = context;
        if (android.os.Build.VERSION.SDK_INT < 18) {
            e.e.a.g.c("BtHidHelper not supoort bt hid can not get BluetoothManager", new java.lang.Object[0]);
            return;
        }
        android.bluetooth.BluetoothManager bluetoothManager = (android.bluetooth.BluetoothManager) context.getSystemService("bluetooth");
        this.f2860e = bluetoothManager;
        this.f2861f = bluetoothManager.getAdapter();
    }

    public java.lang.String a() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        boolean zBooleanValue;
        android.bluetooth.BluetoothAdapter bluetoothAdapter = this.f2861f;
        if (bluetoothAdapter == null) {
            return null;
        }
        this.f2862g = bluetoothAdapter.getBondedDevices();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BtHidHelper getConnectedBtDevice bondedDevices.size = ");
        java.util.Set<android.bluetooth.BluetoothDevice> set = this.f2862g;
        sbO.append(set != null ? set.size() : -1);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        java.util.Set<android.bluetooth.BluetoothDevice> set2 = this.f2862g;
        if (set2 != null && set2.size() > 0) {
            java.util.Iterator<android.bluetooth.BluetoothDevice> it = this.f2862g.iterator();
            while (it.hasNext()) {
                android.bluetooth.BluetoothDevice next = it.next();
                try {
                    java.lang.reflect.Method declaredMethod = android.bluetooth.BluetoothDevice.class.getDeclaredMethod("isConnected", null);
                    declaredMethod.setAccessible(true);
                    zBooleanValue = ((java.lang.Boolean) declaredMethod.invoke(next, null)).booleanValue();
                    e.e.a.g.a("BtHidHelper getConnectedBtDevice bondedDevice name = " + next.getName() + " addr = " + next.getAddress() + " isConnected = " + zBooleanValue);
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("BtHidHelper getConnectedBtDevice e = ");
                    e.e.a.g.c(e.a.c.a.a.I(e2, sb), new java.lang.Object[0]);
                }
                if (zBooleanValue) {
                    return next.getAddress();
                }
                continue;
            }
        }
        return null;
    }

    public int b() throws java.lang.SecurityException {
        java.lang.reflect.Field[] fields = android.bluetooth.BluetoothProfile.class.getFields();
        int length = fields.length;
        for (int i = 0; i < length; i++) {
            java.lang.reflect.Field field = fields[i];
            int modifiers = field.getModifiers();
            if (java.lang.reflect.Modifier.isStatic(modifiers) && java.lang.reflect.Modifier.isPublic(modifiers) && java.lang.reflect.Modifier.isFinal(modifiers)) {
                try {
                    if (field.getName().equals("HID_DEVICE")) {
                        e.e.a.g.c("BtHidHelper getInputDeviceHiddenConstant : " + field.getInt(null), new java.lang.Object[0]);
                        return field.getInt(null);
                    }
                    continue;
                } catch (java.lang.Exception unused) {
                    continue;
                }
            }
        }
        e.e.a.g.c("BtHidHelper getInputDeviceHiddenConstant : -1", new java.lang.Object[0]);
        return -1;
    }

    public void c(int i, int i2, int i3, boolean z) {
        f.a.g.k[] kVarArr = new f.a.g.k[1];
        byte b2 = !z ? 1 : 0;
        f.a.g.k kVar = new f.a.g.k();
        int i4 = i3 << 2;
        if (!z) {
            i4 |= 3;
        }
        kVar.a = (byte) i4;
        kVar.b = z ? (short) 0 : (short) i;
        kVar.f2868c = z ? (short) 0 : (short) i2;
        kVarArr[0] = kVar;
        byte[] bArr = {b2, kVarArr[0].a, (byte) (kVarArr[0].b & 255), (byte) ((kVarArr[0].b >> 8) & 255), (byte) (kVarArr[0].f2868c & 255), (byte) ((kVarArr[0].f2868c >> 8) & 255)};
        android.bluetooth.BluetoothHidDevice bluetoothHidDevice = this.i;
        if (bluetoothHidDevice == null) {
            e.e.a.g.c("BtHidHelper sendHidTouch failed,  hid device is null", new java.lang.Object[0]);
            return;
        }
        android.bluetooth.BluetoothDevice bluetoothDevice = this.h;
        if (bluetoothDevice == null) {
            e.e.a.g.c("BtHidHelper sendHidTouch failed,  remote device is null", new java.lang.Object[0]);
            return;
        }
        bluetoothHidDevice.sendReport(bluetoothDevice, 1, bArr);
        for (int i5 = 0; i5 < 6; i5++) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("BtHidHelper sendHidTouch data [", i5, "] = ");
            sbP.append((int) bArr[i5]);
            e.e.a.g.c(sbP.toString(), new java.lang.Object[0]);
        }
    }

    public void d(int i) {
        android.bluetooth.BluetoothHidDevice bluetoothHidDevice = this.i;
        if (bluetoothHidDevice == null) {
            e.e.a.g.c("BtHidHelper sendKeycodeHome failed,  hid device is null", new java.lang.Object[0]);
            return;
        }
        android.bluetooth.BluetoothDevice bluetoothDevice = this.h;
        if (bluetoothDevice == null) {
            e.e.a.g.c("BtHidHelper sendKeycodeHome failed,  remote device is null", new java.lang.Object[0]);
            return;
        }
        int i2 = (i < 0 || i > 65535) ? 0 : i;
        bluetoothHidDevice.sendReport(bluetoothDevice, 2, new byte[]{(byte) i2, (byte) ((i2 >> 8) & 255)});
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("BtHidHelper sendKeycode ");
        e.e.a.g.c(e.a.c.a.a.i(sb, i, " end"), new java.lang.Object[0]);
    }

    public void e() {
        e.e.a.g.c("BtHidHelper unRegisterBluetoothHid", new java.lang.Object[0]);
        android.bluetooth.BluetoothHidDevice bluetoothHidDevice = this.i;
        if (bluetoothHidDevice == null || this.f2861f == null) {
            return;
        }
        if (bluetoothHidDevice != null) {
            java.util.List<android.bluetooth.BluetoothDevice> connectedDevices = bluetoothHidDevice.getConnectedDevices();
            e.e.a.g.a("BtHidHelper unRegisterBluetoothHid devices = " + connectedDevices);
            for (android.bluetooth.BluetoothDevice bluetoothDevice : connectedDevices) {
                this.i.disconnect(bluetoothDevice);
                e.e.a.g.a("BtHidHelper unRegisterBluetoothHid mHidDevice.disconnect devices = " + bluetoothDevice + " end");
            }
            this.i.unregisterApp();
            e.e.a.g.a("BtHidHelper unRegisterBluetoothHid unregisterApp end");
        }
        android.bluetooth.BluetoothAdapter bluetoothAdapter = this.f2861f;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.closeProfileProxy(19, this.i);
            e.e.a.g.a("BtHidHelper unRegisterBluetoothHid closeProfileProxy end");
        }
        this.j = false;
        this.k = false;
        e.e.a.g.c("BtHidHelper unRegisterBluetoothHid end", new java.lang.Object[0]);
    }
}
