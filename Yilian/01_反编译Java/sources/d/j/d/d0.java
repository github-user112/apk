package d.j.d;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class d0 implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<d.j.d.d0> CREATOR = new d.j.d.d0.a();
    public final java.lang.String a;
    public final java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2068c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2069d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2070e;

    /* renamed from: f, reason: collision with root package name */
    public final java.lang.String f2071f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f2072g;
    public final boolean h;
    public final boolean i;
    public final android.os.Bundle j;
    public final boolean k;
    public final int l;
    public android.os.Bundle m;

    public class a implements android.os.Parcelable.Creator<d.j.d.d0> {
        @Override // android.os.Parcelable.Creator
        public d.j.d.d0 createFromParcel(android.os.Parcel parcel) {
            return new d.j.d.d0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d.j.d.d0[] newArray(int i) {
            return new d.j.d.d0[i];
        }
    }

    public d0(android.os.Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.f2068c = parcel.readInt() != 0;
        this.f2069d = parcel.readInt();
        this.f2070e = parcel.readInt();
        this.f2071f = parcel.readString();
        this.f2072g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }

    public d0(androidx.fragment.app.Fragment fragment) {
        this.a = fragment.getClass().getName();
        this.b = fragment.mWho;
        this.f2068c = fragment.mFromLayout;
        this.f2069d = fragment.mFragmentId;
        this.f2070e = fragment.mContainerId;
        this.f2071f = fragment.mTag;
        this.f2072g = fragment.mRetainInstance;
        this.h = fragment.mRemoving;
        this.i = fragment.mDetached;
        this.j = fragment.mArguments;
        this.k = fragment.mHidden;
        this.l = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.f2068c) {
            sb.append(" fromLayout");
        }
        if (this.f2070e != 0) {
            sb.append(" id=0x");
            sb.append(java.lang.Integer.toHexString(this.f2070e));
        }
        java.lang.String str = this.f2071f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2071f);
        }
        if (this.f2072g) {
            sb.append(" retainInstance");
        }
        if (this.h) {
            sb.append(" removing");
        }
        if (this.i) {
            sb.append(" detached");
        }
        if (this.k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.f2068c ? 1 : 0);
        parcel.writeInt(this.f2069d);
        parcel.writeInt(this.f2070e);
        parcel.writeString(this.f2071f);
        parcel.writeInt(this.f2072g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }
}
