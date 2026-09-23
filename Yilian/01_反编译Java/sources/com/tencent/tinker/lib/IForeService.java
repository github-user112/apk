package com.tencent.tinker.lib;

/* loaded from: classes.dex */
public interface IForeService extends android.os.IInterface {

    public static class Default implements com.tencent.tinker.lib.IForeService {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // com.tencent.tinker.lib.IForeService
        public void startme() {
        }
    }

    public static abstract class Stub extends android.os.Binder implements com.tencent.tinker.lib.IForeService {
        public static final java.lang.String DESCRIPTOR = "com.tencent.tinker.lib.IForeService";
        public static final int TRANSACTION_startme = 1;

        public static class Proxy implements com.tencent.tinker.lib.IForeService {
            public static com.tencent.tinker.lib.IForeService sDefaultImpl;
            public android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return com.tencent.tinker.lib.IForeService.Stub.DESCRIPTOR;
            }

            @Override // com.tencent.tinker.lib.IForeService
            public void startme() {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(com.tencent.tinker.lib.IForeService.Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || com.tencent.tinker.lib.IForeService.Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        com.tencent.tinker.lib.IForeService.Stub.getDefaultImpl().startme();
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

        public static com.tencent.tinker.lib.IForeService asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.tencent.tinker.lib.IForeService)) ? new com.tencent.tinker.lib.IForeService.Stub.Proxy(iBinder) : (com.tencent.tinker.lib.IForeService) iInterfaceQueryLocalInterface;
        }

        public static com.tencent.tinker.lib.IForeService getDefaultImpl() {
            return com.tencent.tinker.lib.IForeService.Stub.Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(com.tencent.tinker.lib.IForeService iForeService) {
            if (com.tencent.tinker.lib.IForeService.Stub.Proxy.sDefaultImpl != null) {
                throw new java.lang.IllegalStateException("setDefaultImpl() called twice");
            }
            if (iForeService == null) {
                return false;
            }
            com.tencent.tinker.lib.IForeService.Stub.Proxy.sDefaultImpl = iForeService;
            return true;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            startme();
            parcel2.writeNoException();
            return true;
        }
    }

    void startme();
}
