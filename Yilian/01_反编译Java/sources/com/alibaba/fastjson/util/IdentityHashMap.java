package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class IdentityHashMap<K, V> {
    public static final int DEFAULT_SIZE = 8192;
    public final com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V>[] buckets;
    public final int indexMask;

    public static final class Entry<K, V> {
        public final int hashCode;
        public final K key;
        public final com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> next;
        public V value;

        public Entry(K k, V v, int i, com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry) {
            this.key = k;
            this.value = v;
            this.next = entry;
            this.hashCode = i;
        }
    }

    public IdentityHashMap() {
        this(8192);
    }

    public IdentityHashMap(int i) {
        this.indexMask = i - 1;
        this.buckets = new com.alibaba.fastjson.util.IdentityHashMap.Entry[i];
    }

    public void clear() {
        java.util.Arrays.fill(this.buckets, (java.lang.Object) null);
    }

    public java.lang.Class findClass(java.lang.String str) {
        int i = 0;
        while (true) {
            com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V>[] entryArr = this.buckets;
            if (i >= entryArr.length) {
                return null;
            }
            com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = entryArr[i];
            if (entry != null) {
                for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry2 = entry; entry2 != null; entry2 = entry2.next) {
                    K k = entry.key;
                    if (k instanceof java.lang.Class) {
                        java.lang.Class cls = (java.lang.Class) k;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i++;
        }
    }

    public final V get(K k) {
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = this.buckets[java.lang.System.identityHashCode(k) & this.indexMask]; entry != null; entry = entry.next) {
            if (k == entry.key) {
                return entry.value;
            }
        }
        return null;
    }

    public boolean put(K k, V v) {
        int iIdentityHashCode = java.lang.System.identityHashCode(k);
        int i = this.indexMask & iIdentityHashCode;
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry = this.buckets[i]; entry != null; entry = entry.next) {
            if (k == entry.key) {
                entry.value = v;
                return true;
            }
        }
        this.buckets[i] = new com.alibaba.fastjson.util.IdentityHashMap.Entry<>(k, v, iIdentityHashCode, this.buckets[i]);
        return false;
    }

    public int size() {
        int i = 0;
        for (com.alibaba.fastjson.util.IdentityHashMap.Entry<K, V> entry : this.buckets) {
            for (; entry != null; entry = entry.next) {
                i++;
            }
        }
        return i;
    }
}
