package com.alibaba.fastjson.support.jaxrs;

/* loaded from: classes.dex */
public class FastJsonFeature implements javax.ws.rs.core.Feature {
    public static final java.lang.String JSON_FEATURE = com.alibaba.fastjson.support.jaxrs.FastJsonFeature.class.getSimpleName();

    public boolean configure(javax.ws.rs.core.FeatureContext featureContext) {
        javax.ws.rs.core.Configuration configuration;
        try {
            configuration = featureContext.getConfiguration();
        } catch (java.lang.NoSuchMethodError unused) {
        }
        if (!JSON_FEATURE.equalsIgnoreCase((java.lang.String) org.glassfish.jersey.CommonProperties.getValue(configuration.getProperties(), configuration.getRuntimeType(), "jersey.config.jsonFeature", JSON_FEATURE, java.lang.String.class))) {
            return false;
        }
        featureContext.property(org.glassfish.jersey.internal.util.PropertiesHelper.getPropertyNameForRuntime("jersey.config.jsonFeature", configuration.getRuntimeType()), JSON_FEATURE);
        if (!configuration.isRegistered(com.alibaba.fastjson.support.jaxrs.FastJsonProvider.class)) {
            featureContext.register(com.alibaba.fastjson.support.jaxrs.FastJsonProvider.class, new java.lang.Class[]{javax.ws.rs.ext.MessageBodyReader.class, javax.ws.rs.ext.MessageBodyWriter.class});
        }
        return true;
    }
}
