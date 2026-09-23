package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ThreadPoolExcutorEnhance extends java.util.concurrent.ThreadPoolExecutor {
    public ThreadPoolExcutorEnhance(int i, int i2, long j, java.util.concurrent.TimeUnit timeUnit, java.util.concurrent.BlockingQueue<java.lang.Runnable> blockingQueue, java.util.concurrent.ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void beforeExecute(java.lang.Thread thread, java.lang.Runnable runnable) {
        if (runnable instanceof com.huawei.hms.framework.common.RunnableEnhance) {
            java.lang.String parentName = ((com.huawei.hms.framework.common.RunnableEnhance) runnable).getParentName();
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

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        super.execute(new com.huawei.hms.framework.common.RunnableEnhance(runnable));
    }
}
