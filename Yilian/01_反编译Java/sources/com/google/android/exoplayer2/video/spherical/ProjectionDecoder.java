package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class ProjectionDecoder {
    public static final int MAX_COORDINATE_COUNT = 10000;
    public static final int MAX_TRIANGLE_INDICES = 128000;
    public static final int MAX_VERTEX_COUNT = 32000;
    public static final int TYPE_DFL8 = 1684433976;
    public static final int TYPE_MESH = 1835365224;
    public static final int TYPE_MSHP = 1836279920;
    public static final int TYPE_PROJ = 1886547818;
    public static final int TYPE_RAW = 1918990112;
    public static final int TYPE_YTMP = 2037673328;

    public static com.google.android.exoplayer2.video.spherical.Projection decode(byte[] bArr, int i) {
        java.util.ArrayList<com.google.android.exoplayer2.video.spherical.Projection.Mesh> proj;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr);
        try {
            proj = isProj(parsableByteArray) ? parseProj(parsableByteArray) : parseMshp(parsableByteArray);
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            proj = null;
        }
        if (proj == null) {
            return null;
        }
        int size = proj.size();
        if (size == 1) {
            return new com.google.android.exoplayer2.video.spherical.Projection(proj.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new com.google.android.exoplayer2.video.spherical.Projection(proj.get(0), proj.get(1), i);
    }

    public static int decodeZigZag(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    public static boolean isProj(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        int i = parsableByteArray.readInt();
        parsableByteArray.setPosition(0);
        return i == 1886547818;
    }

    public static com.google.android.exoplayer2.video.spherical.Projection.Mesh parseMesh(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i = parsableByteArray.readInt();
        if (i > 10000) {
            return null;
        }
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = parsableByteArray.readFloat();
        }
        int i3 = parsableByteArray.readInt();
        if (i3 > 32000) {
            return null;
        }
        double d2 = 2.0d;
        double dLog = java.lang.Math.log(2.0d);
        double d3 = i;
        java.lang.Double.isNaN(d3);
        int iCeil = (int) java.lang.Math.ceil(java.lang.Math.log(d3 * 2.0d) / dLog);
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(parsableByteArray.getData());
        int i4 = 8;
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        float[] fArr2 = new float[i3 * 5];
        int i5 = 5;
        int[] iArr = new int[5];
        int i6 = 0;
        int i7 = 0;
        while (i6 < i3) {
            int i8 = 0;
            while (i8 < i5) {
                int iDecodeZigZag = decodeZigZag(parsableBitArray.readBits(iCeil)) + iArr[i8];
                if (iDecodeZigZag >= i || iDecodeZigZag < 0) {
                    return null;
                }
                fArr2[i7] = fArr[iDecodeZigZag];
                iArr[i8] = iDecodeZigZag;
                i8++;
                i7++;
                i5 = 5;
            }
            i6++;
            i5 = 5;
        }
        parsableBitArray.setPosition((parsableBitArray.getPosition() + 7) & (-8));
        int i9 = 32;
        int bits = parsableBitArray.readBits(32);
        com.google.android.exoplayer2.video.spherical.Projection.SubMesh[] subMeshArr = new com.google.android.exoplayer2.video.spherical.Projection.SubMesh[bits];
        int i10 = 0;
        while (i10 < bits) {
            int bits2 = parsableBitArray.readBits(i4);
            int bits3 = parsableBitArray.readBits(i4);
            int bits4 = parsableBitArray.readBits(i9);
            if (bits4 > 128000) {
                return null;
            }
            double d4 = i3;
            java.lang.Double.isNaN(d4);
            int iCeil2 = (int) java.lang.Math.ceil(java.lang.Math.log(d4 * d2) / dLog);
            float[] fArr3 = new float[bits4 * 3];
            float[] fArr4 = new float[bits4 * 2];
            int iDecodeZigZag2 = 0;
            for (int i11 = 0; i11 < bits4; i11++) {
                iDecodeZigZag2 = decodeZigZag(parsableBitArray.readBits(iCeil2)) + iDecodeZigZag2;
                if (iDecodeZigZag2 < 0 || iDecodeZigZag2 >= i3) {
                    return null;
                }
                int i12 = i11 * 3;
                int i13 = iDecodeZigZag2 * 5;
                fArr3[i12] = fArr2[i13];
                fArr3[i12 + 1] = fArr2[i13 + 1];
                fArr3[i12 + 2] = fArr2[i13 + 2];
                int i14 = i11 * 2;
                fArr4[i14] = fArr2[i13 + 3];
                fArr4[i14 + 1] = fArr2[i13 + 4];
            }
            subMeshArr[i10] = new com.google.android.exoplayer2.video.spherical.Projection.SubMesh(bits2, fArr3, fArr4, bits3);
            i10++;
            i9 = 32;
            d2 = 2.0d;
            i4 = 8;
        }
        return new com.google.android.exoplayer2.video.spherical.Projection.Mesh(subMeshArr);
    }

    public static java.util.ArrayList<com.google.android.exoplayer2.video.spherical.Projection.Mesh> parseMshp(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        if (parsableByteArray.readUnsignedByte() != 0) {
            return null;
        }
        parsableByteArray.skipBytes(7);
        int i = parsableByteArray.readInt();
        if (i == 1684433976) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2 = new com.google.android.exoplayer2.util.ParsableByteArray();
            java.util.zip.Inflater inflater = new java.util.zip.Inflater(true);
            try {
                if (!com.google.android.exoplayer2.util.Util.inflate(parsableByteArray, parsableByteArray2, inflater)) {
                    return null;
                }
                parsableByteArray = parsableByteArray2;
            } finally {
                inflater.end();
            }
        } else if (i != 1918990112) {
            return null;
        }
        return parseRawMshpData(parsableByteArray);
    }

    public static java.util.ArrayList<com.google.android.exoplayer2.video.spherical.Projection.Mesh> parseProj(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i;
        parsableByteArray.skipBytes(8);
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (position < iLimit && (i = parsableByteArray.readInt() + position) > position && i <= iLimit) {
            int i2 = parsableByteArray.readInt();
            if (i2 == 2037673328 || i2 == 1836279920) {
                parsableByteArray.setLimit(i);
                return parseMshp(parsableByteArray);
            }
            parsableByteArray.setPosition(i);
            position = i;
        }
        return null;
    }

    public static java.util.ArrayList<com.google.android.exoplayer2.video.spherical.Projection.Mesh> parseRawMshpData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.util.ArrayList<com.google.android.exoplayer2.video.spherical.Projection.Mesh> arrayList = new java.util.ArrayList<>();
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (position < iLimit) {
            int i = parsableByteArray.readInt() + position;
            if (i <= position || i > iLimit) {
                return null;
            }
            if (parsableByteArray.readInt() == 1835365224) {
                com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh = parseMesh(parsableByteArray);
                if (mesh == null) {
                    return null;
                }
                arrayList.add(mesh);
            }
            parsableByteArray.setPosition(i);
            position = i;
        }
        return arrayList;
    }
}
