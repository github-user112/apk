package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final com.google.android.exoplayer2.video.spherical.Projection.Mesh leftMesh;
    public final com.google.android.exoplayer2.video.spherical.Projection.Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    public static final class Mesh {
        public final com.google.android.exoplayer2.video.spherical.Projection.SubMesh[] subMeshes;

        public Mesh(com.google.android.exoplayer2.video.spherical.Projection.SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public com.google.android.exoplayer2.video.spherical.Projection.SubMesh getSubMesh(int i) {
            return this.subMeshes[i];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i, float[] fArr, float[] fArr2, int i2) {
            this.textureId = i;
            com.google.android.exoplayer2.util.Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i2;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh, int i) {
        this(mesh, mesh, i);
    }

    public Projection(com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh, com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh2, int i) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i;
        this.singleMesh = mesh == mesh2;
    }

    public static com.google.android.exoplayer2.video.spherical.Projection createEquirectangular(float f2, int i, int i2, float f3, float f4, int i3) {
        int i4;
        float f5;
        int i5;
        int i6;
        int i7;
        float[] fArr;
        int i8 = i;
        int i9 = i2;
        com.google.android.exoplayer2.util.Assertions.checkArgument(f2 > 0.0f);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i8 >= 1);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i9 >= 1);
        com.google.android.exoplayer2.util.Assertions.checkArgument(f3 > 0.0f && f3 <= 180.0f);
        com.google.android.exoplayer2.util.Assertions.checkArgument(f4 > 0.0f && f4 <= 360.0f);
        float radians = (float) java.lang.Math.toRadians(f3);
        float radians2 = (float) java.lang.Math.toRadians(f4);
        float f6 = radians / i8;
        float f7 = radians2 / i9;
        int i10 = i9 + 1;
        int i11 = ((i10 * 2) + 2) * i8;
        float[] fArr2 = new float[i11 * 3];
        float[] fArr3 = new float[i11 * 2];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i8) {
            float f8 = radians / 2.0f;
            float f9 = (i12 * f6) - f8;
            int i15 = i12 + 1;
            float f10 = (i15 * f6) - f8;
            int i16 = 0;
            while (i16 < i10) {
                float f11 = f9;
                int i17 = i15;
                int i18 = 0;
                while (i18 < 2) {
                    if (i18 == 0) {
                        f5 = f11;
                        i4 = i10;
                    } else {
                        i4 = i10;
                        f5 = f10;
                    }
                    float f12 = i16 * f7;
                    float f13 = f7;
                    int i19 = i13 + 1;
                    int i20 = i16;
                    double d2 = f2;
                    float f14 = f6;
                    int i21 = i18;
                    double d3 = (f12 + 3.1415927f) - (radians2 / 2.0f);
                    double dSin = java.lang.Math.sin(d3);
                    java.lang.Double.isNaN(d2);
                    double d4 = f5;
                    float[] fArr4 = fArr3;
                    float f15 = f10;
                    fArr2[i13] = -((float) (java.lang.Math.cos(d4) * dSin * d2));
                    int i22 = i19 + 1;
                    double dSin2 = java.lang.Math.sin(d4);
                    java.lang.Double.isNaN(d2);
                    int i23 = i12;
                    fArr2[i19] = (float) (dSin2 * d2);
                    int i24 = i22 + 1;
                    double dCos = java.lang.Math.cos(d3);
                    java.lang.Double.isNaN(d2);
                    fArr2[i22] = (float) (java.lang.Math.cos(d4) * dCos * d2);
                    int i25 = i14 + 1;
                    fArr4[i14] = f12 / radians2;
                    int i26 = i25 + 1;
                    fArr4[i25] = ((i23 + i21) * f14) / radians;
                    if (i20 == 0 && i21 == 0) {
                        i5 = i2;
                        i6 = i20;
                        i7 = i21;
                    } else {
                        i5 = i2;
                        i6 = i20;
                        i7 = i21;
                        if (i6 != i5 || i7 != 1) {
                            fArr = fArr4;
                        }
                        i14 = i26;
                        i13 = i24;
                        i18 = i7 + 1;
                        i9 = i5;
                        i16 = i6;
                        fArr3 = fArr;
                        i12 = i23;
                        i10 = i4;
                        f7 = f13;
                        f6 = f14;
                        f10 = f15;
                    }
                    java.lang.System.arraycopy(fArr2, i24 - 3, fArr2, i24, 3);
                    i24 += 3;
                    fArr = fArr4;
                    java.lang.System.arraycopy(fArr, i26 - 2, fArr, i26, 2);
                    i26 += 2;
                    i14 = i26;
                    i13 = i24;
                    i18 = i7 + 1;
                    i9 = i5;
                    i16 = i6;
                    fArr3 = fArr;
                    i12 = i23;
                    i10 = i4;
                    f7 = f13;
                    f6 = f14;
                    f10 = f15;
                }
                float f16 = f6;
                int i27 = i16;
                int i28 = i9;
                int i29 = i27 + 1;
                f9 = f11;
                i15 = i17;
                i10 = i10;
                f7 = f7;
                f6 = f16;
                f10 = f10;
                i9 = i28;
                i16 = i29;
            }
            i8 = i;
            i12 = i15;
        }
        return new com.google.android.exoplayer2.video.spherical.Projection(new com.google.android.exoplayer2.video.spherical.Projection.Mesh(new com.google.android.exoplayer2.video.spherical.Projection.SubMesh(0, fArr2, fArr3, 1)), i3);
    }

    public static com.google.android.exoplayer2.video.spherical.Projection createEquirectangular(int i) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i);
    }
}
