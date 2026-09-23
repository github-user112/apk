package com.tencent.tinker.commons.dexpatcher.util;

/* loaded from: classes.dex */
public class SparseIndexMap extends com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap {
    public final com.tencent.tinker.android.utils.SparseIntArray stringIdsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray typeIdsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray protoIdsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray fieldIdsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray methodIdsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray typeListOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray annotationOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray annotationSetOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray annotationSetRefListOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray annotationsDirectoryOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray staticValuesOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray classDataOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray debugInfoItemOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseIntArray codeOffsetsMap = new com.tencent.tinker.android.utils.SparseIntArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedStringIds = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedTypeIds = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedProtoIds = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedFieldIds = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedMethodIds = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedTypeListOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedAnnotationOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedAnnotationSetOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedAnnotationSetRefListOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedAnnotationsDirectoryOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedStaticValuesOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedClassDataOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedDebugInfoItemOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();
    public final com.tencent.tinker.android.utils.SparseBoolArray deletedCodeOffsets = new com.tencent.tinker.android.utils.SparseBoolArray();

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustAnnotationOffset(int i) {
        int iIndexOfKey = this.annotationOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.annotationOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedAnnotationOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustAnnotationSetOffset(int i) {
        int iIndexOfKey = this.annotationSetOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.annotationSetOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedAnnotationSetOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustAnnotationSetRefListOffset(int i) {
        int iIndexOfKey = this.annotationSetRefListOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.annotationSetRefListOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedAnnotationSetRefListOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustAnnotationsDirectoryOffset(int i) {
        int iIndexOfKey = this.annotationsDirectoryOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.annotationsDirectoryOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedAnnotationsDirectoryOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustClassDataOffset(int i) {
        int iIndexOfKey = this.classDataOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.classDataOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedClassDataOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustCodeOffset(int i) {
        int iIndexOfKey = this.codeOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.codeOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedCodeOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustDebugInfoItemOffset(int i) {
        int iIndexOfKey = this.debugInfoItemOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.debugInfoItemOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedDebugInfoItemOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustFieldIdIndex(int i) {
        int iIndexOfKey = this.fieldIdsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.fieldIdsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedFieldIds.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustMethodIdIndex(int i) {
        int iIndexOfKey = this.methodIdsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.methodIdsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedMethodIds.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustProtoIdIndex(int i) {
        int iIndexOfKey = this.protoIdsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.protoIdsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedProtoIds.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustStaticValuesOffset(int i) {
        int iIndexOfKey = this.staticValuesOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.staticValuesOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedStaticValuesOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustStringIndex(int i) {
        int iIndexOfKey = this.stringIdsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.stringIdsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedStringIds.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustTypeIdIndex(int i) {
        int iIndexOfKey = this.typeIdsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.typeIdsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedTypeIds.containsKey(i)) {
            return i;
        }
        return -1;
    }

    @Override // com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap
    public int adjustTypeListOffset(int i) {
        int iIndexOfKey = this.typeListOffsetsMap.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return this.typeListOffsetsMap.valueAt(iIndexOfKey);
        }
        if (i < 0 || !this.deletedTypeListOffsets.containsKey(i)) {
            return i;
        }
        return -1;
    }

    public void mapAnnotationOffset(int i, int i2) {
        this.annotationOffsetsMap.put(i, i2);
    }

    public void mapAnnotationSetOffset(int i, int i2) {
        this.annotationSetOffsetsMap.put(i, i2);
    }

    public void mapAnnotationSetRefListOffset(int i, int i2) {
        this.annotationSetRefListOffsetsMap.put(i, i2);
    }

    public void mapAnnotationsDirectoryOffset(int i, int i2) {
        this.annotationsDirectoryOffsetsMap.put(i, i2);
    }

    public void mapClassDataOffset(int i, int i2) {
        this.classDataOffsetsMap.put(i, i2);
    }

    public void mapCodeOffset(int i, int i2) {
        this.codeOffsetsMap.put(i, i2);
    }

    public void mapDebugInfoItemOffset(int i, int i2) {
        this.debugInfoItemOffsetsMap.put(i, i2);
    }

    public void mapFieldIds(int i, int i2) {
        this.fieldIdsMap.put(i, i2);
    }

    public void mapMethodIds(int i, int i2) {
        this.methodIdsMap.put(i, i2);
    }

    public void mapProtoIds(int i, int i2) {
        this.protoIdsMap.put(i, i2);
    }

    public void mapStaticValuesOffset(int i, int i2) {
        this.staticValuesOffsetsMap.put(i, i2);
    }

    public void mapStringIds(int i, int i2) {
        this.stringIdsMap.put(i, i2);
    }

    public void mapTypeIds(int i, int i2) {
        this.typeIdsMap.put(i, i2);
    }

    public void mapTypeListOffset(int i, int i2) {
        this.typeListOffsetsMap.put(i, i2);
    }

    public void markAnnotationDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedAnnotationOffsets.put(i, true);
    }

    public void markAnnotationSetDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedAnnotationSetOffsets.put(i, true);
    }

    public void markAnnotationSetRefListDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedAnnotationSetRefListOffsets.put(i, true);
    }

    public void markAnnotationsDirectoryDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedAnnotationsDirectoryOffsets.put(i, true);
    }

    public void markClassDataDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedClassDataOffsets.put(i, true);
    }

    public void markCodeDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedCodeOffsets.put(i, true);
    }

    public void markDebugInfoItemDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedDebugInfoItemOffsets.put(i, true);
    }

    public void markFieldIdDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedFieldIds.put(i, true);
    }

    public void markMethodIdDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedMethodIds.put(i, true);
    }

    public void markProtoIdDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedProtoIds.put(i, true);
    }

    public void markStaticValuesDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedStaticValuesOffsets.put(i, true);
    }

    public void markStringIdDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedStringIds.put(i, true);
    }

    public void markTypeIdDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedTypeIds.put(i, true);
    }

    public void markTypeListDeleted(int i) {
        if (i < 0) {
            return;
        }
        this.deletedTypeListOffsets.put(i, true);
    }
}
