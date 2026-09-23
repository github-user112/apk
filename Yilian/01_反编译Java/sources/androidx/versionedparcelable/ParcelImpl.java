package androidx.versionedparcelable;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.versionedparcelable.ParcelImpl> CREATOR = new androidx.versionedparcelable.ParcelImpl.a();
    public final d.u.c a;

    public static class a implements android.os.Parcelable.Creator<androidx.versionedparcelable.ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        public androidx.versionedparcelable.ParcelImpl createFromParcel(android.os.Parcel parcel) {
            return new androidx.versionedparcelable.ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public androidx.versionedparcelable.ParcelImpl[] newArray(int i) {
            return new androidx.versionedparcelable.ParcelImpl[i];
        }
    }

    public ParcelImpl(android.os.Parcel parcel) {
        this.a = new d.u.b(parcel).k();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        new d.u.b(parcel).o(this.a);
    }
}
