package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerApplicationLike extends com.tencent.tinker.entry.DefaultApplicationLike {
    public static final java.lang.String TAG = "Tinker.TinkerApplicationLike";
    public static com.tencent.tinker.entry.ApplicationLike tinkerPatchApplicationLike;

    public TinkerApplicationLike(android.app.Application application, int i, boolean z, long j, long j2, android.content.Intent intent) {
        super(application, i, z, j, j2, intent);
        setTinkerPatchApplicationLike(this);
    }

    public static com.tencent.tinker.entry.ApplicationLike getTinkerPatchApplicationLike() {
        return tinkerPatchApplicationLike;
    }

    public static void setTinkerPatchApplicationLike(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        tinkerPatchApplicationLike = applicationLike;
    }
}
