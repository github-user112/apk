package d.j.d;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class a0 implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<d.j.d.a0> CREATOR = new d.j.d.a0.a();
    public java.util.ArrayList<d.j.d.d0> a;
    public java.util.ArrayList<java.lang.String> b;

    /* renamed from: c, reason: collision with root package name */
    public d.j.d.b[] f2044c;

    /* renamed from: d, reason: collision with root package name */
    public int f2045d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f2046e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f2047f;

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<android.os.Bundle> f2048g;
    public java.util.ArrayList<d.j.d.y.k> h;

    public class a implements android.os.Parcelable.Creator<d.j.d.a0> {
        @Override // android.os.Parcelable.Creator
        public d.j.d.a0 createFromParcel(android.os.Parcel parcel) {
            return new d.j.d.a0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d.j.d.a0[] newArray(int i) {
            return new d.j.d.a0[i];
        }
    }

    public a0() {
        this.f2046e = null;
        this.f2047f = new java.util.ArrayList<>();
        this.f2048g = new java.util.ArrayList<>();
    }

    public a0(android.os.Parcel parcel) {
        this.f2046e = null;
        this.f2047f = new java.util.ArrayList<>();
        this.f2048g = new java.util.ArrayList<>();
        this.a = parcel.createTypedArrayList(d.j.d.d0.CREATOR);
        this.b = parcel.createStringArrayList();
        this.f2044c = (d.j.d.b[]) parcel.createTypedArray(d.j.d.b.CREATOR);
        this.f2045d = parcel.readInt();
        this.f2046e = parcel.readString();
        this.f2047f = parcel.createStringArrayList();
        this.f2048g = parcel.createTypedArrayList(android.os.Bundle.CREATOR);
        this.h = parcel.createTypedArrayList(d.j.d.y.k.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeTypedList(this.a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.f2044c, i);
        parcel.writeInt(this.f2045d);
        parcel.writeString(this.f2046e);
        parcel.writeStringList(this.f2047f);
        parcel.writeTypedList(this.f2048g);
        parcel.writeTypedList(this.h);
    }
}
