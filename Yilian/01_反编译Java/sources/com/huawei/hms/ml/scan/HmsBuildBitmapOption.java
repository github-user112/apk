package com.huawei.hms.ml.scan;

/* loaded from: classes.dex */
public class HmsBuildBitmapOption {
    public static final java.lang.String TYPE_BUILD_BITMAP_BACKCOLOR = "BitmapBackColor";
    public static final java.lang.String TYPE_BUILD_BITMAP_COLOR = "BitmapColor";
    public static final java.lang.String TYPE_BUILD_BITMAP_CONTENT = "BitmapContent";
    public static final java.lang.String TYPE_BUILD_BITMAP_FOTMAT = "BitmapFormat";
    public static final java.lang.String TYPE_BUILD_BITMAP_HEIGHT = "BitmapHeight";
    public static final java.lang.String TYPE_BUILD_BITMAP_MARGIN = "BitmapMargin";
    public static final java.lang.String TYPE_BUILD_BITMAP_WIDTH = "BitmapWidth";
    public final com.huawei.hms.ml.scan.HmsBuildBitmapOption.ErrorCorrectionLevel QRErrorCorrection;
    public final int bimapColor;
    public final int bitmapBackgroundColor;
    public final android.graphics.Bitmap logoBitmap;
    public final int margin;

    public static class Creator {
        public android.graphics.Bitmap logobitmap;
        public int margin = 1;
        public int bimapBackgroundColor = -1;
        public int bimapColor = -1;
        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.ErrorCorrectionLevel QRErrorCorrection = com.huawei.hms.ml.scan.HmsBuildBitmapOption.ErrorCorrectionLevel.L;

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption create() {
            return new com.huawei.hms.ml.scan.HmsBuildBitmapOption(this.margin, this.bimapColor, this.bimapBackgroundColor, this.QRErrorCorrection, this.logobitmap);
        }

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator setBitmapBackgroundColor(int i) {
            this.bimapBackgroundColor = i;
            return this;
        }

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator setBitmapColor(int i) {
            this.bimapColor = i;
            return this;
        }

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator setBitmapMargin(int i) {
            this.margin = i;
            return this;
        }

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator setQRErrorCorrection(com.huawei.hms.ml.scan.HmsBuildBitmapOption.ErrorCorrectionLevel errorCorrectionLevel) {
            this.QRErrorCorrection = errorCorrectionLevel;
            return this;
        }

        public com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator setQRLogoBitmap(android.graphics.Bitmap bitmap) {
            this.logobitmap = bitmap;
            return this;
        }
    }

    public enum ErrorCorrectionLevel {
        L("L"),
        M("M"),
        Q("Q"),
        H("H");

        public final java.lang.String value;

        ErrorCorrectionLevel(java.lang.String str) {
            this.value = str;
        }
    }

    public HmsBuildBitmapOption(int i, int i2, int i3, com.huawei.hms.ml.scan.HmsBuildBitmapOption.ErrorCorrectionLevel errorCorrectionLevel, android.graphics.Bitmap bitmap) {
        this.margin = i;
        this.bitmapBackgroundColor = i3;
        this.bimapColor = i2;
        this.QRErrorCorrection = errorCorrectionLevel;
        this.logoBitmap = bitmap;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START, "margin:");
        sbQ.append(this.margin);
        sbQ.append(";");
        sbQ.append("bitmapBackgroundColor:");
        sbQ.append(this.bitmapBackgroundColor);
        sbQ.append(";");
        sbQ.append("bimapColor:");
        return e.a.c.a.a.i(sbQ, this.bimapColor, com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
    }
}
