package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class BundleableUtil {
    public static void ensureClassLoader(android.os.Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((java.lang.ClassLoader) com.google.android.exoplayer2.util.Util.castNonNull(com.google.android.exoplayer2.util.BundleableUtil.class.getClassLoader()));
        }
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> e.c.b.b.s<T> fromBundleList(com.google.android.exoplayer2.Bundleable.Creator<T> creator, java.util.List<android.os.Bundle> list) {
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        for (int i = 0; i < list.size(); i++) {
            aVarJ.b(creator.fromBundle((android.os.Bundle) com.google.android.exoplayer2.util.Assertions.checkNotNull(list.get(i))));
        }
        return aVarJ.c();
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> java.util.List<T> fromBundleNullableList(com.google.android.exoplayer2.Bundleable.Creator<T> creator, java.util.List<android.os.Bundle> list, java.util.List<T> list2) {
        return list == null ? list2 : fromBundleList(creator, list);
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> android.util.SparseArray<T> fromBundleNullableSparseArray(com.google.android.exoplayer2.Bundleable.Creator<T> creator, android.util.SparseArray<android.os.Bundle> sparseArray, android.util.SparseArray<T> sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2;
        }
        com.huawei.hms.scankit.p.Mc mc = (android.util.SparseArray<T>) new android.util.SparseArray(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            mc.put(sparseArray.keyAt(i), creator.fromBundle(sparseArray.valueAt(i)));
        }
        return mc;
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> T fromNullableBundle(com.google.android.exoplayer2.Bundleable.Creator<T> creator, android.os.Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return (T) creator.fromBundle(bundle);
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> T fromNullableBundle(com.google.android.exoplayer2.Bundleable.Creator<T> creator, android.os.Bundle bundle, T t) {
        return bundle == null ? t : (T) creator.fromBundle(bundle);
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> java.util.ArrayList<android.os.Bundle> toBundleArrayList(java.util.Collection<T> collection) {
        java.util.ArrayList<android.os.Bundle> arrayList = new java.util.ArrayList<>(collection.size());
        java.util.Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toBundle());
        }
        return arrayList;
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> e.c.b.b.s<android.os.Bundle> toBundleList(java.util.List<T> list) {
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        for (int i = 0; i < list.size(); i++) {
            aVarJ.b(list.get(i).toBundle());
        }
        return aVarJ.c();
    }

    public static <T extends com.google.android.exoplayer2.Bundleable> android.util.SparseArray<android.os.Bundle> toBundleSparseArray(android.util.SparseArray<T> sparseArray) {
        android.util.SparseArray<android.os.Bundle> sparseArray2 = new android.util.SparseArray<>(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), sparseArray.valueAt(i).toBundle());
        }
        return sparseArray2;
    }

    public static android.os.Bundle toNullableBundle(com.google.android.exoplayer2.Bundleable bundleable) {
        if (bundleable == null) {
            return null;
        }
        return bundleable.toBundle();
    }
}
