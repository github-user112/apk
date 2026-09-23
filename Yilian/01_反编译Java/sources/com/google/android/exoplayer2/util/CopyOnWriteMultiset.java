package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class CopyOnWriteMultiset<E> implements java.lang.Iterable<E> {
    public final java.lang.Object lock = new java.lang.Object();
    public final java.util.Map<E, java.lang.Integer> elementCounts = new java.util.HashMap();
    public java.util.Set<E> elementSet = java.util.Collections.emptySet();
    public java.util.List<E> elements = java.util.Collections.emptyList();

    public void add(E e2) {
        synchronized (this.lock) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.elements);
            arrayList.add(e2);
            this.elements = java.util.Collections.unmodifiableList(arrayList);
            java.lang.Integer num = this.elementCounts.get(e2);
            if (num == null) {
                java.util.HashSet hashSet = new java.util.HashSet(this.elementSet);
                hashSet.add(e2);
                this.elementSet = java.util.Collections.unmodifiableSet(hashSet);
            }
            this.elementCounts.put(e2, java.lang.Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        }
    }

    public int count(E e2) {
        int iIntValue;
        synchronized (this.lock) {
            iIntValue = this.elementCounts.containsKey(e2) ? this.elementCounts.get(e2).intValue() : 0;
        }
        return iIntValue;
    }

    public java.util.Set<E> elementSet() {
        java.util.Set<E> set;
        synchronized (this.lock) {
            set = this.elementSet;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<E> iterator() {
        java.util.Iterator<E> it;
        synchronized (this.lock) {
            it = this.elements.iterator();
        }
        return it;
    }

    public void remove(E e2) {
        synchronized (this.lock) {
            java.lang.Integer num = this.elementCounts.get(e2);
            if (num == null) {
                return;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(this.elements);
            arrayList.remove(e2);
            this.elements = java.util.Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.elementCounts.remove(e2);
                java.util.HashSet hashSet = new java.util.HashSet(this.elementSet);
                hashSet.remove(e2);
                this.elementSet = java.util.Collections.unmodifiableSet(hashSet);
            } else {
                this.elementCounts.put(e2, java.lang.Integer.valueOf(num.intValue() - 1));
            }
        }
    }
}
