package com.google.android.exoplayer2.source.hls.playlist;

/* loaded from: classes.dex */
public final class FilteringHlsPlaylistParserFactory implements com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory {
    public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory;
    public final java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;

    public FilteringHlsPlaylistParserFactory(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory, java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
        this.hlsPlaylistParserFactory = hlsPlaylistParserFactory;
        this.streamKeys = list;
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> createPlaylistParser() {
        return new com.google.android.exoplayer2.offline.FilteringManifestParser(this.hlsPlaylistParserFactory.createPlaylistParser(), this.streamKeys);
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> createPlaylistParser(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        return new com.google.android.exoplayer2.offline.FilteringManifestParser(this.hlsPlaylistParserFactory.createPlaylistParser(hlsMasterPlaylist, hlsMediaPlaylist), this.streamKeys);
    }
}
