package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ExecutorsUtils {
    public static final java.lang.String THREADNAME_HEADER = "NetworkKit_";

    public static java.util.concurrent.ThreadFactory createThreadFactory(final java.lang.String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new java.lang.NullPointerException("ThreadName is empty");
        }
        return new java.util.concurrent.ThreadFactory() { // from class: com.huawei.hms.framework.common.ExecutorsUtils.1
            public final java.util.concurrent.atomic.AtomicInteger threadNumbers = new java.util.concurrent.atomic.AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public java.lang.Thread newThread(java.lang.Runnable runnable) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("NetworkKit_");
                sbO.append(str);
                sbO.append("_");
                sbO.append(this.threadNumbers.getAndIncrement());
                return new java.lang.Thread(runnable, sbO.toString());
            }
        };
    }

    public static java.util.concurrent.ExecutorService newCachedThreadPool(java.lang.String str) {
        return new com.huawei.hms.framework.common.ThreadPoolExcutorEnhance(0, Integer.MAX_VALUE, 60L, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.SynchronousQueue(), createThreadFactory(str));
    }

    public static java.util.concurrent.ExecutorService newFixedThreadPool(int i, java.lang.String str) {
        return new com.huawei.hms.framework.common.ThreadPoolExcutorEnhance(i, i, 0L, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingQueue(), createThreadFactory(str));
    }

    public static java.util.concurrent.ScheduledExecutorService newScheduledThreadPool(int i, java.lang.String str) {
        return new com.huawei.hms.framework.common.ScheduledThreadPoolExecutorEnhance(i, createThreadFactory(str));
    }

    public static java.util.concurrent.ExecutorService newSingleThreadExecutor(java.lang.String str) {
        return com.huawei.hms.framework.common.ExecutorsEnhance.newSingleThreadExecutor(createThreadFactory(str));
    }
}
