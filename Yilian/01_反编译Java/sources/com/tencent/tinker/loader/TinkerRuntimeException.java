package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerRuntimeException extends java.lang.RuntimeException {
    public static final java.lang.String TINKER_RUNTIME_EXCEPTION_PREFIX = "Tinker Exception:";
    public static final long serialVersionUID = 1;

    public TinkerRuntimeException(java.lang.String str) {
        super(e.a.c.a.a.e(TINKER_RUNTIME_EXCEPTION_PREFIX, str));
    }

    public TinkerRuntimeException(java.lang.String str, java.lang.Throwable th) {
        super(e.a.c.a.a.e(TINKER_RUNTIME_EXCEPTION_PREFIX, str), th);
    }
}
