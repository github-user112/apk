package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class FieldIdSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.FieldId> {
    public com.tencent.tinker.android.dex.Dex.Section patchedFieldIdSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedFieldIdTocSec;

    public FieldIdSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedFieldIdTocSec = null;
        this.patchedFieldIdSec = null;
        if (dex2 != null) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = dex2.getTableOfContents().fieldIds;
            this.patchedFieldIdTocSec = section;
            this.patchedFieldIdSec = dex2.openSection(section);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.FieldId adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, com.tencent.tinker.android.dex.FieldId fieldId) {
        return abstractIndexMap.adjust(fieldId);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(com.tencent.tinker.android.dex.FieldId fieldId) {
        return fieldId.byteCountInDex();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().fieldIds;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markFieldIdDeleted(i);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.FieldId nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return dexDataBuffer.readFieldId();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i != i3) {
            sparseIndexMap.mapFieldIds(i, i3);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(com.tencent.tinker.android.dex.FieldId fieldId) {
        this.patchedFieldIdTocSec.size++;
        return this.patchedFieldIdSec.writeFieldId(fieldId);
    }
}
