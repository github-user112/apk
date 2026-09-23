package d.u;

/* loaded from: classes.dex */
public class b extends d.u.a {

    /* renamed from: d, reason: collision with root package name */
    public final android.util.SparseIntArray f2335d;

    /* renamed from: e, reason: collision with root package name */
    public final android.os.Parcel f2336e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2337f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2338g;
    public final java.lang.String h;
    public int i;
    public int j;
    public int k;

    public b(android.os.Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new d.e.a(), new d.e.a(), new d.e.a());
    }

    public b(android.os.Parcel parcel, int i, int i2, java.lang.String str, d.e.a<java.lang.String, java.lang.reflect.Method> aVar, d.e.a<java.lang.String, java.lang.reflect.Method> aVar2, d.e.a<java.lang.String, java.lang.Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f2335d = new android.util.SparseIntArray();
        this.i = -1;
        this.j = 0;
        this.k = -1;
        this.f2336e = parcel;
        this.f2337f = i;
        this.f2338g = i2;
        this.j = i;
        this.h = str;
    }

    @Override // d.u.a
    public void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.f2335d.get(i);
            int iDataPosition = this.f2336e.dataPosition();
            this.f2336e.setDataPosition(i2);
            this.f2336e.writeInt(iDataPosition - i2);
            this.f2336e.setDataPosition(iDataPosition);
        }
    }

    @Override // d.u.a
    public d.u.a b() {
        android.os.Parcel parcel = this.f2336e;
        int iDataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f2337f) {
            i = this.f2338g;
        }
        return new d.u.b(parcel, iDataPosition, i, e.a.c.a.a.j(new java.lang.StringBuilder(), this.h, "  "), this.a, this.b, this.f2334c);
    }

    @Override // d.u.a
    public boolean h(int i) {
        while (this.j < this.f2338g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (java.lang.String.valueOf(i2).compareTo(java.lang.String.valueOf(i)) > 0) {
                return false;
            }
            this.f2336e.setDataPosition(this.j);
            int i3 = this.f2336e.readInt();
            this.k = this.f2336e.readInt();
            this.j += i3;
        }
        return this.k == i;
    }

    @Override // d.u.a
    public void l(int i) {
        a();
        this.i = i;
        this.f2335d.put(i, this.f2336e.dataPosition());
        this.f2336e.writeInt(0);
        this.f2336e.writeInt(i);
    }
}
