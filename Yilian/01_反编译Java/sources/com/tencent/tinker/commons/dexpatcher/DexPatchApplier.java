package com.tencent.tinker.commons.dexpatcher;

/* loaded from: classes.dex */
public class DexPatchApplier {
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.Annotation> annotationSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.AnnotationSetRefList> annotationSetRefListSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.AnnotationSet> annotationSetSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.AnnotationsDirectory> annotationsDirectorySectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.ClassData> classDataSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.ClassDef> classDefSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.Code> codeSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.DebugInfoItem> debugInfoSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.EncodedValue> encodedArraySectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.FieldId> fieldIdSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.MethodId> methodIdSectionPatchAlg;
    public final com.tencent.tinker.android.dex.Dex oldDex;
    public final com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap oldToPatchedIndexMap;
    public final com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile patchFile;
    public final com.tencent.tinker.android.dex.Dex patchedDex;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.ProtoId> protoIdSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.StringData> stringDataSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<java.lang.Integer> typeIdSectionPatchAlg;
    public com.tencent.tinker.commons.dexpatcher.algorithms.patch.DexSectionPatchAlgorithm<com.tencent.tinker.android.dex.TypeList> typeListSectionPatchAlg;

    public DexPatchApplier(com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile) {
        this.oldDex = dex;
        this.patchFile = dexPatchFile;
        this.patchedDex = new com.tencent.tinker.android.dex.Dex(dexPatchFile.getPatchedDexSize());
        this.oldToPatchedIndexMap = new com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap();
    }

    public DexPatchApplier(java.io.File file, java.io.File file2) {
        this(new com.tencent.tinker.android.dex.Dex(file), new com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile(file2));
    }

    public DexPatchApplier(java.io.InputStream inputStream, java.io.InputStream inputStream2) {
        this(new com.tencent.tinker.android.dex.Dex(inputStream), new com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile(inputStream2));
    }

    public void executeAndSaveTo(java.io.File file) throws java.lang.Throwable {
        java.io.BufferedOutputStream bufferedOutputStream = null;
        try {
            java.io.BufferedOutputStream bufferedOutputStream2 = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file));
            try {
                executeAndSaveTo(bufferedOutputStream2);
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedOutputStream2);
            } catch (java.lang.Throwable th) {
                th = th;
                bufferedOutputStream = bufferedOutputStream2;
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(bufferedOutputStream);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public void executeAndSaveTo(java.io.OutputStream outputStream) throws java.security.NoSuchAlgorithmException, java.io.IOException {
        byte[] bArrComputeSignature = this.oldDex.computeSignature(false);
        if (bArrComputeSignature == null) {
            throw new java.io.IOException("failed to compute old dex's signature.");
        }
        com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile = this.patchFile;
        if (dexPatchFile == null) {
            throw new java.lang.IllegalArgumentException("patch file is null.");
        }
        byte[] oldDexSignature = dexPatchFile.getOldDexSignature();
        if (com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(bArrComputeSignature, oldDexSignature) != 0) {
            throw new java.io.IOException(java.lang.String.format("old dex signature mismatch! expected: %s, actual: %s", java.util.Arrays.toString(bArrComputeSignature), java.util.Arrays.toString(oldDexSignature)));
        }
        com.tencent.tinker.android.dex.TableOfContents tableOfContents = this.patchedDex.getTableOfContents();
        com.tencent.tinker.android.dex.TableOfContents.Section section = tableOfContents.header;
        section.off = 0;
        section.size = 1;
        tableOfContents.mapList.size = 1;
        tableOfContents.stringIds.off = this.patchFile.getPatchedStringIdSectionOffset();
        tableOfContents.typeIds.off = this.patchFile.getPatchedTypeIdSectionOffset();
        tableOfContents.typeLists.off = this.patchFile.getPatchedTypeListSectionOffset();
        tableOfContents.protoIds.off = this.patchFile.getPatchedProtoIdSectionOffset();
        tableOfContents.fieldIds.off = this.patchFile.getPatchedFieldIdSectionOffset();
        tableOfContents.methodIds.off = this.patchFile.getPatchedMethodIdSectionOffset();
        tableOfContents.classDefs.off = this.patchFile.getPatchedClassDefSectionOffset();
        tableOfContents.mapList.off = this.patchFile.getPatchedMapListSectionOffset();
        tableOfContents.stringDatas.off = this.patchFile.getPatchedStringDataSectionOffset();
        tableOfContents.annotations.off = this.patchFile.getPatchedAnnotationSectionOffset();
        tableOfContents.annotationSets.off = this.patchFile.getPatchedAnnotationSetSectionOffset();
        tableOfContents.annotationSetRefLists.off = this.patchFile.getPatchedAnnotationSetRefListSectionOffset();
        tableOfContents.annotationsDirectories.off = this.patchFile.getPatchedAnnotationsDirectorySectionOffset();
        tableOfContents.encodedArrays.off = this.patchFile.getPatchedEncodedArraySectionOffset();
        tableOfContents.debugInfos.off = this.patchFile.getPatchedDebugInfoSectionOffset();
        tableOfContents.codes.off = this.patchFile.getPatchedCodeSectionOffset();
        tableOfContents.classDatas.off = this.patchFile.getPatchedClassDataSectionOffset();
        tableOfContents.fileSize = this.patchFile.getPatchedDexSize();
        java.util.Arrays.sort(tableOfContents.sections);
        tableOfContents.computeSizesFromOffsets();
        this.stringDataSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.StringDataSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.typeIdSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.TypeIdSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.protoIdSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.ProtoIdSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.fieldIdSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.FieldIdSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.methodIdSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.MethodIdSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.classDefSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.ClassDefSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.typeListSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.TypeListSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.annotationSetRefListSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.AnnotationSetRefListSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.annotationSetSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.AnnotationSetSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.classDataSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.ClassDataSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.codeSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.CodeSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.debugInfoSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.DebugInfoItemSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.annotationSectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.AnnotationSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.encodedArraySectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.StaticValueSectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.annotationsDirectorySectionPatchAlg = new com.tencent.tinker.commons.dexpatcher.algorithms.patch.AnnotationsDirectorySectionPatchAlgorithm(this.patchFile, this.oldDex, this.patchedDex, this.oldToPatchedIndexMap);
        this.stringDataSectionPatchAlg.execute();
        this.typeIdSectionPatchAlg.execute();
        this.typeListSectionPatchAlg.execute();
        this.protoIdSectionPatchAlg.execute();
        this.fieldIdSectionPatchAlg.execute();
        this.methodIdSectionPatchAlg.execute();
        this.annotationSectionPatchAlg.execute();
        this.annotationSetSectionPatchAlg.execute();
        this.annotationSetRefListSectionPatchAlg.execute();
        this.annotationsDirectorySectionPatchAlg.execute();
        this.debugInfoSectionPatchAlg.execute();
        this.codeSectionPatchAlg.execute();
        this.classDataSectionPatchAlg.execute();
        this.encodedArraySectionPatchAlg.execute();
        this.classDefSectionPatchAlg.execute();
        tableOfContents.writeHeader(this.patchedDex.openSection(tableOfContents.header.off));
        tableOfContents.writeMap(this.patchedDex.openSection(tableOfContents.mapList.off));
        this.patchedDex.writeHashes();
        this.patchedDex.writeTo(outputStream);
    }
}
