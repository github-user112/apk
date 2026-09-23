package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class HttpMediaDrmCallback implements com.google.android.exoplayer2.drm.MediaDrmCallback {
    public static final int MAX_MANUAL_REDIRECTS = 5;
    public final com.google.android.exoplayer2.upstream.HttpDataSource.Factory dataSourceFactory;
    public final java.lang.String defaultLicenseUrl;
    public final boolean forceDefaultLicenseUrl;
    public final java.util.Map<java.lang.String, java.lang.String> keyRequestProperties;

    public HttpMediaDrmCallback(java.lang.String str, com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
        this(str, false, factory);
    }

    public HttpMediaDrmCallback(java.lang.String str, boolean z, com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
        com.google.android.exoplayer2.util.Assertions.checkArgument((z && android.text.TextUtils.isEmpty(str)) ? false : true);
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z;
        this.keyRequestProperties = new java.util.HashMap();
    }

    public static byte[] executePost(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory, java.lang.String str, byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map) throws com.google.android.exoplayer2.drm.MediaDrmCallbackException {
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = new com.google.android.exoplayer2.upstream.StatsDataSource(factory.createDataSource());
        com.google.android.exoplayer2.upstream.DataSpec dataSpecBuild = new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(str).setHttpRequestHeaders(map).setHttpMethod(2).setHttpBody(bArr).setFlags(1).build();
        int i = 0;
        com.google.android.exoplayer2.upstream.DataSpec dataSpecBuild2 = dataSpecBuild;
        while (true) {
            try {
                com.google.android.exoplayer2.upstream.DataSourceInputStream dataSourceInputStream = new com.google.android.exoplayer2.upstream.DataSourceInputStream(statsDataSource, dataSpecBuild2);
                try {
                    return com.google.android.exoplayer2.util.Util.toByteArray(dataSourceInputStream);
                } catch (com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException e2) {
                    java.lang.String redirectUrl = getRedirectUrl(e2, i);
                    if (redirectUrl == null) {
                        throw e2;
                    }
                    i++;
                    dataSpecBuild2 = dataSpecBuild2.buildUpon().setUri(redirectUrl).build();
                } finally {
                    com.google.android.exoplayer2.util.Util.closeQuietly(dataSourceInputStream);
                }
            } catch (java.lang.Exception e3) {
                throw new com.google.android.exoplayer2.drm.MediaDrmCallbackException(dataSpecBuild, (android.net.Uri) com.google.android.exoplayer2.util.Assertions.checkNotNull(statsDataSource.getLastOpenedUri()), statsDataSource.getResponseHeaders(), statsDataSource.getBytesRead(), e3);
            }
        }
    }

    public static java.lang.String getRedirectUrl(com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i) {
        java.util.Map<java.lang.String, java.util.List<java.lang.String>> map;
        java.util.List<java.lang.String> list;
        int i2 = invalidResponseCodeException.responseCode;
        if (!((i2 == 307 || i2 == 308) && i < 5) || (map = invalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.clear();
        }
    }

    public void clearKeyRequestProperty(java.lang.String str) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.remove(str);
        }
    }

    @Override // com.google.android.exoplayer2.drm.MediaDrmCallback
    public byte[] executeKeyRequest(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest keyRequest) throws com.google.android.exoplayer2.drm.MediaDrmCallbackException {
        java.lang.String licenseServerUrl = keyRequest.getLicenseServerUrl();
        if (this.forceDefaultLicenseUrl || android.text.TextUtils.isEmpty(licenseServerUrl)) {
            licenseServerUrl = this.defaultLicenseUrl;
        }
        if (android.text.TextUtils.isEmpty(licenseServerUrl)) {
            throw new com.google.android.exoplayer2.drm.MediaDrmCallbackException(new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(android.net.Uri.EMPTY).build(), android.net.Uri.EMPTY, e.c.b.b.l0.f2709g, 0L, new java.lang.IllegalStateException("No license URL"));
        }
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.google.android.exoplayer2.util.FileTypes.HEADER_CONTENT_TYPE, com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(uuid) ? "text/xml" : com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(uuid) ? "application/json" : "application/octet-stream");
        if (com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.keyRequestProperties) {
            map.putAll(this.keyRequestProperties);
        }
        return executePost(this.dataSourceFactory, licenseServerUrl, keyRequest.getData(), map);
    }

    @Override // com.google.android.exoplayer2.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest provisionRequest) {
        java.lang.String defaultUrl = provisionRequest.getDefaultUrl();
        java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(provisionRequest.getData());
        return executePost(this.dataSourceFactory, e.a.c.a.a.G(e.a.c.a.a.m(strFromUtf8Bytes, e.a.c.a.a.m(defaultUrl, 15)), defaultUrl, "&signedRequest=", strFromUtf8Bytes), null, java.util.Collections.emptyMap());
    }

    public void setKeyRequestProperty(java.lang.String str, java.lang.String str2) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }
}
