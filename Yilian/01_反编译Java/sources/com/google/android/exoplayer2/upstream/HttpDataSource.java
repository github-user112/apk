package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public interface HttpDataSource extends com.google.android.exoplayer2.upstream.DataSource {
    public static final e.c.b.a.g<java.lang.String> REJECT_PAYWALL_TYPES = new e.c.b.a.g() { // from class: e.c.a.a.r2.d
        @Override // e.c.b.a.g
        public final boolean apply(java.lang.Object obj) {
            return e.c.a.a.r2.i.a((java.lang.String) obj);
        }
    };

    public static abstract class BaseFactory implements com.google.android.exoplayer2.upstream.HttpDataSource.Factory {
        public final com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties defaultRequestProperties = new com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties();

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory, com.google.android.exoplayer2.upstream.DataSource.Factory
        public final com.google.android.exoplayer2.upstream.HttpDataSource createDataSource() {
            return createDataSourceInternal(this.defaultRequestProperties);
        }

        public abstract com.google.android.exoplayer2.upstream.HttpDataSource createDataSourceInternal(com.google.android.exoplayer2.upstream.HttpDataSource.RequestProperties requestProperties);

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.Factory
        public final com.google.android.exoplayer2.upstream.HttpDataSource.Factory setDefaultRequestProperties(java.util.Map<java.lang.String, java.lang.String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }
    }

    public static final class CleartextNotPermittedException extends com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        public CleartextNotPermittedException(java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, dataSpec, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED, 1);
        }
    }

    public interface Factory extends com.google.android.exoplayer2.upstream.DataSource.Factory {
        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        /* bridge */ /* synthetic */ com.google.android.exoplayer2.upstream.DataSource createDataSource();

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        com.google.android.exoplayer2.upstream.HttpDataSource createDataSource();

        com.google.android.exoplayer2.upstream.HttpDataSource.Factory setDefaultRequestProperties(java.util.Map<java.lang.String, java.lang.String> map);
    }

    public static class HttpDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
        public final int type;

        @java.lang.annotation.Documented
        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface Type {
        }

        @java.lang.Deprecated
        public HttpDataSourceException(com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i) {
            this(dataSpec, 2000, i);
        }

        public HttpDataSourceException(com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i, int i2) {
            super(assignErrorCode(i, i2));
            this.dataSpec = dataSpec;
            this.type = i2;
        }

        @java.lang.Deprecated
        public HttpDataSourceException(java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i) {
            this(iOException, dataSpec, 2000, i);
        }

        public HttpDataSourceException(java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i, int i2) {
            super(iOException, assignErrorCode(i, i2));
            this.dataSpec = dataSpec;
            this.type = i2;
        }

        @java.lang.Deprecated
        public HttpDataSourceException(java.lang.String str, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i) {
            this(str, dataSpec, 2000, i);
        }

        public HttpDataSourceException(java.lang.String str, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i, int i2) {
            super(str, assignErrorCode(i, i2));
            this.dataSpec = dataSpec;
            this.type = i2;
        }

        @java.lang.Deprecated
        public HttpDataSourceException(java.lang.String str, java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i) {
            this(str, iOException, dataSpec, 2000, i);
        }

        public HttpDataSourceException(java.lang.String str, java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i, int i2) {
            super(str, iOException, assignErrorCode(i, i2));
            this.dataSpec = dataSpec;
            this.type = i2;
        }

        public static int assignErrorCode(int i, int i2) {
            if (i == 2000 && i2 == 1) {
                return 2001;
            }
            return i;
        }

        public static com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException createForIOException(java.io.IOException iOException, com.google.android.exoplayer2.upstream.DataSpec dataSpec, int i) {
            java.lang.String message = iOException.getMessage();
            int i2 = iOException instanceof java.net.SocketTimeoutException ? 2002 : iOException instanceof java.io.InterruptedIOException ? 1004 : (message == null || !d.s.y.b0(message).matches("cleartext.*not permitted.*")) ? 2001 : com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED;
            return i2 == 2007 ? new com.google.android.exoplayer2.upstream.HttpDataSource.CleartextNotPermittedException(iOException, dataSpec) : new com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException(iOException, dataSpec, i2, i);
        }
    }

    public static final class InvalidContentTypeException extends com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        public final java.lang.String contentType;

        /* JADX WARN: Illegal instructions before constructor call */
        public InvalidContentTypeException(java.lang.String str, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            super(strValueOf.length() != 0 ? "Invalid content type: ".concat(strValueOf) : new java.lang.String("Invalid content type: "), dataSpec, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        public final java.util.Map<java.lang.String, java.util.List<java.lang.String>> headerFields;
        public final byte[] responseBody;
        public final int responseCode;
        public final java.lang.String responseMessage;

        public InvalidResponseCodeException(int i, java.lang.String str, java.io.IOException iOException, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, com.google.android.exoplayer2.upstream.DataSpec dataSpec, byte[] bArr) {
            super(e.a.c.a.a.F(26, "Response code: ", i), iOException, dataSpec, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS, 1);
            this.responseCode = i;
            this.responseMessage = str;
            this.headerFields = map;
            this.responseBody = bArr;
        }

        @java.lang.Deprecated
        public InvalidResponseCodeException(int i, java.lang.String str, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            this(i, str, null, map, dataSpec, com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        }

        @java.lang.Deprecated
        public InvalidResponseCodeException(int i, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            this(i, null, null, map, dataSpec, com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        }
    }

    public static final class RequestProperties {
        public final java.util.Map<java.lang.String, java.lang.String> requestProperties = new java.util.HashMap();
        public java.util.Map<java.lang.String, java.lang.String> requestPropertiesSnapshot;

        public synchronized void clear() {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.clear();
        }

        public synchronized void clearAndSet(java.util.Map<java.lang.String, java.lang.String> map) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.clear();
            this.requestProperties.putAll(map);
        }

        public synchronized java.util.Map<java.lang.String, java.lang.String> getSnapshot() {
            if (this.requestPropertiesSnapshot == null) {
                this.requestPropertiesSnapshot = java.util.Collections.unmodifiableMap(new java.util.HashMap(this.requestProperties));
            }
            return this.requestPropertiesSnapshot;
        }

        public synchronized void remove(java.lang.String str) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.remove(str);
        }

        public synchronized void set(java.lang.String str, java.lang.String str2) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.put(str, str2);
        }

        public synchronized void set(java.util.Map<java.lang.String, java.lang.String> map) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.putAll(map);
        }
    }

    void clearAllRequestProperties();

    void clearRequestProperty(java.lang.String str);

    @Override // com.google.android.exoplayer2.upstream.DataSource
    void close();

    int getResponseCode();

    @Override // com.google.android.exoplayer2.upstream.DataSource
    java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders();

    @Override // com.google.android.exoplayer2.upstream.DataSource
    long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec);

    @Override // com.google.android.exoplayer2.upstream.DataReader
    int read(byte[] bArr, int i, int i2);

    void setRequestProperty(java.lang.String str, java.lang.String str2);
}
