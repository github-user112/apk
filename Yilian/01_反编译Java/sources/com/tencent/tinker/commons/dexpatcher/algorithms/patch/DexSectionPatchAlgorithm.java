package com.tencent.tinker.commons.dexpatcher.algorithms.patch;

/* loaded from: classes.dex */
public abstract class DexSectionPatchAlgorithm<T extends java.lang.Comparable<T>> {
    public final com.tencent.tinker.android.dex.Dex oldDex;
    public final com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap oldToPatchedIndexMap;
    public final com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile patchFile;

    public DexSectionPatchAlgorithm(com.tencent.tinker.commons.dexpatcher.struct.DexPatchFile dexPatchFile, com.tencent.tinker.android.dex.Dex dex, com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap) {
        this.patchFile = dexPatchFile;
        this.oldDex = dex;
        this.oldToPatchedIndexMap = sparseIndexMap;
    }

    private void doFullPatch(com.tencent.tinker.android.dex.Dex.Section section, int i, int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int length2 = iArr2.length;
        int length3 = iArr3.length;
        int i2 = (i + length2) - length;
        char c2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i7 >= i && i6 >= i2) {
                break;
            }
            if (i5 < length2 && iArr2[i5] == i6) {
                writePatchedItem(nextItem(this.patchFile.getBuffer()));
                i5++;
            } else if (i4 >= length3 || iArr3[i4] != i6) {
                if (java.util.Arrays.binarySearch(iArr, i7) >= 0) {
                    markDeletedIndexOrOffset(this.oldToPatchedIndexMap, i7, getItemOffsetOrIndex(i7, nextItem(section)));
                    i7++;
                    i3++;
                } else if (java.util.Arrays.binarySearch(iArr3, i7) >= 0) {
                    markDeletedIndexOrOffset(this.oldToPatchedIndexMap, i7, getItemOffsetOrIndex(i7, nextItem(section)));
                    i7++;
                } else if (i7 < i) {
                    java.lang.Comparable comparableAdjustItem = adjustItem(this.oldToPatchedIndexMap, nextItem(section));
                    int i8 = i4;
                    int i9 = i7;
                    updateIndexOrOffset(this.oldToPatchedIndexMap, i9, getItemOffsetOrIndex(i7, comparableAdjustItem), i6, writePatchedItem(comparableAdjustItem));
                    i7++;
                    i6++;
                    i3 = i3;
                    i4 = i8;
                    i5 = i5;
                }
                c2 = 0;
            } else {
                writePatchedItem(nextItem(this.patchFile.getBuffer()));
                i4++;
            }
            i6++;
        }
        if (i5 == length2 && i3 == length && i4 == length3) {
            return;
        }
        java.lang.Object[] objArr = new java.lang.Object[6];
        objArr[c2] = java.lang.Integer.valueOf(i5);
        objArr[1] = java.lang.Integer.valueOf(length2);
        objArr[2] = java.lang.Integer.valueOf(i3);
        objArr[3] = java.lang.Integer.valueOf(length);
        objArr[4] = java.lang.Integer.valueOf(i4);
        objArr[5] = java.lang.Integer.valueOf(length3);
        throw new java.lang.IllegalStateException(java.lang.String.format("bad patch operation sequence. addCounter: %d, addCount: %d, delCounter: %d, delCount: %d, replaceCounter: %d, replaceCount:%d", objArr));
    }

    private int getItemOffsetOrIndex(int i, T t) {
        return t instanceof com.tencent.tinker.android.dex.TableOfContents.Section.Item ? ((com.tencent.tinker.android.dex.TableOfContents.Section.Item) t).off : i;
    }

    private int[] readDeltaIndiciesOrOffsets(int i) {
        int[] iArr = new int[i];
        int sleb128 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            sleb128 += this.patchFile.getBuffer().readSleb128();
            iArr[i2] = sleb128;
        }
        return iArr;
    }

    public T adjustItem(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap, T t) {
        return t;
    }

    public void execute() {
        com.tencent.tinker.android.dex.Dex.Section section;
        int i;
        int[] deltaIndiciesOrOffsets = readDeltaIndiciesOrOffsets(this.patchFile.getBuffer().readUleb128());
        int[] deltaIndiciesOrOffsets2 = readDeltaIndiciesOrOffsets(this.patchFile.getBuffer().readUleb128());
        int[] deltaIndiciesOrOffsets3 = readDeltaIndiciesOrOffsets(this.patchFile.getBuffer().readUleb128());
        com.tencent.tinker.android.dex.TableOfContents.Section tocSection = getTocSection(this.oldDex);
        if (tocSection.exists()) {
            com.tencent.tinker.android.dex.Dex.Section sectionOpenSection = this.oldDex.openSection(tocSection);
            i = tocSection.size;
            section = sectionOpenSection;
        } else {
            section = null;
            i = 0;
        }
        doFullPatch(section, i, deltaIndiciesOrOffsets, deltaIndiciesOrOffsets2, deltaIndiciesOrOffsets3);
    }

    public abstract int getItemSize(T t);

    public abstract com.tencent.tinker.android.dex.TableOfContents.Section getTocSection(com.tencent.tinker.android.dex.Dex dex);

    public void markDeletedIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2) {
    }

    public abstract T nextItem(com.tencent.tinker.android.dex.io.DexDataBuffer dexDataBuffer);

    public void updateIndexOrOffset(com.tencent.tinker.commons.dexpatcher.util.SparseIndexMap sparseIndexMap, int i, int i2, int i3, int i4) {
    }

    public abstract int writePatchedItem(T t);
}
