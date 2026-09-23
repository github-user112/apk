package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ScheduledThreadPoolExecutorEnhance extends java.util.concurrent.ScheduledThreadPoolExecutor {
    public static final java.lang.String TAG = "ScheduledThreadPoolExec";

    public ScheduledThreadPoolExecutorEnhance(int i, java.util.concurrent.ThreadFactory threadFactory) {
        super(i, threadFactory);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void beforeExecute(java.lang.Thread thread, java.lang.Runnable runnable) {
        if (runnable instanceof com.huawei.hms.framework.common.RunnableScheduledFutureEnhance) {
            java.lang.String parentName = ((com.huawei.hms.framework.common.RunnableScheduledFutureEnhance) runnable).getParentName();
            int iLastIndexOf = parentName.lastIndexOf(com.huawei.hms.framework.common.RunnableEnhance.TRANCELOGO);
            if (iLastIndexOf != -1) {
                parentName = com.huawei.hms.framework.common.StringUtils.substring(parentName, iLastIndexOf + 4);
            }
            java.lang.String name = thread.getName();
            int iLastIndexOf2 = name.lastIndexOf(com.huawei.hms.framework.common.RunnableEnhance.TRANCELOGO);
            if (iLastIndexOf2 != -1) {
                name = com.huawei.hms.framework.common.StringUtils.substring(name, iLastIndexOf2 + 4);
            }
            thread.setName(parentName + com.huawei.hms.framework.common.RunnableEnhance.TRANCELOGO + name);
        }
        super.beforeExecute(thread, runnable);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public <V> java.util.concurrent.RunnableScheduledFuture<V> decorateTask(java.lang.Runnable runnable, java.util.concurrent.RunnableScheduledFuture<V> runnableScheduledFuture) {
        return new com.huawei.hms.framework.common.RunnableScheduledFutureEnhance(super.decorateTask(runnable, runnableScheduledFuture));
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor
    public <V> java.util.concurrent.RunnableScheduledFuture<V> decorateTask(java.util.concurrent.Callable<V> callable, java.util.concurrent.RunnableScheduledFuture<V> runnableScheduledFuture) {
        return new com.huawei.hms.framework.common.RunnableScheduledFutureEnhance(super.decorateTask(callable, runnableScheduledFuture));
    }
}
