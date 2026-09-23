package d.a.e;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class a implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<d.a.e.a> CREATOR = new d.a.e.a.C0029a();
    public final int a;
    public final android.content.Intent b;

    /* renamed from: d.a.e.a$a, reason: collision with other inner class name */
    public class C0029a implements android.os.Parcelable.Creator<d.a.e.a> {
        @Override // android.os.Parcelable.Creator
        public d.a.e.a createFromParcel(android.os.Parcel parcel) {
            return new d.a.e.a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d.a.e.a[] newArray(int i) {
            return new d.a.e.a[i];
        }
    }

    public a(int i, android.content.Intent intent) {
        this.a = i;
        this.b = intent;
    }

    public a(android.os.Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt() == 0 ? null : (android.content.Intent) android.content.Intent.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("ActivityResult{resultCode=");
        int i = this.a;
        sbO.append(i != -1 ? i != 0 ? java.lang.String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK");
        sbO.append(", data=");
        sbO.append(this.b);
        sbO.append('}');
        return sbO.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b == null ? 0 : 1);
        android.content.Intent intent = this.b;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
