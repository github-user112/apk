package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public class ConditionVariable {
    public final com.google.android.exoplayer2.util.Clock clock;
    public boolean isOpen;

    public ConditionVariable() {
        this(com.google.android.exoplayer2.util.Clock.DEFAULT);
    }

    public ConditionVariable(com.google.android.exoplayer2.util.Clock clock) {
        this.clock = clock;
    }

    public synchronized void block() {
        while (!this.isOpen) {
            wait();
        }
    }

    public synchronized boolean block(long j) {
        if (j <= 0) {
            return this.isOpen;
        }
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long j2 = j + jElapsedRealtime;
        if (j2 < jElapsedRealtime) {
            block();
        } else {
            while (!this.isOpen && jElapsedRealtime < j2) {
                wait(j2 - jElapsedRealtime);
                jElapsedRealtime = this.clock.elapsedRealtime();
            }
        }
        return this.isOpen;
    }

    public synchronized void blockUninterruptible() {
        boolean z = false;
        while (!this.isOpen) {
            try {
                wait();
            } catch (java.lang.InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            java.lang.Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean close() {
        boolean z;
        z = this.isOpen;
        this.isOpen = false;
        return z;
    }

    public synchronized boolean isOpen() {
        return this.isOpen;
    }

    public synchronized boolean open() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }
}
