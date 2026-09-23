package com.tencent.tinker.anno;

@java.lang.annotation.Inherited
@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
/* loaded from: classes.dex */
public @interface DefaultLifeCycle {
    java.lang.String application();

    int flags();

    boolean loadVerifyFlag() default false;

    java.lang.String loaderClass() default "com.tencent.tinker.loader.TinkerLoader";

    boolean useDelegateLastClassLoader() default false;

    boolean useInterpretModeOnSupported32BitSystem() default false;
}
