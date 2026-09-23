package android.support.v4.media;

/* loaded from: classes.dex */
public class MediaBrowserCompatApi23 {

    public interface ItemCallback {
        void onError(java.lang.String str);

        void onItemLoaded(android.os.Parcel parcel);
    }

    public static class ItemCallbackProxy<T extends android.support.v4.media.MediaBrowserCompatApi23.ItemCallback> extends android.media.browse.MediaBrowser.ItemCallback {
        public final T mItemCallback;

        public ItemCallbackProxy(T t) {
            this.mItemCallback = t;
        }

        @Override // android.media.browse.MediaBrowser.ItemCallback
        public void onError(java.lang.String str) {
            this.mItemCallback.onError(str);
        }

        @Override // android.media.browse.MediaBrowser.ItemCallback
        public void onItemLoaded(android.media.browse.MediaBrowser.MediaItem mediaItem) {
            android.os.Parcel parcelObtain;
            T t;
            if (mediaItem == null) {
                t = this.mItemCallback;
                parcelObtain = null;
            } else {
                parcelObtain = android.os.Parcel.obtain();
                mediaItem.writeToParcel(parcelObtain, 0);
                t = this.mItemCallback;
            }
            t.onItemLoaded(parcelObtain);
        }
    }

    public static java.lang.Object createItemCallback(android.support.v4.media.MediaBrowserCompatApi23.ItemCallback itemCallback) {
        return new android.support.v4.media.MediaBrowserCompatApi23.ItemCallbackProxy(itemCallback);
    }

    public static void getItem(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        ((android.media.browse.MediaBrowser) obj).getItem(str, (android.media.browse.MediaBrowser.ItemCallback) obj2);
    }
}
