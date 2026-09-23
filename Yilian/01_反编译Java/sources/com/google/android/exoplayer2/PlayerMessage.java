package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class PlayerMessage {
    public final com.google.android.exoplayer2.util.Clock clock;
    public boolean isCanceled;
    public boolean isDelivered;
    public boolean isProcessed;
    public boolean isSent;
    public android.os.Looper looper;
    public int mediaItemIndex;
    public java.lang.Object payload;
    public final com.google.android.exoplayer2.PlayerMessage.Sender sender;
    public final com.google.android.exoplayer2.PlayerMessage.Target target;
    public final com.google.android.exoplayer2.Timeline timeline;
    public int type;
    public long positionMs = com.google.android.exoplayer2.C.TIME_UNSET;
    public boolean deleteAfterDelivery = true;

    public interface Sender {
        void sendMessage(com.google.android.exoplayer2.PlayerMessage playerMessage);
    }

    public interface Target {
        void handleMessage(int i, java.lang.Object obj);
    }

    public PlayerMessage(com.google.android.exoplayer2.PlayerMessage.Sender sender, com.google.android.exoplayer2.PlayerMessage.Target target, com.google.android.exoplayer2.Timeline timeline, int i, com.google.android.exoplayer2.util.Clock clock, android.os.Looper looper) {
        this.sender = sender;
        this.target = target;
        this.timeline = timeline;
        this.looper = looper;
        this.clock = clock;
        this.mediaItemIndex = i;
    }

    public synchronized boolean blockUntilDelivered() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.isSent);
        com.google.android.exoplayer2.util.Assertions.checkState(this.looper.getThread() != java.lang.Thread.currentThread());
        while (!this.isProcessed) {
            wait();
        }
        return this.isDelivered;
    }

    public synchronized boolean blockUntilDelivered(long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.isSent);
        com.google.android.exoplayer2.util.Assertions.checkState(this.looper.getThread() != java.lang.Thread.currentThread());
        long jElapsedRealtime = this.clock.elapsedRealtime() + j;
        while (!this.isProcessed && j > 0) {
            this.clock.onThreadBlocked();
            wait(j);
            j = jElapsedRealtime - this.clock.elapsedRealtime();
        }
        if (!this.isProcessed) {
            throw new java.util.concurrent.TimeoutException("Message delivery timed out.");
        }
        return this.isDelivered;
    }

    public synchronized com.google.android.exoplayer2.PlayerMessage cancel() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.isSent);
        this.isCanceled = true;
        markAsProcessed(false);
        return this;
    }

    public boolean getDeleteAfterDelivery() {
        return this.deleteAfterDelivery;
    }

    public android.os.Looper getLooper() {
        return this.looper;
    }

    public int getMediaItemIndex() {
        return this.mediaItemIndex;
    }

    public java.lang.Object getPayload() {
        return this.payload;
    }

    public long getPositionMs() {
        return this.positionMs;
    }

    public com.google.android.exoplayer2.PlayerMessage.Target getTarget() {
        return this.target;
    }

    public com.google.android.exoplayer2.Timeline getTimeline() {
        return this.timeline;
    }

    public int getType() {
        return this.type;
    }

    public synchronized boolean isCanceled() {
        return this.isCanceled;
    }

    public synchronized void markAsProcessed(boolean z) {
        this.isDelivered = z | this.isDelivered;
        this.isProcessed = true;
        notifyAll();
    }

    public com.google.android.exoplayer2.PlayerMessage send() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        if (this.positionMs == com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(this.deleteAfterDelivery);
        }
        this.isSent = true;
        this.sender.sendMessage(this);
        return this;
    }

    public com.google.android.exoplayer2.PlayerMessage setDeleteAfterDelivery(boolean z) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        this.deleteAfterDelivery = z;
        return this;
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.PlayerMessage setHandler(android.os.Handler handler) {
        return setLooper(handler.getLooper());
    }

    public com.google.android.exoplayer2.PlayerMessage setLooper(android.os.Looper looper) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        this.looper = looper;
        return this;
    }

    public com.google.android.exoplayer2.PlayerMessage setPayload(java.lang.Object obj) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        this.payload = obj;
        return this;
    }

    public com.google.android.exoplayer2.PlayerMessage setPosition(int i, long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        com.google.android.exoplayer2.util.Assertions.checkArgument(j != com.google.android.exoplayer2.C.TIME_UNSET);
        if (i < 0 || (!this.timeline.isEmpty() && i >= this.timeline.getWindowCount())) {
            throw new com.google.android.exoplayer2.IllegalSeekPositionException(this.timeline, i, j);
        }
        this.mediaItemIndex = i;
        this.positionMs = j;
        return this;
    }

    public com.google.android.exoplayer2.PlayerMessage setPosition(long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        this.positionMs = j;
        return this;
    }

    public com.google.android.exoplayer2.PlayerMessage setType(int i) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.isSent);
        this.type = i;
        return this;
    }
}
