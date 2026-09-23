package com.alibaba.fastjson.support.spring.annotation;

@java.lang.annotation.Target({java.lang.annotation.ElementType.METHOD})
@java.lang.annotation.Documented
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface FastJsonView {
    com.alibaba.fastjson.support.spring.annotation.FastJsonFilter[] exclude() default {};

    com.alibaba.fastjson.support.spring.annotation.FastJsonFilter[] include() default {};
}
