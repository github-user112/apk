package com.tencent.tinker.lib.filepatch;

/* loaded from: classes.dex */
public class BsFilePatch extends com.tencent.tinker.lib.filepatch.AbstractFilePatch {
    @Override // com.tencent.tinker.lib.filepatch.AbstractFilePatch
    public int patchFast(java.io.InputStream inputStream, java.io.InputStream inputStream2, java.io.File file) {
        return com.tencent.tinker.bsdiff.BSPatch.patchFast(inputStream, inputStream2, file);
    }
}
