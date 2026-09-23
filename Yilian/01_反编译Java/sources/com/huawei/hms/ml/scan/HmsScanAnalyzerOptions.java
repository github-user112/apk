package com.huawei.hms.ml.scan;

/* loaded from: classes.dex */
public class HmsScanAnalyzerOptions {
    public final int mode;
    public final boolean photoMode;

    public static class Creator {
        public int type = 0;
        public boolean photoMode = false;

        public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions create() {
            return new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions(this.type, this.photoMode);
        }

        public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator setHmsScanTypes(int i, int... iArr) {
            int iA = com.huawei.hms.scankit.util.b.a(i);
            this.type = iA;
            if (iArr != null && iArr.length > 0) {
                this.type = com.huawei.hms.scankit.util.b.b(iA);
                for (int i2 : iArr) {
                    this.type = com.huawei.hms.scankit.util.b.b(i2) | this.type;
                }
            }
            return this;
        }

        public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator setPhotoMode(boolean z) {
            this.photoMode = z;
            return this;
        }
    }

    public HmsScanAnalyzerOptions(int i, boolean z) {
        this.mode = i;
        this.photoMode = z;
    }

    public boolean equals(java.lang.Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
