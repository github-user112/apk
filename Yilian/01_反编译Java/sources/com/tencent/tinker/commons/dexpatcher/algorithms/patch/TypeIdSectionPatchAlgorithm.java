package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class TypeIdSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<java.lang.Integer> {
    public com.tencent.tinker.android.dex.Dex.Section patchedTypeIdSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedTypeIdTocSec;

    public TypeIdSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedTypeIdTocSec = null;
        this.patchedTypeIdSec = null;
        if (dex2 != null) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = dex2.getTableOfContents().typeIds;
            this.patchedTypeIdTocSec = section;
            this.patchedTypeIdSec = dex2.openSection(section);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public java.lang.Integer adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, java.lang.Integer num) {
        return java.lang.Integer.valueOf(abstractIndexMap.adjustStringIndex(num.intValue()));
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(java.lang.Integer num) {
        return 4;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().typeIds;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markTypeIdDeleted(i);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public java.lang.Integer nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return java.lang.Integer.valueOf(dexDataBuffer.readInt());
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i != i3) {
            sparseIndexMap.mapTypeIds(i, i3);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(java.lang.Integer num) {
        int iPosition = this.patchedTypeIdSec.position();
        this.patchedTypeIdSec.writeInt(num.intValue());
        this.patchedTypeIdTocSec.size++;
        return iPosition;
    }
}
