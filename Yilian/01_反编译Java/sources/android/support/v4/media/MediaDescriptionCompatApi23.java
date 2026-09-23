package android.support.v4.media;

/* loaded from: classes.dex */
public class MediaDescriptionCompatApi23 {

    public static class Builder {
        public static void setMediaUri(java.lang.Object obj, android.net.Uri uri) {
            ((android.media.MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    public static android.net.Uri getMediaUri(java.lang.Object obj) {
        return ((android.media.MediaDescription) obj).getMediaUri();
    }
}
