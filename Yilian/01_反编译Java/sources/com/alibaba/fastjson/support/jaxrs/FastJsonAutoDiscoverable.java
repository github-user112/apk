package com.alibaba.fastjson.support.jaxrs;

@javax.annotation.Priority(1999)
/* loaded from: classes.dex */
public class FastJsonAutoDiscoverable implements org.glassfish.jersey.internal.spi.AutoDiscoverable {
    public static final java.lang.String FASTJSON_AUTO_DISCOVERABLE = "fastjson.auto.discoverable";
    public static volatile boolean autoDiscover = true;

    static {
        try {
            autoDiscover = java.lang.Boolean.parseBoolean(java.lang.System.getProperty(FASTJSON_AUTO_DISCOVERABLE, java.lang.String.valueOf(autoDiscover)));
        } catch (java.lang.Throwable unused) {
        }
    }

    public void configure(javax.ws.rs.core.FeatureContext featureContext) {
        if (featureContext.getConfiguration().isRegistered(com.alibaba.fastjson.support.jaxrs.FastJsonFeature.class) || !autoDiscover) {
            return;
        }
        featureContext.register(com.alibaba.fastjson.support.jaxrs.FastJsonFeature.class);
    }
}
