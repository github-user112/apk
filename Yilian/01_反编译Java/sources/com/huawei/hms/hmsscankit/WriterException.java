package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public final class WriterException extends java.lang.Exception {
    public WriterException() {
    }

    public WriterException(java.lang.String str) {
        super(str);
    }

    public WriterException(java.lang.String str, java.lang.String str2) {
        super(e.a.c.a.a.f(str2, " Format | ", str));
    }

    public WriterException(java.lang.Throwable th) {
        super(th);
    }
}
