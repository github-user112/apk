package net.easyconn.dlna.ecsdk;

/* loaded from: classes.dex */
public class EcExoPlayer extends android.widget.FrameLayout implements d.l.g {
    public android.content.Context a;
    public com.google.android.exoplayer2.ExoPlayer b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.TextureView f3130c;

    /* renamed from: d, reason: collision with root package name */
    public f.a.h.a.g f3131d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3132e;

    /* renamed from: f, reason: collision with root package name */
    public f.a.h.a.i f3133f;

    public EcExoPlayer(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3132e = false;
        this.a = context;
        this.f3130c = new android.view.TextureView(this.a);
        this.b = new com.google.android.exoplayer2.ExoPlayer.Builder(this.a).build();
        com.google.android.exoplayer2.util.Log.setLogLevel(0);
        com.google.android.exoplayer2.ExoPlayer exoPlayer = this.b;
        android.content.SharedPreferences sharedPreferencesA = d.p.a.a(this.a);
        exoPlayer.setVolume(sharedPreferencesA != null ? sharedPreferencesA.getFloat("dlna_player_volume", 1.0f) : 1.0f);
        this.b.addListener((com.google.android.exoplayer2.Player.Listener) new f.a.h.a.k(this));
        this.b.setVideoTextureView(this.f3130c);
        addView(this.f3130c);
    }

    public static /* synthetic */ void h(net.easyconn.dlna.ecsdk.EcExoPlayer ecExoPlayer) {
    }

    @d.l.o(d.l.e.a.ON_PAUSE)
    private void pauseByLifecycle() {
        if (this.b != null) {
            this.f3132e = true;
            post(new java.lang.Runnable() { // from class: f.a.h.a.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.j();
                }
            });
        }
    }

    @d.l.o(d.l.e.a.ON_RESUME)
    private void playByLifecycle() {
        if (this.f3132e) {
            this.f3132e = false;
            post(new java.lang.Runnable() { // from class: f.a.h.a.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.k();
                }
            });
        }
    }

    public long getBufferedPosition() {
        return this.b.getBufferedPosition();
    }

    public android.view.ViewGroup getContainer() {
        return this;
    }

    public long getDuration() {
        return this.b.getDuration();
    }

    public long getPosition() {
        return this.b.getCurrentPosition();
    }

    public float getVolume() {
        com.google.android.exoplayer2.ExoPlayer exoPlayer = this.b;
        if (exoPlayer != null) {
            return exoPlayer.getVolume();
        }
        return 1.0f;
    }

    public final com.google.android.exoplayer2.source.MediaSource i(android.net.Uri uri, java.lang.String str) {
        com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory factory = new com.google.android.exoplayer2.upstream.DefaultHttpDataSource.Factory();
        int iInferContentType = com.google.android.exoplayer2.util.Util.inferContentType(uri, str);
        android.util.Log.e("buildMediaSource", "type= " + iInferContentType);
        com.google.android.exoplayer2.MediaItem mediaItemBuild = new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).build();
        if (iInferContentType == 0) {
            return new com.google.android.exoplayer2.source.dash.DashMediaSource.Factory(factory).createMediaSource(mediaItemBuild);
        }
        if (iInferContentType == 1) {
            return new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory(factory).createMediaSource(mediaItemBuild);
        }
        if (iInferContentType == 2) {
            return new com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory(factory).createMediaSource(mediaItemBuild);
        }
        if (iInferContentType == 4) {
            return new com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory(new com.google.android.exoplayer2.upstream.DefaultDataSourceFactory(getContext(), "exoplayer")).createMediaSource(mediaItemBuild);
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.K("Unsupported type: ", iInferContentType));
    }

    public /* synthetic */ void j() {
        this.b.setPlayWhenReady(false);
    }

    public /* synthetic */ void k() {
        this.b.setPlayWhenReady(true);
    }

    public /* synthetic */ void l(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        this.b.setMediaSource(mediaSource);
        this.b.prepare();
    }

    public /* synthetic */ void m(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        this.b.setMediaSource(mediaSource);
        this.b.prepare();
    }

    public /* synthetic */ void n(float f2) {
        this.b.setVolume(f2);
    }

    public /* synthetic */ void o(float f2) {
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(android.view.View view) {
        super.onViewRemoved(view);
        if (f.a.h.a.j.a() == null) {
            throw null;
        }
        synchronized (f.a.h.a.j.b) {
        }
    }

    public void setAnalyticsListener(f.a.h.a.g gVar) {
        this.f3131d = gVar;
        com.google.android.exoplayer2.ExoPlayer exoPlayer = this.b;
        if (exoPlayer != null) {
            exoPlayer.addAnalyticsListener(null);
        }
    }

    public void setPlayListener(f.a.h.a.i iVar) {
        this.f3133f = iVar;
        if (f.a.h.a.j.a() == null) {
            throw null;
        }
        synchronized (f.a.h.a.j.b) {
        }
        com.google.android.exoplayer2.ExoPlayer exoPlayer = this.b;
        if (exoPlayer != null) {
            exoPlayer.addListener((com.google.android.exoplayer2.Player.Listener) iVar);
        }
    }

    public void setSource(android.net.Uri uri) {
        final com.google.android.exoplayer2.source.MediaSource mediaSourceI = i(uri, uri.getLastPathSegment());
        post(new java.lang.Runnable() { // from class: f.a.h.a.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.l(mediaSourceI);
            }
        });
    }

    public void setSource(java.lang.String str) {
        android.net.Uri uri = android.net.Uri.parse(str);
        final com.google.android.exoplayer2.source.MediaSource mediaSourceI = i(uri, uri.getLastPathSegment());
        post(new java.lang.Runnable() { // from class: f.a.h.a.e
            @Override // java.lang.Runnable
            public final void run() {
                this.a.m(mediaSourceI);
            }
        });
    }

    public void setVolume(final float f2) {
        android.util.Log.d("[EcDlna]EcExoPlayer", "setVolume " + f2);
        if (this.b != null) {
            post(new java.lang.Runnable() { // from class: f.a.h.a.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.n(f2);
                }
            });
            android.content.SharedPreferences sharedPreferencesA = d.p.a.a(this.a);
            if (sharedPreferencesA != null) {
                android.content.SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                editorEdit.putFloat("dlna_player_volume", f2);
                editorEdit.commit();
            }
        }
        post(new java.lang.Runnable() { // from class: f.a.h.a.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.o(f2);
            }
        });
    }
}
