package d.i.a;

/* loaded from: classes.dex */
public abstract class a implements android.os.Parcelable {
    public final android.os.Parcelable a;
    public static final d.i.a.a b = new d.i.a.a.C0051a();
    public static final android.os.Parcelable.Creator<d.i.a.a> CREATOR = new d.i.a.a.b();

    /* renamed from: d.i.a.a$a, reason: collision with other inner class name */
    public static class C0051a extends d.i.a.a {
        public C0051a() {
            super((d.i.a.a.C0051a) null);
        }
    }

    public static class b implements android.os.Parcelable.ClassLoaderCreator<d.i.a.a> {
        @Override // android.os.Parcelable.Creator
        public java.lang.Object createFromParcel(android.os.Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return d.i.a.a.b;
            }
            throw new java.lang.IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public java.lang.Object[] newArray(int i) {
            return new d.i.a.a[i];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public d.i.a.a createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return d.i.a.a.b;
            }
            throw new java.lang.IllegalStateException("superState must be null");
        }
    }

    public a(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
        android.os.Parcelable parcelable = parcel.readParcelable(classLoader);
        this.a = parcelable == null ? b : parcelable;
    }

    public a(android.os.Parcelable parcelable) {
        if (parcelable == null) {
            throw new java.lang.IllegalArgumentException("superState must not be null");
        }
        this.a = parcelable == b ? null : parcelable;
    }

    public a(d.i.a.a.C0051a c0051a) {
        this.a = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
    }
}
