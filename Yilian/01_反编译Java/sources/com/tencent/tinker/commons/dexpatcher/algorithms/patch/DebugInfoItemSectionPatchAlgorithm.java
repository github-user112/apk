package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class DebugInfoItemSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.DebugInfoItem> {
    public com.tencent.tinker.android.dex.Dex.Section patchedDebugInfoItemSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedDebugInfoItemTocSec;

    public DebugInfoItemSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedDebugInfoItemTocSec = null;
        this.patchedDebugInfoItemSec = null;
        if (dex2 != null) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = dex2.getTableOfContents().debugInfos;
            this.patchedDebugInfoItemTocSec = section;
            this.patchedDebugInfoItemSec = dex2.openSection(section);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.DebugInfoItem adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        return abstractIndexMap.adjust(debugInfoItem);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        return debugInfoItem.byteCountInDex();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().debugInfos;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markDebugInfoItemDeleted(i2);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.DebugInfoItem nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return dexDataBuffer.readDebugInfoItem();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i2 != i4) {
            sparseIndexMap.mapDebugInfoItemOffset(i2, i4);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        this.patchedDebugInfoItemTocSec.size++;
        return this.patchedDebugInfoItemSec.writeDebugInfoItem(debugInfoItem);
    }
}
