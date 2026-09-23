package com.alibaba.fastjson.annotation;

@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE})
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JSONPOJOBuilder {
    java.lang.String buildMethod() default "build";

    java.lang.String withPrefix() default "with";
}
