package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public class EBTBLEService extends net.easyconn.ecsdk.ebt.EBTService {
    public static final int BLE_WRITE_MAX_PAYLOAD = 20;
    public final java.util.Map<java.lang.String, android.bluetooth.BluetoothDevice> bluetoothDevicesMap;
    public android.bluetooth.le.BluetoothLeAdvertiser bluetoothLeAdvertiser;
    public android.bluetooth.BluetoothGattServer gattServer;
    public android.bluetooth.BluetoothGattServerCallback gattServerCallback;
    public final android.os.Handler handler;
    public net.easyconn.ecsdk.IUsbDevice mBLEIOHandle;
    public byte[] mBuffer;
    public android.bluetooth.BluetoothDevice mConnectedDevice;
    public android.bluetooth.BluetoothGattCharacteristic mDataCharacter;
    public java.lang.String mMacString;
    public int mServiceSize;
    public boolean notifyStatus;
    public static final java.util.UUID SERVICE_CHANNEL = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(26983);
    public static final java.util.UUID SERVICE_CHANNEL_DATA_UUID = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(45920);
    public static final java.util.UUID SERVICE_DEVICE_INFO = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(6154);
    public static final java.util.UUID SERVICE_DEVICE_INFO_MFN = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10793);
    public static final java.util.UUID SERVICE_DEVICE_INFO_MNS = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10788);
    public static final java.util.UUID SERVICE_DEVICE_INFO_SERIAL = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10789);
    public static final java.util.UUID SERVICE_DEVICE_INFO_HARDWARE = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10791);
    public static final java.util.UUID SERVICE_DEVICE_INFO_FIRMWARE = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10790);
    public static final java.util.UUID SERVICE_DEVICE_INFO_SOFTWARE = net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10792);
    public static final byte[] SERVICE_CHANNEL_DATA = new byte[5];
    public static final java.util.UUID SERVICE_ECC = java.util.UUID.fromString("0000b360-d6d8-c7ec-bdf0-eab1bfc6bcbc");
    public static final java.util.UUID CHARACTERISTIC_DATA = java.util.UUID.fromString("0000b362-d6d8-c7ec-bdf0-eab1bfc6bcbc");

    public class BLEIOHandle implements net.easyconn.ecsdk.IUsbDevice {
        public BLEIOHandle() {
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public void close() {
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int open() {
            return 0;
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int read(java.nio.ByteBuffer byteBuffer, int i) {
            synchronized (this) {
                if (i > net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length) {
                    i = net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length;
                }
                if (i > 0) {
                    byteBuffer.put(net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer, 0, i);
                    int length = net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length - i;
                    byte[] bArr = new byte[length];
                    if (length > 0) {
                        java.lang.System.arraycopy(net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer, i, bArr, 0, length);
                    }
                    net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer = bArr;
                }
            }
            return i;
        }

        @Override // net.easyconn.ecsdk.IUsbDevice
        public int write(java.nio.ByteBuffer byteBuffer, int i) throws java.lang.InterruptedException {
            int i2 = i;
            while (true) {
                int i3 = i2 <= 20 ? i2 : 20;
                if (i3 <= 0) {
                    break;
                }
                try {
                    byte[] bArr = new byte[i3];
                    byteBuffer.get(bArr, 0, i3);
                    i2 -= i3;
                    net.easyconn.ecsdk.ebt.EBTBLEService.this.mDataCharacter.setWriteType(1);
                    net.easyconn.ecsdk.ebt.EBTBLEService.this.mDataCharacter.setValue(bArr);
                    android.bluetooth.BluetoothGattServer bluetoothGattServer = net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer;
                    net.easyconn.ecsdk.ebt.EBTBLEService eBTBLEService = net.easyconn.ecsdk.ebt.EBTBLEService.this;
                    android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "notifyCharacteristicChanged  = " + bluetoothGattServer.notifyCharacteristicChanged(eBTBLEService.mConnectedDevice, eBTBLEService.mDataCharacter, false));
                    java.lang.Thread.sleep(300L);
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
                e2.printStackTrace();
                return i;
            }
            java.lang.Thread.sleep(300L);
            net.easyconn.ecsdk.ebt.EBTBLEService.this.notifyStatus = false;
            return i;
        }
    }

    public class eccBluetoothGattServerCallback extends android.bluetooth.BluetoothGattServerCallback {
        public eccBluetoothGattServerCallback() {
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onCharacteristicReadRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, int i2, android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            super.onCharacteristicReadRequest(bluetoothDevice, i, i2, bluetoothGattCharacteristic);
            if (net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer == null) {
                return;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onCharacteristicReadRequest characteristic: ");
            sbO.append(bluetoothGattCharacteristic.getUuid());
            sbO.append(", offset: ");
            sbO.append(i2);
            sbO.append(", characteristic value: ");
            sbO.append(java.util.Arrays.toString(bluetoothGattCharacteristic.getValue()));
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, sbO.toString());
            if (i2 == 0) {
                net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer.sendResponse(bluetoothDevice, i, 0, 0, net.easyconn.ecsdk.ebt.EBTBLEService.this.mMacString.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            } else if (net.easyconn.ecsdk.ebt.EBTBLEService.this.mMacString.getBytes(java.nio.charset.StandardCharsets.UTF_8).length - i2 > 0) {
                net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer.sendResponse(bluetoothDevice, i, 0, i2, net.easyconn.ecsdk.ebt.EBTBLEService.this.mMacString.getBytes(java.nio.charset.StandardCharsets.UTF_8));
            } else {
                net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer.sendResponse(bluetoothDevice, i, 0, i2, null);
            }
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onCharacteristicWriteRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, int i2, byte[] bArr) {
            super.onCharacteristicWriteRequest(bluetoothDevice, i, bluetoothGattCharacteristic, z, z2, i2, bArr);
            try {
                android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onCharacteristicWriteRequest requestId: " + i + "characteristic: " + bluetoothGattCharacteristic.getUuid() + ", offset: " + i2 + ", value: " + bArr.length + ",responseNeeded:" + z2);
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
            synchronized (this) {
                byte[] bArr2 = new byte[bArr.length + net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length];
                java.lang.System.arraycopy(net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer, 0, bArr2, 0, net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length);
                java.lang.System.arraycopy(bArr, 0, bArr2, net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer.length, bArr.length);
                net.easyconn.ecsdk.ebt.EBTBLEService.this.mBuffer = bArr2;
            }
            if (z2) {
                net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer.sendResponse(bluetoothDevice, i, 0, 0, new byte[0]);
            }
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onConnectionStateChange(android.bluetooth.BluetoothDevice bluetoothDevice, int i, int i2) {
            java.lang.Thread thread;
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onConnectionStateChange status: " + i + ", newState: " + i2 + " deviceName: " + bluetoothDevice.getName());
            if (i2 == 0) {
                thread = new java.lang.Thread(new java.lang.Runnable() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.eccBluetoothGattServerCallback.2
                    @Override // java.lang.Runnable
                    public void run() {
                        net.easyconn.ecsdk.ECSDK.getInstance().unbindDirectTransportDevice(net.easyconn.ecsdk.ebt.EBTBLEService.this.mType);
                    }
                });
            } else {
                if (i2 != 2) {
                    return;
                }
                java.lang.StringBuilder sbO = e.a.c.a.a.o("BluetoothProfile.STATE_CONNECTED bondState: ");
                sbO.append(bluetoothDevice.getBondState());
                android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, sbO.toString());
                if (bluetoothDevice.getBondState() != 10 && bluetoothDevice.getBondState() == 12) {
                    synchronized (net.easyconn.ecsdk.ebt.EBTBLEService.this.bluetoothDevicesMap) {
                        net.easyconn.ecsdk.ebt.EBTBLEService.this.bluetoothDevicesMap.put(bluetoothDevice.getAddress(), bluetoothDevice);
                    }
                }
                net.easyconn.ecsdk.ebt.EBTBLEService.this.mConnectedDevice = bluetoothDevice;
                thread = new java.lang.Thread(new java.lang.Runnable() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.eccBluetoothGattServerCallback.1
                    @Override // java.lang.Runnable
                    public void run() {
                        net.easyconn.ecsdk.ECSDK ecsdk = net.easyconn.ecsdk.ECSDK.getInstance();
                        net.easyconn.ecsdk.ebt.EBTBLEService eBTBLEService = net.easyconn.ecsdk.ebt.EBTBLEService.this;
                        ecsdk.bindDirectTransportDevice(eBTBLEService.mType, eBTBLEService.mBLEIOHandle);
                    }
                });
            }
            thread.start();
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onDescriptorReadRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, int i2, android.bluetooth.BluetoothGattDescriptor bluetoothGattDescriptor) {
            super.onDescriptorReadRequest(bluetoothDevice, i, i2, bluetoothGattDescriptor);
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onDescriptorReadRequest requestId: " + i + ", offset: " + i2 + ", descriptor: " + bluetoothGattDescriptor.getUuid());
            android.bluetooth.BluetoothGattServer unused = net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer;
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onDescriptorWriteRequest(android.bluetooth.BluetoothDevice bluetoothDevice, int i, android.bluetooth.BluetoothGattDescriptor bluetoothGattDescriptor, boolean z, boolean z2, int i2, byte[] bArr) {
            super.onDescriptorWriteRequest(bluetoothDevice, i, bluetoothGattDescriptor, z, z2, i2, bArr);
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onExecuteWrite(android.bluetooth.BluetoothDevice bluetoothDevice, int i, boolean z) {
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onExecuteWrite requestId: " + i);
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onMtuChanged(android.bluetooth.BluetoothDevice bluetoothDevice, int i) {
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onMtuChanged mtu: " + i);
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onNotificationSent(android.bluetooth.BluetoothDevice bluetoothDevice, int i) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("onNotificationSent status: ", i, " value = ");
            sbP.append(java.util.Arrays.toString(net.easyconn.ecsdk.ebt.EBTBLEService.this.mDataCharacter.getValue()));
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, sbP.toString());
        }

        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onServiceAdded(int i, android.bluetooth.BluetoothGattService bluetoothGattService) {
            super.onServiceAdded(i, bluetoothGattService);
            java.lang.StringBuilder sbP = e.a.c.a.a.p("onServiceAdded status: ", i, ", service: ");
            sbP.append(bluetoothGattService.getUuid());
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, sbP.toString());
            if (net.easyconn.ecsdk.ebt.EBTBLEService.access$1006(net.easyconn.ecsdk.ebt.EBTBLEService.this) <= 0) {
                return;
            }
            if (i != 0) {
                android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "onServiceAdded Adding Service failed..");
            } else {
                net.easyconn.ecsdk.ebt.EBTBLEService.this.gattServer.addService(net.easyconn.ecsdk.ebt.EBTBLEService.this.getECService());
            }
        }
    }

    public EBTBLEService(android.content.Context context) {
        super(context);
        this.bluetoothDevicesMap = new java.util.HashMap();
        this.mMacString = new java.lang.String();
        this.mServiceSize = 2;
        this.mBuffer = new byte[0];
        this.notifyStatus = false;
        this.handler = new android.os.Handler(context.getMainLooper());
        this.gattServerCallback = new net.easyconn.ecsdk.ebt.EBTBLEService.eccBluetoothGattServerCallback();
    }

    public static /* synthetic */ int access$1006(net.easyconn.ecsdk.ebt.EBTBLEService eBTBLEService) {
        int i = eBTBLEService.mServiceSize - 1;
        eBTBLEService.mServiceSize = i;
        return i;
    }

    private android.bluetooth.BluetoothGattService getDeviceInfoService() {
        android.bluetooth.BluetoothGattService bluetoothGattService = new android.bluetooth.BluetoothGattService(SERVICE_DEVICE_INFO, 0);
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_SERIAL, 2, 1));
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_MFN, 2, 1));
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_MNS, 2, 1));
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_FIRMWARE, 2, 1));
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_HARDWARE, 2, 1));
        bluetoothGattService.addCharacteristic(new android.bluetooth.BluetoothGattCharacteristic(SERVICE_DEVICE_INFO_SOFTWARE, 2, 1));
        return bluetoothGattService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public android.bluetooth.BluetoothGattService getECService() {
        android.bluetooth.BluetoothGattService bluetoothGattService = new android.bluetooth.BluetoothGattService(SERVICE_ECC, 0);
        android.bluetooth.BluetoothGattCharacteristic bluetoothGattCharacteristic = new android.bluetooth.BluetoothGattCharacteristic(CHARACTERISTIC_DATA, 28, 17);
        this.mDataCharacter = bluetoothGattCharacteristic;
        bluetoothGattCharacteristic.addDescriptor(new android.bluetooth.BluetoothGattDescriptor(net.easyconn.ecsdk.ebt.BleUuidUtils.fromShortValue(10498), 1));
        while (!bluetoothGattService.addCharacteristic(this.mDataCharacter)) {
        }
        return bluetoothGattService;
    }

    private int initService() {
        try {
            android.bluetooth.BluetoothManager bluetoothManager = (android.bluetooth.BluetoothManager) this.mContext.getSystemService("bluetooth");
            android.bluetooth.BluetoothAdapter adapter = bluetoothManager.getAdapter();
            if (adapter == null) {
                throw new java.lang.UnsupportedOperationException("Bluetooth is not available.");
            }
            if (!adapter.isEnabled()) {
                throw new java.lang.UnsupportedOperationException("Bluetooth is disabled.");
            }
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "isMultipleAdvertisementSupported:" + adapter.isMultipleAdvertisementSupported());
            this.bluetoothLeAdvertiser = adapter.getBluetoothLeAdvertiser();
            android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "bluetoothLeAdvertiser: " + this.bluetoothLeAdvertiser);
            if (this.bluetoothLeAdvertiser == null) {
                throw new java.lang.UnsupportedOperationException("Bluetooth LE Advertising not supported on this device.");
            }
            android.bluetooth.BluetoothGattServer bluetoothGattServerOpenGattServer = bluetoothManager.openGattServer(this.mContext, this.gattServerCallback);
            this.gattServer = bluetoothGattServerOpenGattServer;
            if (bluetoothGattServerOpenGattServer == null) {
                throw new java.lang.UnsupportedOperationException("gattServer is null, check Bluetooth is ON.");
            }
            this.mMacString = "DD0D30E53D1F";
            SERVICE_CHANNEL_DATA[0] = 1;
            bluetoothGattServerOpenGattServer.addService(getDeviceInfoService());
            this.mBLEIOHandle = new net.easyconn.ecsdk.ebt.EBTBLEService.BLEIOHandle();
            startAdvertising();
            return 0;
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private void startAdvertising() {
        this.handler.post(new java.lang.Runnable() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.1
            @Override // java.lang.Runnable
            public void run() {
                android.bluetooth.le.AdvertiseSettings advertiseSettingsBuild = new android.bluetooth.le.AdvertiseSettings.Builder().setTxPowerLevel(3).setConnectable(true).setTimeout(0).setAdvertiseMode(2).build();
                android.bluetooth.le.AdvertiseData advertiseDataBuild = new android.bluetooth.le.AdvertiseData.Builder().setIncludeTxPowerLevel(false).setIncludeDeviceName(true).addManufacturerData(0, new byte[]{-35, com.umeng.analytics.pro.bw.k, 48, -27, 61, 31}).addServiceUuid(new android.os.ParcelUuid(net.easyconn.ecsdk.ebt.EBTBLEService.SERVICE_CHANNEL)).build();
                android.bluetooth.le.AdvertiseData advertiseDataBuild2 = new android.bluetooth.le.AdvertiseData.Builder().build();
                android.util.Log.d(net.easyconn.ecsdk.ebt.EBTService.TAG, "advertiseData: " + advertiseDataBuild + ", scanResult: " + advertiseDataBuild2);
                net.easyconn.ecsdk.ebt.EBTBLEService.this.bluetoothLeAdvertiser.startAdvertising(advertiseSettingsBuild, advertiseDataBuild, advertiseDataBuild2, new android.bluetooth.le.AdvertiseCallback() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.1.1
                    @Override // android.bluetooth.le.AdvertiseCallback
                    public void onStartFailure(int i) {
                        super.onStartFailure(i);
                        android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "onStartFailure errorCode = " + i);
                    }

                    @Override // android.bluetooth.le.AdvertiseCallback
                    public void onStartSuccess(android.bluetooth.le.AdvertiseSettings advertiseSettings) {
                        super.onStartSuccess(advertiseSettings);
                        android.util.Log.e(net.easyconn.ecsdk.ebt.EBTService.TAG, "onStartSuccess ");
                    }
                });
            }
        });
    }

    private void stopAdvertising() {
        this.handler.post(new java.lang.Runnable() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (net.easyconn.ecsdk.ebt.EBTBLEService.this.bluetoothLeAdvertiser != null) {
                        net.easyconn.ecsdk.ebt.EBTBLEService.this.bluetoothLeAdvertiser.stopAdvertising(new android.bluetooth.le.AdvertiseCallback() { // from class: net.easyconn.ecsdk.ebt.EBTBLEService.2.1
                        });
                    }
                } catch (java.lang.IllegalStateException unused) {
                }
            }
        });
    }

    @Override // net.easyconn.ecsdk.ebt.EBTService
    public int startService(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, net.easyconn.ecsdk.IECCallback.IEBTServiceCallBack iEBTServiceCallBack, java.lang.Boolean bool) {
        this.mType = eCTransportType;
        if (bool.booleanValue() || initService() == 0) {
            return native_registerCallBack(iEBTServiceCallBack);
        }
        return -1;
    }

    @Override // net.easyconn.ecsdk.ebt.EBTService
    public void stopService() {
        stopAdvertising();
        net.easyconn.ecsdk.ECSDK.getInstance().unbindDirectTransportDevice(this.mType);
    }
}
