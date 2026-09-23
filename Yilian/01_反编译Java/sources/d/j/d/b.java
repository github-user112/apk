package d.j.d;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class b implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<d.j.d.b> CREATOR = new d.j.d.b.a();
    public final int[] a;
    public final java.util.ArrayList<java.lang.String> b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f2049c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f2050d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2051e;

    /* renamed from: f, reason: collision with root package name */
    public final java.lang.String f2052f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2053g;
    public final int h;
    public final java.lang.CharSequence i;
    public final int j;
    public final java.lang.CharSequence k;
    public final java.util.ArrayList<java.lang.String> l;
    public final java.util.ArrayList<java.lang.String> m;
    public final boolean n;

    public class a implements android.os.Parcelable.Creator<d.j.d.b> {
        @Override // android.os.Parcelable.Creator
        public d.j.d.b createFromParcel(android.os.Parcel parcel) {
            return new d.j.d.b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d.j.d.b[] newArray(int i) {
            return new d.j.d.b[i];
        }
    }

    public b(android.os.Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.f2049c = parcel.createIntArray();
        this.f2050d = parcel.createIntArray();
        this.f2051e = parcel.readInt();
        this.f2052f = parcel.readString();
        this.f2053g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }

    public b(d.j.d.a aVar) {
        int size = aVar.a.size();
        this.a = new int[size * 5];
        if (!aVar.f2083g) {
            throw new java.lang.IllegalStateException("Not on back stack");
        }
        this.b = new java.util.ArrayList<>(size);
        this.f2049c = new int[size];
        this.f2050d = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            d.j.d.g0.a aVar2 = aVar.a.get(i);
            int i3 = i2 + 1;
            this.a[i2] = aVar2.a;
            java.util.ArrayList<java.lang.String> arrayList = this.b;
            androidx.fragment.app.Fragment fragment = aVar2.b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.a;
            int i4 = i3 + 1;
            iArr[i3] = aVar2.f2084c;
            int i5 = i4 + 1;
            iArr[i4] = aVar2.f2085d;
            int i6 = i5 + 1;
            iArr[i5] = aVar2.f2086e;
            iArr[i6] = aVar2.f2087f;
            this.f2049c[i] = aVar2.f2088g.ordinal();
            this.f2050d[i] = aVar2.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.f2051e = aVar.f2082f;
        this.f2052f = aVar.h;
        this.f2053g = aVar.s;
        this.h = aVar.i;
        this.i = aVar.j;
        this.j = aVar.k;
        this.k = aVar.l;
        this.l = aVar.m;
        this.m = aVar.n;
        this.n = aVar.o;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.f2049c);
        parcel.writeIntArray(this.f2050d);
        parcel.writeInt(this.f2051e);
        parcel.writeString(this.f2052f);
        parcel.writeInt(this.f2053g);
        parcel.writeInt(this.h);
        android.text.TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        android.text.TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }
}
