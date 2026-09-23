package com.huawei.hms.hmsscankit.api;

/* loaded from: classes.dex */
public interface IRemoteViewDelegate extends android.os.IInterface {

    public static class Default implements com.huawei.hms.hmsscankit.api.IRemoteViewDelegate {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public boolean getLightStatus() {
            return false;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public com.huawei.hms.feature.dynamic.IObjectWrapper getView() {
            return null;
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onCreate(android.os.Bundle bundle) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onDestroy() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onPause() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onResume() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onStart() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void onStop() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void pauseContinuouslyScan() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void resumeContinuouslyScan() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void setOnErrorCallback(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void setOnLightVisbleCallBack(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void setOnResultCallback(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback) {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void turnOffLight() {
        }

        @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
        public void turnOnLight() {
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.huawei.hms.hmsscankit.api.IRemoteViewDelegate {
        public static final java.lang.String DESCRIPTOR = "com.huawei.hms.hmsscankit.api.IRemoteViewDelegate";
        public static final int TRANSACTION_decodeWithBitmap = 12;
        public static final int TRANSACTION_getLightStatus = 14;
        public static final int TRANSACTION_getView = 1;
        public static final int TRANSACTION_onCreate = 2;
        public static final int TRANSACTION_onDestroy = 3;
        public static final int TRANSACTION_onPause = 4;
        public static final int TRANSACTION_onResume = 5;
        public static final int TRANSACTION_onStart = 6;
        public static final int TRANSACTION_onStop = 7;
        public static final int TRANSACTION_pauseContinuouslyScan = 16;
        public static final int TRANSACTION_resumeContinuouslyScan = 15;
        public static final int TRANSACTION_setOnClickListener = 9;
        public static final int TRANSACTION_setOnErrorCallback = 17;
        public static final int TRANSACTION_setOnLightVisbleCallBack = 13;
        public static final int TRANSACTION_setOnResultCallback = 8;
        public static final int TRANSACTION_turnOffLight = 11;
        public static final int TRANSACTION_turnOnLight = 10;

        public static class Proxy implements com.huawei.hms.hmsscankit.api.IRemoteViewDelegate {
            public static com.huawei.hms.hmsscankit.api.IRemoteViewDelegate sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    parcelObtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hmsScanArrDecodeWithBitmap = (com.huawei.hms.ml.scan.HmsScan[]) parcelObtain2.createTypedArray(com.huawei.hms.ml.scan.HmsScan.CREATOR);
                    } else {
                        hmsScanArrDecodeWithBitmap = com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().decodeWithBitmap(iObjectWrapper, iObjectWrapper2);
                    }
                    return hmsScanArrDecodeWithBitmap;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR;
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public boolean getLightStatus() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() != null) {
                        return com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().getLightStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public com.huawei.hms.feature.dynamic.IObjectWrapper getView() {
                com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapperAsInterface;
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iObjectWrapperAsInterface = com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcelObtain2.readStrongBinder());
                    } else {
                        iObjectWrapperAsInterface = com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().getView();
                    }
                    return iObjectWrapperAsInterface;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onCreate(android.os.Bundle bundle) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onCreate(bundle);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onDestroy() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onDestroy();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onPause() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onPause();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onResume() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onResume();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onStart() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onStart();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void onStop() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().onStop();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void pauseContinuouslyScan() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().pauseContinuouslyScan();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void resumeContinuouslyScan() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().resumeContinuouslyScan();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().setOnClickListener(iObjectWrapper);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void setOnErrorCallback(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnErrorCallback != null ? iOnErrorCallback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().setOnErrorCallback(iOnErrorCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void setOnLightVisbleCallBack(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnLightCallback != null ? iOnLightCallback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().setOnLightVisbleCallBack(iOnLightCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void setOnResultCallback(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback) {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnResultCallback != null ? iOnResultCallback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().setOnResultCallback(iOnResultCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void turnOffLight() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().turnOffLight();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.hms.hmsscankit.api.IRemoteViewDelegate
            public void turnOnLight() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.getDefaultImpl().turnOnLight();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteViewDelegate asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.huawei.hms.hmsscankit.api.IRemoteViewDelegate)) ? new com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.Proxy(iBinder) : (com.huawei.hms.hmsscankit.api.IRemoteViewDelegate) iInterfaceQueryLocalInterface;
        }

        public static com.huawei.hms.hmsscankit.api.IRemoteViewDelegate getDefaultImpl() {
            return com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate) {
            if (com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.Proxy.sDefaultImpl != null || iRemoteViewDelegate == null) {
                return false;
            }
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate.Stub.Proxy.sDefaultImpl = iRemoteViewDelegate;
            return true;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    com.huawei.hms.feature.dynamic.IObjectWrapper view = getView();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(view != null ? view.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCreate(parcel.readInt() != 0 ? (android.os.Bundle) android.os.Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDestroy();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPause();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onResume();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStart();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStop();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnResultCallback(com.huawei.hms.hmsscankit.api.IOnResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOnLight();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    turnOffLight();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap = decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), com.huawei.hms.feature.dynamic.IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(hmsScanArrDecodeWithBitmap, 1);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnLightVisbleCallBack(com.huawei.hms.hmsscankit.api.IOnLightCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean lightStatus = getLightStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(lightStatus ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    resumeContinuouslyScan();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    pauseContinuouslyScan();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setOnErrorCallback(com.huawei.hms.hmsscankit.api.IOnErrorCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2);

    boolean getLightStatus();

    com.huawei.hms.feature.dynamic.IObjectWrapper getView();

    void onCreate(android.os.Bundle bundle);

    void onDestroy();

    void onPause();

    void onResume();

    void onStart();

    void onStop();

    void pauseContinuouslyScan();

    void resumeContinuouslyScan();

    void setOnClickListener(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper);

    void setOnErrorCallback(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback);

    void setOnLightVisbleCallBack(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback);

    void setOnResultCallback(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback);

    void turnOffLight();

    void turnOnLight();
}
