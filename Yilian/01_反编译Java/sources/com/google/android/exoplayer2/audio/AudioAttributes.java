package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class AudioAttributes implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_ALLOWED_CAPTURE_POLICY = 3;
    public static final int FIELD_CONTENT_TYPE = 0;
    public static final int FIELD_FLAGS = 1;
    public static final int FIELD_USAGE = 2;
    public final int allowedCapturePolicy;
    public android.media.AudioAttributes audioAttributesV21;
    public final int contentType;
    public final int flags;
    public final int usage;
    public static final com.google.android.exoplayer2.audio.AudioAttributes DEFAULT = new com.google.android.exoplayer2.audio.AudioAttributes.Builder().build();
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.audio.AudioAttributes> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.g2.a
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.audio.AudioAttributes.a(bundle);
        }
    };

    public static final class Builder {
        public int contentType = 0;
        public int flags = 0;
        public int usage = 1;
        public int allowedCapturePolicy = 1;

        public com.google.android.exoplayer2.audio.AudioAttributes build() {
            return new com.google.android.exoplayer2.audio.AudioAttributes(this.contentType, this.flags, this.usage, this.allowedCapturePolicy);
        }

        public com.google.android.exoplayer2.audio.AudioAttributes.Builder setAllowedCapturePolicy(int i) {
            this.allowedCapturePolicy = i;
            return this;
        }

        public com.google.android.exoplayer2.audio.AudioAttributes.Builder setContentType(int i) {
            this.contentType = i;
            return this;
        }

        public com.google.android.exoplayer2.audio.AudioAttributes.Builder setFlags(int i) {
            this.flags = i;
            return this;
        }

        public com.google.android.exoplayer2.audio.AudioAttributes.Builder setUsage(int i) {
            this.usage = i;
            return this;
        }
    }

    public AudioAttributes(int i, int i2, int i3, int i4) {
        this.contentType = i;
        this.flags = i2;
        this.usage = i3;
        this.allowedCapturePolicy = i4;
    }

    public static /* synthetic */ com.google.android.exoplayer2.audio.AudioAttributes a(android.os.Bundle bundle) {
        com.google.android.exoplayer2.audio.AudioAttributes.Builder builder = new com.google.android.exoplayer2.audio.AudioAttributes.Builder();
        if (bundle.containsKey(keyForField(0))) {
            builder.setContentType(bundle.getInt(keyForField(0)));
        }
        if (bundle.containsKey(keyForField(1))) {
            builder.setFlags(bundle.getInt(keyForField(1)));
        }
        if (bundle.containsKey(keyForField(2))) {
            builder.setUsage(bundle.getInt(keyForField(2)));
        }
        if (bundle.containsKey(keyForField(3))) {
            builder.setAllowedCapturePolicy(bundle.getInt(keyForField(3)));
        }
        return builder.build();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.audio.AudioAttributes.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.audio.AudioAttributes audioAttributes = (com.google.android.exoplayer2.audio.AudioAttributes) obj;
        return this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage && this.allowedCapturePolicy == audioAttributes.allowedCapturePolicy;
    }

    public android.media.AudioAttributes getAudioAttributesV21() {
        if (this.audioAttributesV21 == null) {
            android.media.AudioAttributes.Builder usage = new android.media.AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage);
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29) {
                usage.setAllowedCapturePolicy(this.allowedCapturePolicy);
            }
            this.audioAttributesV21 = usage.build();
        }
        return this.audioAttributesV21;
    }

    public int hashCode() {
        return ((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putInt(keyForField(0), this.contentType);
        bundle.putInt(keyForField(1), this.flags);
        bundle.putInt(keyForField(2), this.usage);
        bundle.putInt(keyForField(3), this.allowedCapturePolicy);
        return bundle;
    }
}
