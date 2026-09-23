package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class ResolvingDataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public final com.google.android.exoplayer2.upstream.ResolvingDataSource.Resolver resolver;
    public final com.google.android.exoplayer2.upstream.DataSource upstreamDataSource;
    public boolean upstreamOpened;

    public static final class Factory implements com.google.android.exoplayer2.upstream.DataSource.Factory {
        public final com.google.android.exoplayer2.upstream.ResolvingDataSource.Resolver resolver;
        public final com.google.android.exoplayer2.upstream.DataSource.Factory upstreamFactory;

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.upstream.ResolvingDataSource.Resolver resolver) {
            this.upstreamFactory = factory;
            this.resolver = resolver;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public com.google.android.exoplayer2.upstream.ResolvingDataSource createDataSource() {
            return new com.google.android.exoplayer2.upstream.ResolvingDataSource(this.upstreamFactory.createDataSource(), this.resolver);
        }
    }

    public interface Resolver {
        com.google.android.exoplayer2.upstream.DataSpec resolveDataSpec(com.google.android.exoplayer2.upstream.DataSpec dataSpec);

        android.net.Uri resolveReportedUri(android.net.Uri uri);
    }

    public ResolvingDataSource(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.ResolvingDataSource.Resolver resolver) {
        this.upstreamDataSource = dataSource;
        this.resolver = resolver;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        this.upstreamDataSource.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.upstreamOpened) {
            this.upstreamOpened = false;
            this.upstreamDataSource.close();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return this.upstreamDataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        android.net.Uri uri = this.upstreamDataSource.getUri();
        if (uri == null) {
            return null;
        }
        return this.resolver.resolveReportedUri(uri);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        com.google.android.exoplayer2.upstream.DataSpec dataSpecResolveDataSpec = this.resolver.resolveDataSpec(dataSpec);
        this.upstreamOpened = true;
        return this.upstreamDataSource.open(dataSpecResolveDataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        return this.upstreamDataSource.read(bArr, i, i2);
    }
}
