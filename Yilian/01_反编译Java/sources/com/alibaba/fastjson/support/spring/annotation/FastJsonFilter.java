package com.alibaba.fastjson.support.spring.annotation;

@java.lang.annotation.Target({java.lang.annotation.ElementType.ANNOTATION_TYPE})
@java.lang.annotation.Documented
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface FastJsonFilter {
    java.lang.Class<?> clazz();

    java.lang.String[] props();
}
