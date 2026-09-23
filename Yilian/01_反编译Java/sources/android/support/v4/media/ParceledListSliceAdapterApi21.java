package android.support.v4.media;

/* loaded from: classes.dex */
public class ParceledListSliceAdapterApi21 {
    public static java.lang.reflect.Constructor sConstructor;

    static {
        try {
            sConstructor = java.lang.Class.forName("android.content.pm.ParceledListSlice").getConstructor(java.util.List.class);
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e2) {
            e2.printStackTrace();
        }
    }

    public static java.lang.Object newInstance(java.util.List<android.media.browse.MediaBrowser.MediaItem> list) {
        try {
            return sConstructor.newInstance(list);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
