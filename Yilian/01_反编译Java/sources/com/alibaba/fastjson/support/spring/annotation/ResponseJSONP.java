package com.alibaba.fastjson.support.spring.annotation;

@java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.METHOD})
@java.lang.annotation.Documented
@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
@org.springframework.web.bind.annotation.ResponseBody
/* loaded from: classes.dex */
public @interface ResponseJSONP {
    java.lang.String callback() default "callback";
}
