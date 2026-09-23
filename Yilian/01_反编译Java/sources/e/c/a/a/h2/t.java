package e.c.a.a.h2;

/* loaded from: classes.dex */
public final /* synthetic */ class t {
    public static boolean $default$playClearSamplesWithoutKeys(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        return false;
    }

    public static void a(com.google.android.exoplayer2.drm.DrmSession drmSession, com.google.android.exoplayer2.drm.DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.acquire(null);
        }
        if (drmSession != null) {
            drmSession.release(null);
        }
    }
}
