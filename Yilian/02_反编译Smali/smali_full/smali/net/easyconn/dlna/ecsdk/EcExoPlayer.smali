.class public Lnet/easyconn/dlna/ecsdk/EcExoPlayer;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Ld/l/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/exoplayer2/ExoPlayer;

.field public c:Landroid/view/TextureView;

.field public d:Lf/a/h/a/g;

.field public e:Z

.field public f:Lf/a/h/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->e:Z

    iput-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->a:Landroid/content/Context;

    .line 2
    new-instance p1, Landroid/view/TextureView;

    iget-object p2, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->c:Landroid/view/TextureView;

    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object p2, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Log;->setLogLevel(I)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object p2, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Ld/p/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const-string v1, "dlna_player_volume"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance p2, Lf/a/h/a/k;

    invoke-direct {p2, p0}, Lf/a/h/a/k;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object p2, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->c:Landroid/view/TextureView;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->c:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;)V
    .locals 0

    return-void
.end method

.method private pauseByLifecycle()V
    .locals 1
    .annotation runtime Ld/l/o;
        value = .enum Ld/l/e$a;->ON_PAUSE:Ld/l/e$a;
    .end annotation

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->e:Z

    new-instance v0, Lf/a/h/a/a;

    invoke-direct {v0, p0}, Lf/a/h/a/a;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private playByLifecycle()V
    .locals 1
    .annotation runtime Ld/l/o;
        value = .enum Ld/l/e$a;->ON_RESUME:Ld/l/e$a;
    .end annotation

    iget-boolean v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->e:Z

    new-instance v0, Lf/a/h/a/f;

    invoke-direct {v0, p0}, Lf/a/h/a/f;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final i(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildMediaSource"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "exoplayer"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported type: "

    invoke-static {v0, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public synthetic k()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public synthetic l(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    return-void
.end method

.method public synthetic n(F)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    return-void
.end method

.method public synthetic o(F)V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-static {}, Lf/a/h/a/j;->a()Lf/a/h/a/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lf/a/h/a/j;->b:Lf/a/h/a/j;

    monitor-enter p1

    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setAnalyticsListener(Lf/a/h/a/g;)V
    .locals 1

    iput-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->d:Lf/a/h/a/g;

    iget-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    :cond_0
    return-void
.end method

.method public setPlayListener(Lf/a/h/a/i;)V
    .locals 1

    iput-object p1, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->f:Lf/a/h/a/i;

    invoke-static {}, Lf/a/h/a/j;->a()Lf/a/h/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1
    sget-object v0, Lf/a/h/a/j;->b:Lf/a/h/a/j;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public setSource(Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->i(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    new-instance v0, Lf/a/h/a/b;

    invoke-direct {v0, p0, p1}, Lf/a/h/a/b;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->i(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    new-instance v0, Lf/a/h/a/e;

    invoke-direct {v0, p0, p1}, Lf/a/h/a/e;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[EcDlna]EcExoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->b:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Lf/a/h/a/c;

    invoke-direct {v0, p0, p1}, Lf/a/h/a/c;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/easyconn/dlna/ecsdk/EcExoPlayer;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Ld/p/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dlna_player_volume"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    :cond_0
    new-instance v0, Lf/a/h/a/d;

    invoke-direct {v0, p0, p1}, Lf/a/h/a/d;-><init>(Lnet/easyconn/dlna/ecsdk/EcExoPlayer;F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
