package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DefaultDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public static final java.lang.String SCHEME_ANDROID_RESOURCE = "android.resource";
    public static final java.lang.String SCHEME_ASSET = "asset";
    public static final java.lang.String SCHEME_CONTENT = "content";
    public static final java.lang.String SCHEME_DATA = "data";
    public static final java.lang.String SCHEME_RAW = "rawresource";
    public static final java.lang.String SCHEME_RTMP = "rtmp";
    public static final java.lang.String SCHEME_UDP = "udp";
    public static final java.lang.String TAG = "DefaultDataSource";
    public com.google.android.exoplayer2.upstream.DataSource assetDataSource;
    public final com.google.android.exoplayer2.upstream.DataSource baseDataSource;
    public com.google.android.exoplayer2.upstream.DataSource contentDataSource;
    public final android.content.Context context;
    public com.google.android.exoplayer2.upstream.DataSource dataSchemeDataSource;
    public com.google.android.exoplayer2.upstream.DataSource dataSource;
    public com.google.android.exoplayer2.upstream.DataSource fileDataSource;
    public com.google.android.exoplayer2.upstream.DataSource rawResourceDataSource;
    public com.google.android.exoplayer2.upstream.DataSource rtmpDataSource;
    public final java.util.List<com.google.android.exoplayer2.upstream.TransferListener> transferListeners;
    public com.google.android.exoplayer2.upstream.DataSource udpDataSource;

    public static final class Factory implements com.google.android.exoplayer2.upstream.DataSource.Factory {
        public final com.google.android.exoplayer2.upstream.DataSource.Factory baseDataSourceFactory;
        public final android.content.Context context;
        public com.google.android.exoplayer2.upstream.TransferListener transferListener;

        public Factory(android.content.Context context) {
            this(context, new com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory());
        }

        public Factory(android.content.Context context, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this.context = context.getApplicationContext();
            this.baseDataSourceFactory = factory;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public com.google.android.exoplayer2.upstream.DefaultDataSource createDataSource() {
            com.google.android.exoplayer2.upstream.DefaultDataSource defaultDataSource = new com.google.android.exoplayer2.upstream.DefaultDataSource(this.context, this.baseDataSourceFactory.createDataSource());
            com.google.android.exoplayer2.upstream.TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultDataSource.addTransferListener(transferListener);
            }
            return defaultDataSource;
        }

        public com.google.android.exoplayer2.upstream.DefaultDataSource.Factory setTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }
    }

    public DefaultDataSource(android.content.Context context, com.google.android.exoplayer2.upstream.DataSource dataSource) {
        this.context = context.getApplicationContext();
        this.baseDataSource = (com.google.android.exoplayer2.upstream.DataSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(dataSource);
        this.transferListeners = new java.util.ArrayList();
    }

    public DefaultDataSource(android.content.Context context, java.lang.String str, int i, int i2, boolean z) {
        this(context, new com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory().setUserAgent(str).setConnectTimeoutMs(i).setReadTimeoutMs(i2).setAllowCrossProtocolRedirects(z).createDataSource());
    }

    public DefaultDataSource(android.content.Context context, java.lang.String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    public DefaultDataSource(android.content.Context context, boolean z) {
        this(context, null, 8000, 8000, z);
    }

    private void addListenersToDataSource(com.google.android.exoplayer2.upstream.DataSource dataSource) {
        for (int i = 0; i < this.transferListeners.size(); i++) {
            dataSource.addTransferListener(this.transferListeners.get(i));
        }
    }

    private com.google.android.exoplayer2.upstream.DataSource getAssetDataSource() {
        if (this.assetDataSource == null) {
            com.google.android.exoplayer2.upstream.AssetDataSource assetDataSource = new com.google.android.exoplayer2.upstream.AssetDataSource(this.context);
            this.assetDataSource = assetDataSource;
            addListenersToDataSource(assetDataSource);
        }
        return this.assetDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getContentDataSource() {
        if (this.contentDataSource == null) {
            com.google.android.exoplayer2.upstream.ContentDataSource contentDataSource = new com.google.android.exoplayer2.upstream.ContentDataSource(this.context);
            this.contentDataSource = contentDataSource;
            addListenersToDataSource(contentDataSource);
        }
        return this.contentDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getDataSchemeDataSource() {
        if (this.dataSchemeDataSource == null) {
            com.google.android.exoplayer2.upstream.DataSchemeDataSource dataSchemeDataSource = new com.google.android.exoplayer2.upstream.DataSchemeDataSource();
            this.dataSchemeDataSource = dataSchemeDataSource;
            addListenersToDataSource(dataSchemeDataSource);
        }
        return this.dataSchemeDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getFileDataSource() {
        if (this.fileDataSource == null) {
            com.google.android.exoplayer2.upstream.FileDataSource fileDataSource = new com.google.android.exoplayer2.upstream.FileDataSource();
            this.fileDataSource = fileDataSource;
            addListenersToDataSource(fileDataSource);
        }
        return this.fileDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getRawResourceDataSource() {
        if (this.rawResourceDataSource == null) {
            com.google.android.exoplayer2.upstream.RawResourceDataSource rawResourceDataSource = new com.google.android.exoplayer2.upstream.RawResourceDataSource(this.context);
            this.rawResourceDataSource = rawResourceDataSource;
            addListenersToDataSource(rawResourceDataSource);
        }
        return this.rawResourceDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getRtmpDataSource() {
        if (this.rtmpDataSource == null) {
            try {
                com.google.android.exoplayer2.upstream.DataSource dataSource = (com.google.android.exoplayer2.upstream.DataSource) java.lang.Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
                this.rtmpDataSource = dataSource;
                addListenersToDataSource(dataSource);
            } catch (java.lang.ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (java.lang.Exception e2) {
                throw new java.lang.RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.rtmpDataSource == null) {
                this.rtmpDataSource = this.baseDataSource;
            }
        }
        return this.rtmpDataSource;
    }

    private com.google.android.exoplayer2.upstream.DataSource getUdpDataSource() {
        if (this.udpDataSource == null) {
            com.google.android.exoplayer2.upstream.UdpDataSource udpDataSource = new com.google.android.exoplayer2.upstream.UdpDataSource();
            this.udpDataSource = udpDataSource;
            addListenersToDataSource(udpDataSource);
        }
        return this.udpDataSource;
    }

    private void maybeAddListenerToDataSource(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.addTransferListener(transferListener);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        this.baseDataSource.addTransferListener(transferListener);
        this.transferListeners.add(transferListener);
        maybeAddListenerToDataSource(this.fileDataSource, transferListener);
        maybeAddListenerToDataSource(this.assetDataSource, transferListener);
        maybeAddListenerToDataSource(this.contentDataSource, transferListener);
        maybeAddListenerToDataSource(this.rtmpDataSource, transferListener);
        maybeAddListenerToDataSource(this.udpDataSource, transferListener);
        maybeAddListenerToDataSource(this.dataSchemeDataSource, transferListener);
        maybeAddListenerToDataSource(this.rawResourceDataSource, transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        com.google.android.exoplayer2.upstream.DataSource dataSource = this.dataSource;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        com.google.android.exoplayer2.upstream.DataSource dataSource = this.dataSource;
        return dataSource == null ? java.util.Collections.emptyMap() : dataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        com.google.android.exoplayer2.upstream.DataSource dataSource = this.dataSource;
        if (dataSource == null) {
            return null;
        }
        return dataSource.getUri();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    @Override // com.google.android.exoplayer2.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long open(com.google.android.exoplayer2.upstream.DataSpec r3) {
        /*
            r2 = this;
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.dataSource
            if (r0 != 0) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            com.google.android.exoplayer2.util.Assertions.checkState(r0)
            android.net.Uri r0 = r3.uri
            java.lang.String r0 = r0.getScheme()
            android.net.Uri r1 = r3.uri
            boolean r1 = com.google.android.exoplayer2.util.Util.isLocalFileUri(r1)
            if (r1 == 0) goto L2e
            android.net.Uri r0 = r3.uri
            java.lang.String r0 = r0.getPath()
            if (r0 == 0) goto L29
            java.lang.String r1 = "/android_asset/"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L29
            goto L36
        L29:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getFileDataSource()
            goto L3a
        L2e:
            java.lang.String r1 = "asset"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L3d
        L36:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getAssetDataSource()
        L3a:
            r2.dataSource = r0
            goto L8a
        L3d:
            java.lang.String r1 = "content"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L4a
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getContentDataSource()
            goto L3a
        L4a:
            java.lang.String r1 = "rtmp"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L57
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getRtmpDataSource()
            goto L3a
        L57:
            java.lang.String r1 = "udp"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L64
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getUdpDataSource()
            goto L3a
        L64:
            java.lang.String r1 = "data"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L71
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getDataSchemeDataSource()
            goto L3a
        L71:
            java.lang.String r1 = "rawresource"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L85
            java.lang.String r1 = "android.resource"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L82
            goto L85
        L82:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.baseDataSource
            goto L3a
        L85:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.getRawResourceDataSource()
            goto L3a
        L8a:
            com.google.android.exoplayer2.upstream.DataSource r0 = r2.dataSource
            long r0 = r0.open(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DefaultDataSource.open(com.google.android.exoplayer2.upstream.DataSpec):long");
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        return ((com.google.android.exoplayer2.upstream.DataSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.dataSource)).read(bArr, i, i2);
    }
}
