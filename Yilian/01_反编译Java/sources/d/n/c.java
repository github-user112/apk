package d.n;

/* loaded from: classes.dex */
public final class c implements d.n.b {
    public final android.media.session.MediaSessionManager.RemoteUserInfo a;

    public c(android.media.session.MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = remoteUserInfo;
    }

    public c(java.lang.String str, int i, int i2) {
        this.a = new android.media.session.MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d.n.c) {
            return this.a.equals(((d.n.c) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return d.b.k.r.Q(this.a);
    }
}
