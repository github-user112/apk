package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class SystemHandlerWrapper implements com.google.android.exoplayer2.util.HandlerWrapper {
    public static final int MAX_POOL_SIZE = 50;
    public static final java.util.List<com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage> messagePool = new java.util.ArrayList(50);
    public final android.os.Handler handler;

    public static final class SystemMessage implements com.google.android.exoplayer2.util.HandlerWrapper.Message {
        public com.google.android.exoplayer2.util.SystemHandlerWrapper handler;
        public android.os.Message message;

        public SystemMessage() {
        }

        private void recycle() {
            this.message = null;
            this.handler = null;
            com.google.android.exoplayer2.util.SystemHandlerWrapper.recycleMessage(this);
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public com.google.android.exoplayer2.util.HandlerWrapper getTarget() {
            return (com.google.android.exoplayer2.util.HandlerWrapper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.handler);
        }

        public boolean sendAtFrontOfQueue(android.os.Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((android.os.Message) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.message));
            recycle();
            return zSendMessageAtFrontOfQueue;
        }

        @Override // com.google.android.exoplayer2.util.HandlerWrapper.Message
        public void sendToTarget() {
            ((android.os.Message) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.message)).sendToTarget();
            recycle();
        }

        public com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage setMessage(android.os.Message message, com.google.android.exoplayer2.util.SystemHandlerWrapper systemHandlerWrapper) {
            this.message = message;
            this.handler = systemHandlerWrapper;
            return this;
        }
    }

    public SystemHandlerWrapper(android.os.Handler handler) {
        this.handler = handler;
    }

    public static com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage obtainSystemMessage() {
        com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage systemMessage;
        synchronized (messagePool) {
            systemMessage = messagePool.isEmpty() ? new com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage() : messagePool.remove(messagePool.size() - 1);
        }
        return systemMessage;
    }

    public static void recycleMessage(com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage systemMessage) {
        synchronized (messagePool) {
            if (messagePool.size() < 50) {
                messagePool.add(systemMessage);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public android.os.Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean hasMessages(int i) {
        return this.handler.hasMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public com.google.android.exoplayer2.util.HandlerWrapper.Message obtainMessage(int i) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public com.google.android.exoplayer2.util.HandlerWrapper.Message obtainMessage(int i, int i2, int i3) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, i2, i3), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public com.google.android.exoplayer2.util.HandlerWrapper.Message obtainMessage(int i, int i2, int i3, java.lang.Object obj) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public com.google.android.exoplayer2.util.HandlerWrapper.Message obtainMessage(int i, java.lang.Object obj) {
        return obtainSystemMessage().setMessage(this.handler.obtainMessage(i, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean post(java.lang.Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postAtFrontOfQueue(java.lang.Runnable runnable) {
        return this.handler.postAtFrontOfQueue(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postDelayed(java.lang.Runnable runnable, long j) {
        return this.handler.postDelayed(runnable, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeCallbacksAndMessages(java.lang.Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeMessages(int i) {
        this.handler.removeMessages(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessage(int i) {
        return this.handler.sendEmptyMessage(i);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i, long j) {
        return this.handler.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageDelayed(int i, int i2) {
        return this.handler.sendEmptyMessageDelayed(i, i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendMessageAtFrontOfQueue(com.google.android.exoplayer2.util.HandlerWrapper.Message message) {
        return ((com.google.android.exoplayer2.util.SystemHandlerWrapper.SystemMessage) message).sendAtFrontOfQueue(this.handler);
    }
}
