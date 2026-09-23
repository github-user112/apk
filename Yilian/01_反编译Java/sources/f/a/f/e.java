package f.a.f;

/* loaded from: classes.dex */
public class e implements net.easyconn.ecsdk.IUsbDevice {
    public android.content.Context a;
    public f.a.f.e.c b;

    /* renamed from: c, reason: collision with root package name */
    public android.bluetooth.BluetoothAdapter f2851c;

    /* renamed from: d, reason: collision with root package name */
    public android.bluetooth.le.BluetoothLeAdvertiser f2852d;

    /* renamed from: e, reason: collision with root package name */
    public android.bluetooth.BluetoothGattServer f2853e;

    /* renamed from: f, reason: collision with root package name */
    public android.bluetooth.BluetoothGattCharacteristic f2854f;

    /* renamed from: g, reason: collision with root package name */
    public android.bluetooth.le.AdvertiseCallback f2855g;
    public android.bluetooth.BluetoothDevice h;
    public f.a.f.e.b i;
    public int l;
    public final java.lang.Object k = new java.lang.Object();
    public android.bluetooth.BluetoothGattServerCallback m = new f.a.f.e.a();
    public byte[] j = new byte[0];

    public class a extends android.bluetooth.BluetoothGattServerCallback {
        public a() {
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onCharacteristicReadRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, int i2, android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            e.e.a.g.c("BleTransManager  onCharacteristicReadRequest", new java.lang.Object[0]);
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onCharacteristicWriteRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, int i2, byte[] bArr) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BleTransManager  onCharacteristicWriteRequest value : ");
            sbO.append(new java.lang.String(bArr));
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            f.a.f.e.this.f2853e.sendResponse(bluetoothDevice, i, 0, i2, bArr);
            f.a.f.e eVar = f.a.f.e.this;
            eVar.h = bluetoothDevice;
            synchronized (eVar.k) {
                byte[] bArr2 = new byte[bArr.length + eVar.j.length];
                java.lang.System.arraycopy(eVar.j, 0, bArr2, 0, eVar.j.length);
                java.lang.System.arraycopy(bArr, 0, bArr2, eVar.j.length, bArr.length);
                eVar.j = bArr2;
            }
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onConnectionStateChange(android.bluetooth.BluetoothDevice bluetoothDevice, int i, int i2) {
            if (i2 == 0) {
                e.e.a.g.c("BleTransManager  BluetoothProfile.STATE_DISCONNECTED", new java.lang.Object[0]);
                f.a.f.e.this.b(false);
            } else {
                if (i2 != 2) {
                    return;
                }
                e.e.a.g.c("BleTransManager  BluetoothProfile.STATE_CONNECTED", new java.lang.Object[0]);
                f.a.f.e.this.b(true);
            }
        }
    }

    public interface b {
    }

    public class c extends android.os.Handler {
        public c(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            boolean z;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BleTransManager handleMessage  msg.what = ");
            sbO.append(message.what);
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            int i = message.what;
            if (i == 0) {
                if (f.a.f.e.this.f2851c.isEnabled()) {
                    z = true;
                } else {
                    e.e.a.g.c("BleTransManager checkBluetooth Open BT not open", new java.lang.Object[0]);
                    z = false;
                }
                e.e.a.g.c("BleTransManager checkBluetooth isBtOpen = " + z, new java.lang.Object[0]);
                f.a.f.e.this.b.removeMessages(0);
                if (z) {
                    f.a.f.e.this.b.sendEmptyMessage(2);
                } else {
                    f.a.f.e.this.b.sendEmptyMessage(1);
                }
            } else if (i == 1) {
                f.a.f.e eVar = f.a.f.e.this;
                if (eVar == null) {
                    throw null;
                }
                e.e.a.g.c("BleTransManager openBluetooth start", new java.lang.Object[0]);
                eVar.f2851c.enable();
                f.a.f.e.this.b.sendEmptyMessageDelayed(0, 2000L);
            } else if (i == 2) {
                f.a.f.e eVar2 = f.a.f.e.this;
                if (eVar2 == null) {
                    throw null;
                }
                if (android.os.Build.VERSION.SDK_INT < 21) {
                    e.e.a.g.c("BleTransManager error, current SDK version is not supported", new java.lang.Object[0]);
                } else {
                    if (eVar2.f2852d == null) {
                        eVar2.f2852d = eVar2.f2851c.getBluetoothLeAdvertiser();
                    }
                    android.bluetooth.le.AdvertiseSettings advertiseSettingsBuild = new android.bluetooth.le.AdvertiseSettings.Builder().setConnectable(true).setAdvertiseMode(0).setTxPowerLevel(2).setTimeout(0).build();
                    android.bluetooth.le.AdvertiseData.Builder includeDeviceName = new android.bluetooth.le.AdvertiseData.Builder().addServiceUuid(new android.os.ParcelUuid(net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(26983))).setIncludeDeviceName(true);
                    java.lang.String strA = eVar2.a();
                    e.e.a.g.c(e.a.c.a.a.e("BleTransManager  getManufacturerData deviceName = ", strA), new java.lang.Object[0]);
                    android.bluetooth.le.AdvertiseData advertiseDataBuild = includeDeviceName.addManufacturerData(255, strA.getBytes()).setIncludeTxPowerLevel(true).build();
                    f.a.f.d dVar = new f.a.f.d(eVar2);
                    eVar2.f2855g = dVar;
                    eVar2.f2852d.startAdvertising(advertiseSettingsBuild, advertiseDataBuild, dVar);
                }
            } else if (i == 3) {
                f.a.f.e eVar3 = f.a.f.e.this;
                if (eVar3.f2853e == null) {
                    eVar3.f2853e = ((android.bluetooth.BluetoothManager) eVar3.a.getSystemService("bluetooth")).openGattServer(eVar3.a, eVar3.m);
                }
                if (eVar3.f2853e == null) {
                    e.e.a.g.c("BleTransManager openGattServer is failed", new java.lang.Object[0]);
                } else {
                    android.bluetooth.BluetoothGattService bluetoothGattService = new android.bluetooth.BluetoothGattService(java.util.UUID.fromString("0000b360-d6d8-c7ec-bdf0-eab1bfc6bcbc"), 0);
                    android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic = new android.bluetooth.BluetoothGattCharacteristic(java.util.UUID.fromString(f.a.i.m.g.t(eVar3.a) ? "0000b364-d6d8-c7ec-bdf0-eab1bfc6bcbc" : "0000b362-d6d8-c7ec-bdf0-eab1bfc6bcbc"), 28, 17);
                    eVar3.f2854f = bluetoothGattCharacteristic;
                    bluetoothGattCharacteristic.addDescriptor(new android.bluetooth.BluetoothGattDescriptor(net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10498), 1));
                    bluetoothGattService.addCharacteristic(eVar3.f2854f);
                    eVar3.f2853e.clearServices();
                    eVar3.f2853e.addService(bluetoothGattService);
                }
            }
            super.handleMessage(message);
        }
    }

    public e(android.content.Context context) {
        boolean z;
        this.a = context;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("ble_trans_manager_msg_thread");
        handlerThread.start();
        this.b = new f.a.f.e.c(handlerThread.getLooper());
        this.l = 20;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BleTransManager BLE_TRANS_MAX_LENGTH:");
        sbO.append(this.l);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        android.bluetooth.BluetoothAdapter defaultAdapter = android.bluetooth.BluetoothAdapter.getDefaultAdapter();
        this.f2851c = defaultAdapter;
        if (defaultAdapter == null) {
            e.e.a.g.c("BleTransManager checkBluetoothOpen could not init BluetoothAdapter", new java.lang.Object[0]);
            z = false;
        } else {
            z = true;
        }
        if (z) {
            this.b.sendEmptyMessage(0);
        }
    }

    public final java.lang.String a() {
        android.content.Context context = this.a;
        if (context != null) {
            return ((net.easyconn.framework.sdkservice.EasyConnectService) context).a.G();
        }
        java.lang.String string = android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
        if (android.text.TextUtils.isEmpty(string)) {
            string = android.os.Build.SERIAL;
        }
        if (string.length() < 4) {
            return "";
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Carbit-");
        sbO.append(string.substring(0, 4));
        return sbO.toString();
    }

    public void b(boolean z) {
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType;
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType2;
        if (z) {
            f.a.f.e.b bVar = this.i;
            if (bVar != null) {
                f.a.i.i.k kVar = (f.a.i.i.k) bVar;
                if (kVar == null) {
                    throw null;
                }
                e.e.a.g.a("EasyConnectService onPhoneBleConnected");
                if (f.a.i.m.g.t(kVar.a.b)) {
                    qVar = kVar.a.a;
                    eCTransportType2 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE_ENCRYPT;
                } else {
                    qVar = kVar.a.a;
                    eCTransportType2 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE;
                }
                qVar.y(eCTransportType2, kVar.a.r);
                return;
            }
            return;
        }
        f.a.f.e.b bVar2 = this.i;
        if (bVar2 != null) {
            f.a.i.i.k kVar2 = (f.a.i.i.k) bVar2;
            if (kVar2 == null) {
                throw null;
            }
            e.e.a.g.a("EasyConnectService onPhoneBleDisConnected");
            boolean zT = f.a.i.m.g.t(kVar2.a.b);
            f.a.i.i.q qVar2 = kVar2.a.a;
            if (zT) {
                eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE_ENCRYPT;
                if (qVar2 == null) {
                    throw null;
                }
            } else {
                eCTransportType = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_BLE;
                if (qVar2 == null) {
                    throw null;
                }
            }
            e.e.a.g.a("BleAP unBindBleApDevice");
            android.os.Handler handler = qVar2.r;
            handler.sendMessage(handler.obtainMessage(63, eCTransportType));
        }
    }

    public void c(byte[] bArr) {
        if (this.f2854f == null || this.f2853e == null || this.h == null) {
            e.e.a.g.c("BleTransManager  dataCharacteristic or mBtGattServer or mDevice is null, return", new java.lang.Object[0]);
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BleTransManager  sendDataToPhone data: ");
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(bArr.length);
        for (byte b2 : bArr) {
            java.lang.String hexString = java.lang.Integer.toHexString(b2 & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        java.lang.String string = stringBuffer.toString();
        char[] charArray = string.toCharArray();
        int length = string.length() / 2;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr2[i] = (byte) (("0123456789ABCDEF".indexOf(charArray[i2 + 1]) + ("0123456789ABCDEF".indexOf(charArray[i2]) * 16)) & 255);
        }
        sbO.append(new java.lang.String(bArr2));
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        this.f2854f.setValue(bArr);
        this.f2853e.notifyCharacteristicChanged(this.h, this.f2854f, true);
        e.e.a.g.c("BleTransManager  sendDataToPhone end", new java.lang.Object[0]);
    }

    @Override // net.easyconn.ecsdk.IUsbDevice
    public void close() {
        e.e.a.g.c("BleTransManager  IUsbDevice close", new java.lang.Object[0]);
    }

    @Override // net.easyconn.ecsdk.IUsbDevice
    public int open() {
        e.e.a.g.c("BleTransManager  IUsbDevice open", new java.lang.Object[0]);
        return 0;
    }

    @Override // net.easyconn.ecsdk.IUsbDevice
    public int read(java.nio.ByteBuffer byteBuffer, int i) {
        synchronized (this.k) {
            if (i > this.j.length) {
                i = this.j.length;
            }
            if (i > 0) {
                byteBuffer.put(this.j, 0, i);
                int length = this.j.length - i;
                byte[] bArr = new byte[length];
                if (length > 0) {
                    java.lang.System.arraycopy(this.j, i, bArr, 0, length);
                }
                this.j = bArr;
            }
        }
        return i;
    }

    @Override // net.easyconn.ecsdk.IUsbDevice
    public int write(java.nio.ByteBuffer byteBuffer, int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("BleTransManager  IUsbDevice write data : ");
        sbO.append(byteBuffer.toString());
        sbO.append("length:");
        sbO.append(i);
        e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
        int i2 = i;
        while (true) {
            try {
                int i3 = i2 > this.l ? this.l : i2;
                e.e.a.g.c("BleTransManager write len = " + i3, new java.lang.Object[0]);
                if (i3 <= 0) {
                    break;
                }
                byte[] bArr = new byte[i3];
                byteBuffer.get(bArr, 0, i3);
                i2 -= i3;
                c(bArr);
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        return i;
    }
}
