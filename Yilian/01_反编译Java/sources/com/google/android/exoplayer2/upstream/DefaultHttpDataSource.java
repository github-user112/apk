package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public class DefaultHttpDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource implements com.google.android.exoplayer2.upstream.HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    public static final int HTTP_STATUS_PERMANENT_REDIRECT = 308;
    public static final int HTTP_STATUS_TEMPORARY_REDIRECT = 307;
    public static final long MAX_BYTES_TO_DRAIN = 2048;
    public static final int MAX_REDIRECTS = 20;
    public static final java.lang.String TAG = "DefaultHttpDataSource";
    public final boolean allowCrossProtocolRedirects;
    public long bytesRead;
    public long bytesToRead;
    public final int connectTimeoutMillis;
    public java.net.HttpURLConnection connection;
    public e.c.b.a.g<java.lang.String> contentTypePredicate;
    public com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public final com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties defaultRequestProperties;
    public java.io.InputStream inputStream;
    public final boolean keepPostFor302Redirects;
    public boolean opened;
    public final int readTimeoutMillis;
    public final com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties requestProperties;
    public int responseCode;
    public final java.lang.String userAgent;

    public static final class Factory implements com.google.android.exoplayer2.upstream.HttpDataSource.Factory {
        public boolean allowCrossProtocolRedirects;
        public e.c.b.a.g<java.lang.String> contentTypePredicate;
        public boolean keepPostFor302Redirects;
        public com.google.android.exoplayer2.upstream.TransferListener transferListener;
        public java.lang.String userAgent;
        public final com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties defaultRequestProperties = new com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties();
        public int connectTimeoutMs = 8000;
        public int readTimeoutMs = 8000;

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource createDataSource() {
            com.google.android.exoplayer2.upstream.DefaultHttpDataSource defaultHttpDataSource = new com.google.android.exoplayer2.upstream.DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            com.google.android.exoplayer2.upstream.TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.addTransferListener(transferListener);
            }
            return defaultHttpDataSource;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setAllowCrossProtocolRedirects(boolean z) {
            this.allowCrossProtocolRedirects = z;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setConnectTimeoutMs(int i) {
            this.connectTimeoutMs = i;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setContentTypePredicate(e.c.b.a.g<java.lang.String> gVar) {
            this.contentTypePredicate = gVar;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public final com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setDefaultRequestProperties(java.util.Map<java.lang.String, java.lang.String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public /* bridge */ /* synthetic */ com.google.android.exoplayer2.upstream.HttpDataSource.Factory setDefaultRequestProperties(java.util.Map map) {
            return setDefaultRequestProperties((java.util.Map<java.lang.String, java.lang.String>) map);
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setKeepPostFor302Redirects(boolean z) {
            this.keepPostFor302Redirects = z;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setReadTimeoutMs(int i) {
            this.readTimeoutMs = i;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory setUserAgent(java.lang.String str) {
            this.userAgent = str;
            return this;
        }
    }

    @java.lang.Deprecated
    public DefaultHttpDataSource() {
        this(null, 8000, 8000);
    }

    @java.lang.Deprecated
    public DefaultHttpDataSource(java.lang.String str) {
        this(str, 8000, 8000);
    }

    @java.lang.Deprecated
    public DefaultHttpDataSource(java.lang.String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @java.lang.Deprecated
    public DefaultHttpDataSource(java.lang.String str, int i, int i2, boolean z, com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties requestProperties) {
        this(str, i, i2, z, requestProperties, null, false);
    }

    public DefaultHttpDataSource(java.lang.String str, int i, int i2, boolean z, com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties requestProperties, e.c.b.a.g<java.lang.String> gVar, boolean z2) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i;
        this.readTimeoutMillis = i2;
        this.allowCrossProtocolRedirects = z;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = gVar;
        this.requestProperties = new com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties();
        this.keepPostFor302Redirects = z2;
    }

    private void closeConnectionQuietly() {
        java.net.HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (java.lang.Exception e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Unexpected error while disconnecting", e2);
            }
            this.connection = null;
        }
    }

    private java.net.URL handleRedirect(java.net.URL url, java.lang.String str, com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            java.net.URL url2 = new java.net.URL(url, str);
            java.lang.String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                java.lang.String strValueOf = java.lang.String.valueOf(protocol);
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(strValueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(strValueOf) : new java.lang.String("Unsupported protocol redirect: "), dataSpec, 2001, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            java.lang.String protocol2 = url.getProtocol();
            java.lang.StringBuilder sbL = e.a.c.a.a.l(protocol.length() + e.a.c.a.a.m(protocol2, 41), "Disallowed cross-protocol redirect (", protocol2, " to ", protocol);
            sbL.append(")");
            throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(sbL.toString(), dataSpec, 2001, 1);
        } catch (java.net.MalformedURLException e2) {
            throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(e2, dataSpec, 2001, 1);
        }
    }

    public static boolean isCompressed(java.net.HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    private java.net.HttpURLConnection makeConnection(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        java.net.HttpURLConnection httpURLConnectionMakeConnection;
        java.net.URL url = new java.net.URL(dataSpec.uri.toString());
        int i = dataSpec.httpMethod;
        byte[] bArr = dataSpec.httpBody;
        long j = dataSpec.position;
        long j2 = dataSpec.length;
        boolean zIsFlagSet = dataSpec.isFlagSet(1);
        if (!this.allowCrossProtocolRedirects && !this.keepPostFor302Redirects) {
            return makeConnection(url, i, bArr, j, j2, zIsFlagSet, true, dataSpec.httpRequestHeaders);
        }
        int i2 = 0;
        java.net.URL urlHandleRedirect = url;
        int i3 = i;
        byte[] bArr2 = bArr;
        while (true) {
            int i4 = i2 + 1;
            if (i2 > 20) {
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(new java.net.NoRouteToHostException(e.a.c.a.a.F(31, "Too many redirects: ", i4)), dataSpec, 2001, 1);
            }
            long j3 = j;
            long j4 = j;
            int i5 = i3;
            java.net.URL url2 = urlHandleRedirect;
            long j5 = j2;
            httpURLConnectionMakeConnection = makeConnection(urlHandleRedirect, i3, bArr2, j3, j2, zIsFlagSet, false, dataSpec.httpRequestHeaders);
            int responseCode = httpURLConnectionMakeConnection.getResponseCode();
            java.lang.String headerField = httpURLConnectionMakeConnection.getHeaderField("Location");
            if ((i5 == 1 || i5 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionMakeConnection.disconnect();
                urlHandleRedirect = handleRedirect(url2, headerField, dataSpec);
                i3 = i5;
            } else {
                if (i5 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                }
                httpURLConnectionMakeConnection.disconnect();
                if (this.keepPostFor302Redirects && responseCode == 302) {
                    i3 = i5;
                } else {
                    bArr2 = null;
                    i3 = 1;
                }
                urlHandleRedirect = handleRedirect(url2, headerField, dataSpec);
            }
            j = j4;
            i2 = i4;
            j2 = j5;
        }
        return httpURLConnectionMakeConnection;
    }

    private java.net.HttpURLConnection makeConnection(java.net.URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, java.util.Map<java.lang.String, java.lang.String> map) throws java.io.IOException {
        java.net.HttpURLConnection httpURLConnectionOpenConnection = openConnection(url);
        httpURLConnectionOpenConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnectionOpenConnection.setReadTimeout(this.readTimeoutMillis);
        java.util.HashMap map2 = new java.util.HashMap();
        com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            map2.putAll(requestProperties.getSnapshot());
        }
        map2.putAll(this.requestProperties.getSnapshot());
        map2.putAll(map);
        for (java.util.Map.Entry entry : map2.entrySet()) {
            httpURLConnectionOpenConnection.setRequestProperty((java.lang.String) entry.getKey(), (java.lang.String) entry.getValue());
        }
        java.lang.String strBuildRangeRequestHeader = com.google.android.exoplayer2.upstream.HttpUtil.buildRangeRequestHeader(j, j2);
        if (strBuildRangeRequestHeader != null) {
            httpURLConnectionOpenConnection.setRequestProperty("Range", strBuildRangeRequestHeader);
        }
        java.lang.String str = this.userAgent;
        if (str != null) {
            httpURLConnectionOpenConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnectionOpenConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.KEYFORMAT_IDENTITY);
        httpURLConnectionOpenConnection.setInstanceFollowRedirects(z2);
        httpURLConnectionOpenConnection.setDoOutput(bArr != null);
        httpURLConnectionOpenConnection.setRequestMethod(com.google.android.exoplayer2.upstream.DataSpec.getStringForHttpMethod(i));
        if (bArr != null) {
            httpURLConnectionOpenConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionOpenConnection.connect();
            java.io.OutputStream outputStream = httpURLConnectionOpenConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionOpenConnection.connect();
        }
        return httpURLConnectionOpenConnection;
    }

    public static void maybeTerminateInputStream(java.net.HttpURLConnection httpURLConnection, long j) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i;
        if (httpURLConnection == null || (i = com.google.android.exoplayer2.util.Util.SDK_INT) < 19 || i > 20) {
            return;
        }
        try {
            java.io.InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= 2048) {
                return;
            }
            java.lang.String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                java.lang.reflect.Method declaredMethod = ((java.lang.Class) com.google.android.exoplayer2.util.Assertions.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new java.lang.Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new java.lang.Object[0]);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    private int readInternal(byte[] bArr, int i, int i2) throws java.io.IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesToRead;
        if (j != -1) {
            long j2 = j - this.bytesRead;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) java.lang.Math.min(i2, j2);
        }
        int i3 = ((java.io.InputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.bytesRead += i3;
        bytesTransferred(i3);
        return i3;
    }

    private void skipFully(long j, com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((java.io.InputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.inputStream)).read(bArr, 0, (int) java.lang.Math.min(j, 4096));
            if (java.lang.Thread.currentThread().isInterrupted()) {
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(new java.io.InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (i == -1) {
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j -= i;
            bytesTransferred(i);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void clearRequestProperty(java.lang.String str) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        try {
            java.io.InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j = -1;
                if (this.bytesToRead != -1) {
                    j = this.bytesToRead - this.bytesRead;
                }
                maybeTerminateInputStream(this.connection, j);
                try {
                    inputStream.close();
                } catch (java.io.IOException e2) {
                    throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(e2, (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Util.castNonNull(this.dataSpec), 2000, 3);
                }
            }
        } finally {
            this.inputStream = null;
            closeConnectionQuietly();
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public int getResponseCode() {
        int i;
        if (this.connection == null || (i = this.responseCode) <= 0) {
            return -1;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.upstream.BaseDataSource, com.google.android.exoplayer2.upstream.DataSource
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        java.net.HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? java.util.Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        java.net.HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return android.net.Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException, java.lang.NumberFormatException {
        byte[] byteArray;
        this.dataSpec = dataSpec;
        long j = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            java.net.HttpURLConnection httpURLConnectionMakeConnection = makeConnection(dataSpec);
            this.connection = httpURLConnectionMakeConnection;
            this.responseCode = httpURLConnectionMakeConnection.getResponseCode();
            java.lang.String responseMessage = httpURLConnectionMakeConnection.getResponseMessage();
            int i = this.responseCode;
            if (i < 200 || i > 299) {
                java.util.Map<java.lang.String, java.util.List<java.lang.String>> headerFields = httpURLConnectionMakeConnection.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == com.google.android.exoplayer2.upstream.HttpUtil.getDocumentSize(httpURLConnectionMakeConnection.getHeaderField("Content-Range"))) {
                        this.opened = true;
                        transferStarted(dataSpec);
                        long j2 = dataSpec.length;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                java.io.InputStream errorStream = httpURLConnectionMakeConnection.getErrorStream();
                try {
                    byteArray = errorStream != null ? com.google.android.exoplayer2.util.Util.toByteArray(errorStream) : com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
                } catch (java.io.IOException unused) {
                    byteArray = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr = byteArray;
                closeConnectionQuietly();
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new com.google.android.exoplayer2.upstream.DataSourceException(2008) : null, headerFields, dataSpec, bArr);
            }
            java.lang.String contentType = httpURLConnectionMakeConnection.getContentType();
            e.c.b.a.g<java.lang.String> gVar = this.contentTypePredicate;
            if (gVar != null && !gVar.apply(contentType)) {
                closeConnectionQuietly();
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.responseCode == 200) {
                long j3 = dataSpec.position;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean zIsCompressed = isCompressed(httpURLConnectionMakeConnection);
            if (zIsCompressed) {
                this.bytesToRead = dataSpec.length;
            } else {
                long j4 = dataSpec.length;
                if (j4 != -1) {
                    this.bytesToRead = j4;
                } else {
                    long contentLength = com.google.android.exoplayer2.upstream.HttpUtil.getContentLength(httpURLConnectionMakeConnection.getHeaderField("Content-Length"), httpURLConnectionMakeConnection.getHeaderField("Content-Range"));
                    this.bytesToRead = contentLength != -1 ? contentLength - j : -1L;
                }
            }
            try {
                this.inputStream = httpURLConnectionMakeConnection.getInputStream();
                if (zIsCompressed) {
                    this.inputStream = new java.util.zip.GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                transferStarted(dataSpec);
                try {
                    skipFully(j, dataSpec);
                    return this.bytesToRead;
                } catch (java.io.IOException e2) {
                    closeConnectionQuietly();
                    if (e2 instanceof com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException) {
                        throw ((com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException) e2);
                    }
                    throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(e2, dataSpec, 2000, 1);
                }
            } catch (java.io.IOException e3) {
                closeConnectionQuietly();
                throw new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(e3, dataSpec, 2000, 1);
            }
        } catch (java.io.IOException e4) {
            closeConnectionQuietly();
            throw com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException.createForIOException(e4, dataSpec, 1);
        }
    }

    public java.net.HttpURLConnection openConnection(java.net.URL url) {
        return (java.net.HttpURLConnection) url.openConnection();
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i, i2);
        } catch (java.io.IOException e2) {
            throw com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException.createForIOException(e2, (com.google.android.exoplayer2.upstream.DataSpec) com.google.android.exoplayer2.util.Util.castNonNull(this.dataSpec), 2);
        }
    }

    @java.lang.Deprecated
    public void setContentTypePredicate(e.c.b.a.g<java.lang.String> gVar) {
        this.contentTypePredicate = gVar;
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource
    public void setRequestProperty(java.lang.String str, java.lang.String str2) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }
}
