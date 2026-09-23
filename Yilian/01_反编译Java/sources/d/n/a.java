package d.n;

/* loaded from: classes.dex */
public final class a {
    public d.n.b a;

    public a(android.media.session.MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = new d.n.c(remoteUserInfo);
    }

    public a(java.lang.String str, int i, int i2) {
        this.a = android.os.Build.VERSION.SDK_INT >= 28 ? new d.n.c(str, i, i2) : new d.n.d(str, i, i2);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d.n.a) {
            return this.a.equals(((d.n.a) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
