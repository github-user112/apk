package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public class AnnotationSetSectionPatchAlgorithm extends com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.AnnotationSet> {
    public com.tencent.tinker.android.dex.Dex.Section patchedAnnotationSetSec;
    public com.tencent.tinker.android.dex.TableOfContents.Section patchedAnnotationSetTocSec;

    public AnnotationSetSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.android.dex.Dex dex2, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        super(dexPatchFile, dex, sparseIndexMap);
        this.patchedAnnotationSetTocSec = null;
        this.patchedAnnotationSetSec = null;
        if (dex2 != null) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = dex2.getTableOfContents().annotationSets;
            this.patchedAnnotationSetTocSec = section;
            this.patchedAnnotationSetSec = dex2.openSection(section);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.AnnotationSet adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        return abstractIndexMap.adjust(annotationSet);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int getItemSize(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        return annotationSet.byteCountInDex();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex) {
        return dex.getTableOfContents().annotationSets;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
        sparseIndexMap.markAnnotationSetDeleted(i2);
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public com.tencent.tinker.android.dex.AnnotationSet nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer) {
        return dexDataBuffer.readAnnotationSet();
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
        if (i2 != i4) {
            sparseIndexMap.mapAnnotationSetOffset(i2, i4);
        }
    }

    @Override // com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm
    public int writePatchedItem(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        this.patchedAnnotationSetTocSec.size++;
        return this.patchedAnnotationSetSec.writeAnnotationSet(annotationSet);
    }
}
