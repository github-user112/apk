package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class ProtoIdSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.ProtoId> {
    public com.tencent.tinker.android.dex.Dex.Section patchedProtoIdSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedProtoIdTocSec;

    public ProtoIdSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedProtoIdTocSec = null;
        this.patchedProtoIdSec = null;
        if (dex2 != null) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = dex2.getTableOfContents().protoIds;
            this.patchedProtoIdTocSec = section;
            this.patchedProtoIdSec = dex2.openSection(section);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.ProtoId adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, com.tencent.tinker.android.dex.ProtoId protoId) {
        return abstractIndexMap.adjust(protoId);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(com.tencent.tinker.android.dex.ProtoId protoId) {
        return protoId.byteCountInDex();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().protoIds;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markProtoIdDeleted(i);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.ProtoId nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return dexDataBuffer.readProtoId();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i != i3) {
            sparseIndexMap.mapProtoIds(i, i3);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(com.tencent.tinker.android.dex.ProtoId protoId) {
        this.patchedProtoIdTocSec.size++;
        return this.patchedProtoIdSec.writeProtoId(protoId);
    }
}
