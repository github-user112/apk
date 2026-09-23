package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class StringDataSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.StringData> {
    public com.tencent.tinker.android.dex.Dex.Section patchedStringDataSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedStringDataTocSec;
    public com.tencent.tinker.android.dex.Dex.Section patchedStringIdSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedStringIdTocSec;

    public StringDataSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedStringDataTocSec = null;
        this.patchedStringIdTocSec = null;
        this.patchedStringDataSec = null;
        this.patchedStringIdSec = null;
        if (dex2 != null) {
            this.patchedStringDataTocSec = dex2.getTableOfContents().stringDatas;
            this.patchedStringIdTocSec = dex2.getTableOfContents().stringIds;
            this.patchedStringDataSec = dex2.openSection(this.patchedStringDataTocSec);
            this.patchedStringIdSec = dex2.openSection(this.patchedStringIdTocSec);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(com.tencent.tinker.android.dex.StringData stringData) {
        return stringData.byteCountInDex();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().stringDatas;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markStringIdDeleted(i);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.StringData nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return dexDataBuffer.readStringData();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i != i3) {
            sparseIndexMap.mapStringIds(i, i3);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(com.tencent.tinker.android.dex.StringData stringData) {
        int iWriteStringData = this.patchedStringDataSec.writeStringData(stringData);
        this.patchedStringIdSec.writeInt(iWriteStringData);
        this.patchedStringDataTocSec.size++;
        this.patchedStringIdTocSec.size++;
        return iWriteStringData;
    }
}
