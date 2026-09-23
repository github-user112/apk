package com.tencent.tinker.commons.dexpatcher.struct;

/* loaded from: classes.dex */
public final class DexPatchFile {
    public static final short CURRENT_VERSION = 2;
    public static final byte[] MAGIC = {68, 88, 68, 73, 70, 70};
    public final com.tencent.tinker.android.dex.io.DexDataBuffer buffer;
    public int firstChunkOffset;
    public byte[] oldDexSignature;
    public int patchedAnnotationSectionOffset;
    public int patchedAnnotationSetRefListSectionOffset;
    public int patchedAnnotationSetSectionOffset;
    public int patchedAnnotationsDirectorySectionOffset;
    public int patchedClassDataSectionOffset;
    public int patchedClassDefSectionOffset;
    public int patchedCodeSectionOffset;
    public int patchedDebugInfoSectionOffset;
    public int patchedDexSize;
    public int patchedEncodedArraySectionOffset;
    public int patchedFieldIdSectionOffset;
    public int patchedMapListSectionOffset;
    public int patchedMethodIdSectionOffset;
    public int patchedProtoIdSectionOffset;
    public int patchedStringDataSectionOffset;
    public int patchedStringIdSectionOffset;
    public int patchedTypeIdSectionOffset;
    public int patchedTypeListSectionOffset;
    public short version;

    public DexPatchFile(java.io.File file) {
        this.buffer = new com.tencent.tinker.android.dex.io.DexDataBuffer(java.nio.ByteBuffer.wrap(com.tencent.tinker.android.dex.util.FileUtils.readFile(file)));
        init();
    }

    public DexPatchFile(java.io.InputStream inputStream) {
        this.buffer = new com.tencent.tinker.android.dex.io.DexDataBuffer(java.nio.ByteBuffer.wrap(com.tencent.tinker.android.dex.util.FileUtils.readStream(inputStream)));
        init();
    }

    private void init() {
        byte[] byteArray = this.buffer.readByteArray(MAGIC.length);
        if (com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(byteArray, MAGIC) != 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("bad dex patch file magic: ");
            sbO.append(java.util.Arrays.toString(byteArray));
            throw new java.lang.IllegalStateException(sbO.toString());
        }
        short s = this.buffer.readShort();
        this.version = s;
        if (com.tencent.tinker.android.dex.util.CompareUtils.uCompare(s, (short) 2) != 0) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("bad dex patch file version: ");
            sbO2.append((int) this.version);
            sbO2.append(", expected: ");
            sbO2.append(2);
            throw new java.lang.IllegalStateException(sbO2.toString());
        }
        this.patchedDexSize = this.buffer.readInt();
        this.firstChunkOffset = this.buffer.readInt();
        this.patchedStringIdSectionOffset = this.buffer.readInt();
        this.patchedTypeIdSectionOffset = this.buffer.readInt();
        this.patchedProtoIdSectionOffset = this.buffer.readInt();
        this.patchedFieldIdSectionOffset = this.buffer.readInt();
        this.patchedMethodIdSectionOffset = this.buffer.readInt();
        this.patchedClassDefSectionOffset = this.buffer.readInt();
        this.patchedMapListSectionOffset = this.buffer.readInt();
        this.patchedTypeListSectionOffset = this.buffer.readInt();
        this.patchedAnnotationSetRefListSectionOffset = this.buffer.readInt();
        this.patchedAnnotationSetSectionOffset = this.buffer.readInt();
        this.patchedClassDataSectionOffset = this.buffer.readInt();
        this.patchedCodeSectionOffset = this.buffer.readInt();
        this.patchedStringDataSectionOffset = this.buffer.readInt();
        this.patchedDebugInfoSectionOffset = this.buffer.readInt();
        this.patchedAnnotationSectionOffset = this.buffer.readInt();
        this.patchedEncodedArraySectionOffset = this.buffer.readInt();
        this.patchedAnnotationsDirectorySectionOffset = this.buffer.readInt();
        this.oldDexSignature = this.buffer.readByteArray(20);
        this.buffer.position(this.firstChunkOffset);
    }

    public com.tencent.tinker.android.dex.io.DexDataBuffer getBuffer() {
        return this.buffer;
    }

    public byte[] getOldDexSignature() {
        return this.oldDexSignature;
    }

    public int getPatchedAnnotationSectionOffset() {
        return this.patchedAnnotationSectionOffset;
    }

    public int getPatchedAnnotationSetRefListSectionOffset() {
        return this.patchedAnnotationSetRefListSectionOffset;
    }

    public int getPatchedAnnotationSetSectionOffset() {
        return this.patchedAnnotationSetSectionOffset;
    }

    public int getPatchedAnnotationsDirectorySectionOffset() {
        return this.patchedAnnotationsDirectorySectionOffset;
    }

    public int getPatchedClassDataSectionOffset() {
        return this.patchedClassDataSectionOffset;
    }

    public int getPatchedClassDefSectionOffset() {
        return this.patchedClassDefSectionOffset;
    }

    public int getPatchedCodeSectionOffset() {
        return this.patchedCodeSectionOffset;
    }

    public int getPatchedDebugInfoSectionOffset() {
        return this.patchedDebugInfoSectionOffset;
    }

    public int getPatchedDexSize() {
        return this.patchedDexSize;
    }

    public int getPatchedEncodedArraySectionOffset() {
        return this.patchedEncodedArraySectionOffset;
    }

    public int getPatchedFieldIdSectionOffset() {
        return this.patchedFieldIdSectionOffset;
    }

    public int getPatchedMapListSectionOffset() {
        return this.patchedMapListSectionOffset;
    }

    public int getPatchedMethodIdSectionOffset() {
        return this.patchedMethodIdSectionOffset;
    }

    public int getPatchedProtoIdSectionOffset() {
        return this.patchedProtoIdSectionOffset;
    }

    public int getPatchedStringDataSectionOffset() {
        return this.patchedStringDataSectionOffset;
    }

    public int getPatchedStringIdSectionOffset() {
        return this.patchedStringIdSectionOffset;
    }

    public int getPatchedTypeIdSectionOffset() {
        return this.patchedTypeIdSectionOffset;
    }

    public int getPatchedTypeListSectionOffset() {
        return this.patchedTypeListSectionOffset;
    }

    public short getVersion() {
        return this.version;
    }
}
