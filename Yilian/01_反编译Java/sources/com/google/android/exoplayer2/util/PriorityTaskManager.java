package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class PriorityTaskManager {
    public final java.lang.Object lock = new java.lang.Object();
    public final java.util.PriorityQueue<java.lang.Integer> queue = new java.util.PriorityQueue<>(10, java.util.Collections.reverseOrder());
    public int highestPriority = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends java.io.IOException {
        public PriorityTooLowException(int i, int i2) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(60);
            sb.append("Priority too low [priority=");
            sb.append(i);
            sb.append(", highest=");
            sb.append(i2);
            sb.append("]");
            super(sb.toString());
        }
    }

    public void add(int i) {
        synchronized (this.lock) {
            this.queue.add(java.lang.Integer.valueOf(i));
            this.highestPriority = java.lang.Math.max(this.highestPriority, i);
        }
    }

    public void proceed(int i) {
        synchronized (this.lock) {
            while (this.highestPriority != i) {
                this.lock.wait();
            }
        }
    }

    public boolean proceedNonBlocking(int i) {
        boolean z;
        synchronized (this.lock) {
            z = this.highestPriority == i;
        }
        return z;
    }

    public void proceedOrThrow(int i) {
        synchronized (this.lock) {
            if (this.highestPriority != i) {
                throw new com.google.android.exoplayer2.util.PriorityTaskManager.PriorityTooLowException(i, this.highestPriority);
            }
        }
    }

    public void remove(int i) {
        synchronized (this.lock) {
            this.queue.remove(java.lang.Integer.valueOf(i));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : ((java.lang.Integer) com.google.android.exoplayer2.util.Util.castNonNull(this.queue.peek())).intValue();
            this.lock.notifyAll();
        }
    }
}
