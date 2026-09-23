package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class BundleListRetriever extends android.os.Binder {
    public static final int REPLY_BREAK = 2;
    public static final int REPLY_CONTINUE = 1;
    public static final int REPLY_END_OF_LIST = 0;
    public static final int SUGGESTED_MAX_IPC_SIZE;
    public final e.c.b.b.s<android.os.Bundle> list;

    static {
        SUGGESTED_MAX_IPC_SIZE = com.google.android.exoplayer2.util.Util.SDK_INT >= 30 ? c.a.a.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public BundleListRetriever(java.util.List<android.os.Bundle> list) {
        this.list = e.c.b.b.s.l(list);
    }

    public static e.c.b.b.s<android.os.Bundle> getList(android.os.IBinder iBinder) {
        int i;
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        int i2 = 1;
        int i3 = 0;
        while (i2 != 0) {
            android.os.Parcel parcelObtain = android.os.Parcel.obtain();
            android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
            try {
                parcelObtain.writeInt(i3);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i = parcelObtain2.readInt();
                        if (i == 1) {
                            aVarJ.b((android.os.Bundle) com.google.android.exoplayer2.util.Assertions.checkNotNull(parcelObtain2.readBundle()));
                            i3++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i2 = i;
                } catch (android.os.RemoteException e2) {
                    throw new java.lang.RuntimeException(e2);
                }
            } catch (java.lang.Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        return aVarJ.c();
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) {
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.list.size();
        int i3 = parcel.readInt();
        while (i3 < size && parcel2.dataSize() < SUGGESTED_MAX_IPC_SIZE) {
            parcel2.writeInt(1);
            parcel2.writeBundle(this.list.get(i3));
            i3++;
        }
        parcel2.writeInt(i3 < size ? 2 : 0);
        return true;
    }
}
