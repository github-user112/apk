package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class LimitQueue<E> extends java.util.concurrent.ConcurrentLinkedQueue<E> {
    public static final java.lang.String TAG = "LimitQueue";
    public static final long serialVersionUID = -4636313759149307798L;
    public boolean deduplication;
    public int limit;

    public LimitQueue(int i) {
        this.deduplication = false;
        this.limit = i;
    }

    public LimitQueue(int i, boolean z) {
        this.deduplication = false;
        this.limit = i;
        this.deduplication = z;
    }

    public LimitQueue(java.util.Collection<? extends E> collection, boolean z) {
        this(collection.size(), z);
        addAll(collection);
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e2) {
        if (this.deduplication) {
            super.remove(e2);
        }
        if (super.size() >= this.limit) {
            super.poll();
        }
        return super.add(e2);
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public boolean addAll(java.util.Collection<? extends E> collection) {
        if (collection.size() > this.limit) {
            return false;
        }
        if (this.deduplication) {
            super.removeAll(collection);
        }
        for (int size = (collection.size() + super.size()) - this.limit; size > 0; size--) {
            super.poll();
        }
        return super.addAll(collection);
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        super.clear();
    }

    public E get(int i) {
        java.util.Iterator<E> it = iterator();
        E next = null;
        for (int i2 = 0; i2 <= i && it.hasNext(); i2++) {
            next = it.next();
        }
        return next;
    }

    public int getLimit() {
        return this.limit;
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue
    public boolean offer(E e2) {
        if (this.deduplication) {
            super.remove(e2);
        }
        if (super.size() >= this.limit) {
            super.poll();
        }
        return super.offer(e2);
    }

    public E peekLast() {
        java.util.Iterator<E> it = iterator();
        E next = null;
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue
    public E poll() {
        return (E) super.poll();
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public E remove() {
        try {
            return (E) super.remove();
        } catch (java.util.NoSuchElementException unused) {
            com.huawei.hms.framework.common.Logger.w(TAG, "remove failed, limitQueue is empty");
            return null;
        }
    }
}
