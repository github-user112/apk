package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class f implements com.huawei.hms.framework.network.restclient.hwhttp.plugin.PluginInterceptor {
    public static final java.lang.String a = "f";

    public com.huawei.hms.framework.network.restclient.hwhttp.Response intercept(com.huawei.hms.framework.network.restclient.hwhttp.Interceptor.Chain chain) {
        com.huawei.hms.framework.network.restclient.hwhttp.RealInterceptorChain realInterceptorChain = (com.huawei.hms.framework.network.restclient.hwhttp.RealInterceptorChain) chain;
        com.huawei.hms.framework.network.restclient.hwhttp.Request request = realInterceptorChain.request();
        java.lang.String url = request.getUrl().getUrl();
        if (!com.huawei.hms.framework.network.grs.GrsManager.isGRSSchema(url)) {
            return realInterceptorChain.proceed(request);
        }
        com.huawei.hms.framework.common.Logger.v(a, "request url is grs schema.");
        com.huawei.hms.framework.network.restclient.hianalytics.RCEventListener rCEventListener = realInterceptorChain.getRCEventListener();
        rCEventListener.convertGrsStart(url);
        java.lang.String grs = com.huawei.hms.framework.network.grs.GrsManager.getInstance().parseGrs(url);
        com.huawei.hms.framework.network.restclient.hwhttp.Request requestBuild = request.newBuilder().url(new com.huawei.hms.framework.network.restclient.hwhttp.url.HttpUrl(grs)).build();
        com.huawei.hms.framework.common.Logger.v(a, "origin url is grs schema and by intercepted,and now request is:%s", requestBuild.toString());
        rCEventListener.convertGrsEnd(grs);
        return realInterceptorChain.proceed(requestBuild);
    }

    public java.lang.String pluginName() {
        return com.huawei.hms.framework.network.grs.f.class.getSimpleName();
    }
}
