package e.c.a.b.u;

/* loaded from: classes.dex */
public class a extends d.i.a.a {
    public static final android.os.Parcelable.Creator<e.c.a.b.u.a> CREATOR = new e.c.a.b.u.a.C0067a();

    /* renamed from: c, reason: collision with root package name */
    public final d.e.h<java.lang.String, android.os.Bundle> f2663c;

    /* renamed from: e.c.a.b.u.a$a, reason: collision with other inner class name */
    public static class C0067a implements android.os.Parcelable.ClassLoaderCreator<e.c.a.b.u.a> {
        @Override // android.os.Parcelable.Creator
        public java.lang.Object createFromParcel(android.os.Parcel parcel) {
            return new e.c.a.b.u.a(parcel, null, null);
        }

        @Override // android.os.Parcelable.Creator
        public java.lang.Object[] newArray(int i) {
            return new e.c.a.b.u.a[i];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public e.c.a.b.u.a createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            return new e.c.a.b.u.a(parcel, classLoader, null);
        }
    }

    public a(android.os.Parcel parcel, java.lang.ClassLoader classLoader, e.c.a.b.u.a.C0067a c0067a) {
        super(parcel, classLoader);
        int i = parcel.readInt();
        java.lang.String[] strArr = new java.lang.String[i];
        parcel.readStringArray(strArr);
        android.os.Bundle[] bundleArr = new android.os.Bundle[i];
        parcel.readTypedArray(bundleArr, android.os.Bundle.CREATOR);
        this.f2663c = new d.e.h<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.f2663c.put(strArr[i2], bundleArr[i2]);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("ExtendableSavedState{");
        sbO.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sbO.append(" states=");
        sbO.append(this.f2663c);
        sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        return sbO.toString();
    }

    @Override // d.i.a.a, android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        int i2 = this.f2663c.f1912c;
        parcel.writeInt(i2);
        java.lang.String[] strArr = new java.lang.String[i2];
        android.os.Bundle[] bundleArr = new android.os.Bundle[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            strArr[i3] = this.f2663c.h(i3);
            bundleArr[i3] = this.f2663c.k(i3);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }
}
