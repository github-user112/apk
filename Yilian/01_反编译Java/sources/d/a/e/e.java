package d.a.e;

@android.annotation.SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class e implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<d.a.e.e> CREATOR = new d.a.e.e.a();
    public final android.content.IntentSender a;
    public final android.content.Intent b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1624c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1625d;

    public class a implements android.os.Parcelable.Creator<d.a.e.e> {
        @Override // android.os.Parcelable.Creator
        public d.a.e.e createFromParcel(android.os.Parcel parcel) {
            return new d.a.e.e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public d.a.e.e[] newArray(int i) {
            return new d.a.e.e[i];
        }
    }

    public e(android.content.IntentSender intentSender, android.content.Intent intent, int i, int i2) {
        this.a = intentSender;
        this.b = intent;
        this.f1624c = i;
        this.f1625d = i2;
    }

    public e(android.os.Parcel parcel) {
        this.a = (android.content.IntentSender) parcel.readParcelable(android.content.IntentSender.class.getClassLoader());
        this.b = (android.content.Intent) parcel.readParcelable(android.content.Intent.class.getClassLoader());
        this.f1624c = parcel.readInt();
        this.f1625d = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeInt(this.f1624c);
        parcel.writeInt(this.f1625d);
    }
}
