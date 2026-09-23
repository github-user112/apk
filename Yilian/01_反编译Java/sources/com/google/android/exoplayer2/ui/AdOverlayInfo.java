package com.google.android.exoplayer2.ui;

/* loaded from: classes.dex */
public final class AdOverlayInfo {
    public static final int PURPOSE_CLOSE_AD = 1;
    public static final int PURPOSE_CONTROLS = 0;
    public static final int PURPOSE_NOT_VISIBLE = 3;
    public static final int PURPOSE_OTHER = 2;
    public final int purpose;
    public final java.lang.String reasonDetail;
    public final android.view.View view;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Purpose {
    }

    public AdOverlayInfo(android.view.View view, int i) {
        this(view, i, null);
    }

    public AdOverlayInfo(android.view.View view, int i, java.lang.String str) {
        this.view = view;
        this.purpose = i;
        this.reasonDetail = str;
    }
}
