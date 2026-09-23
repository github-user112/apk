package com.google.android.exoplayer2.source.hls.playlist;

/* loaded from: classes.dex */
public final class DefaultHlsPlaylistParserFactory implements com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory {
    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> createPlaylistParser() {
        return new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory
    public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> createPlaylistParser(com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist hlsMasterPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        return new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser(hlsMasterPlaylist, hlsMediaPlaylist);
    }
}
