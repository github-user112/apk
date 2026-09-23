.class public abstract Lf/a/i/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/h/a;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lf/a/i/c/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/c/a$g;
    }
.end annotation


# static fields
.field public static final ARGS_AUDIO_LOSS_ABANDON:I = 0x1

.field public static final COUNT_VR_FOCUS_RESULT_CONFIRM:I = 0x14

.field public static final DEFAULT_PRE_CACHE_TIME:I = 0xc8

.field public static final DEF_MAX_VALUE:F = 1.0f

.field public static final DEF_MIN_VALUE:F = 0.3f

.field public static final MAX_CACHE_QUEUE_LENGTH:I = 0x32

.field public static final MAX_RETRY_TIMES:I = 0xa

.field public static final MSG_ON_ABANDON_FOCUS:I = 0x1

.field public static final MSG_ON_REQUEST_FOCUS:I

.field public static mSdkManager:Lf/a/i/i/q;

.field public static retryNumber:I


# instance fields
.field public animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public audioManagerHandler:Landroid/os/Handler;

.field public ecAudioTypeFocusMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isVrStarted:Z

.field public volatile mAudioPlayEndMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioStopMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mCacheQueueMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mCurrentMusicVolumeValue:F

.field public mECAudioInfo:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

.field public mEaseAudioRecord:Lf/a/i/c/c;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mMaxVolume:F

.field public mMinVolume:F

.field public mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

.field public mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

.field public mPermissionRequestListener:Lf/a/i/h/h;

.field public mPlayerMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lf/a/i/c/a$g;",
            ">;"
        }
    .end annotation
.end field

.field public musicFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public talkieFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public trackCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lf/a/i/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public ttsFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public vrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public workThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/c/a;->isVrStarted:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a/i/c/a;->mECAudioInfo:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    iput-object v1, p0, Lf/a/i/c/a;->mPermissionRequestListener:Lf/a/i/h/h;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lf/a/i/c/a;->mCurrentMusicVolumeValue:F

    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lf/a/i/c/a;->mMinVolume:F

    iput v1, p0, Lf/a/i/c/a;->mMaxVolume:F

    new-instance v3, Lf/a/i/c/a$b;

    invoke-direct {v3, p0}, Lf/a/i/c/a$b;-><init>(Lf/a/i/c/a;)V

    iput-object v3, p0, Lf/a/i/c/a;->musicFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v3, Lf/a/i/c/a$c;

    invoke-direct {v3, p0}, Lf/a/i/c/a$c;-><init>(Lf/a/i/c/a;)V

    iput-object v3, p0, Lf/a/i/c/a;->vrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v3, Lf/a/i/c/a$d;

    invoke-direct {v3, p0}, Lf/a/i/c/a$d;-><init>(Lf/a/i/c/a;)V

    iput-object v3, p0, Lf/a/i/c/a;->ttsFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v3, Lf/a/i/c/a$e;

    invoke-direct {v3, p0}, Lf/a/i/c/a$e;-><init>(Lf/a/i/c/a;)V

    iput-object v3, p0, Lf/a/i/c/a;->talkieFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    sput-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    iput-object p2, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lf/a/i/c/a$a;

    invoke-direct {v11, p0}, Lf/a/i/c/a$a;-><init>(Lf/a/i/c/a;)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "EC_AUDIO_TYPE_MUSIC"

    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "EC_AUDIO_TYPE_TALKIE"

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "EC_AUDIO_TYPE_TTS"

    invoke-virtual {p1, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "EC_AUDIO_TYPE_VR"

    invoke-virtual {p1, v6, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1, v6, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v6, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lf/a/i/c/a;->isVolumeFadeChange()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v1}, Lf/a/i/c/a;->setVolumeFadeChangeArea(FF)V

    const/4 p1, 0x2

    new-array p2, p1, [F

    iget v1, p0, Lf/a/i/c/a;->mMinVolume:F

    aput v1, p2, v0

    iget v1, p0, Lf/a/i/c/a;->mMaxVolume:F

    const/4 v2, 0x1

    aput v1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    new-array p1, p1, [F

    iget p2, p0, Lf/a/i/c/a;->mMaxVolume:F

    aput p2, p1, v0

    iget p2, p0, Lf/a/i/c/a;->mMinVolume:F

    aput p2, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    iget p1, p0, Lf/a/i/c/a;->mMaxVolume:F

    iput p1, p0, Lf/a/i/c/a;->mCurrentMusicVolumeValue:F

    invoke-virtual {p0}, Lf/a/i/c/a;->setAnimatorUpdateListener()V

    iget-object p1, p0, Lf/a/i/c/a;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lf/a/i/c/a;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lf/a/i/c/a;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lf/a/i/c/a;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    return-object p0
.end method


# virtual methods
.method public bindVoiceServer()V
    .locals 6

    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_carcontrol_cmds"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v4, "key_ec_carcontrol_support_global_no_wakeup"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    invoke-virtual {v4, v1, v2}, Lf/a/i/i/q;->L(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_carcontrol_words"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/easyconn/ecsdk/ECSDK;->registerSimilarSoundingWords(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendCarControlRequestBroadcast(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkMusicHasFocus()Z
    .locals 2

    iget-object v0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v1, "EC_AUDIO_TYPE_MUSIC"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public checkMusicHasRequestFocus()Z
    .locals 2

    iget-object v0, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v1, "EC_AUDIO_TYPE_MUSIC"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract doAbandonAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public abstract doRequestAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end method

.method public getAudioFocusChangeListenerByType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/i/c/a;->musicFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf/a/i/c/a;->talkieFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lf/a/i/c/a;->vrFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lf/a/i/c/a;->ttsFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :goto_0
    return-object p1
.end method

.method public abstract getEcAudioTrack()Lf/a/i/c/b;
.end method

.method public getFocusType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :cond_1
    :goto_0
    const-string p1, "getFocusType ret = "

    invoke-static {p1, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return v0
.end method

.method public getPreCacheTime()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public handleFocusChange(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V
    .locals 2

    const-string v0, "handleFocusChange focusChange = "

    invoke-static {v0, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x3

    if-eq p2, v0, :cond_8

    const/4 v0, -0x2

    if-eq p2, v0, :cond_5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-eq p1, p2, :cond_1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p2, :cond_2

    :cond_1
    sget-object p2, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-virtual {p2, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_2
    iget-object p2, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-eq p1, p2, :cond_4

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p2, :cond_7

    :cond_4
    sget-object p2, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_5
    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-eq p1, p2, :cond_6

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p2, :cond_7

    :cond_6
    sget-object p2, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_SHORT_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_0
    invoke-virtual {p2, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_7
    iget-object p2, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-eq p1, p2, :cond_9

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p2, :cond_a

    :cond_9
    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-virtual {p1, p2, v0}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public handleVrFocusChange(I)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EC_Audio_Manager_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/a/i/c/a;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lf/a/i/c/a$f;

    iget-object v1, p0, Lf/a/i/c/a;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf/a/i/c/a$f;-><init>(Lf/a/i/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    return-void
.end method

.method public initAudioTrack(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lf/a/i/c/a;->getEcAudioTrack()Lf/a/i/c/b;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_1

    const-string v2, "initAudioTrack clear music cache"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p0, v2}, Lf/a/i/c/a;->onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioPlayer initAudioTrack ecAudioType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lf/a/i/c/a$g;

    invoke-direct {v2, p0, p1}, Lf/a/i/c/a$g;-><init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v3, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p1, p2, v2}, Lf/a/i/c/b;->d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public isMusicPlaying()Z
    .locals 2

    iget-object v0, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const-string v1, "EC_AUDIO_TYPE_MUSIC"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isOnDataReturn(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)Z
.end method

.method public isPreCacheEnabled(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVolumeFadeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyMicStatus(Z)V
    .locals 3

    const-string v0, "notifyMicStatus "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-nez v1, :cond_0

    const-string v1, "mSdkManager is null"

    goto :goto_0

    :cond_0
    const-string v1, "mSdkManager.isMirrorConnectionOpen() = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    .line 1
    iget-boolean v2, v2, Lf/a/i/i/q;->V:Z

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_MIC_STATUS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    if-eqz p1, :cond_1

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_MIC_OPEN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_1

    :cond_1
    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_MIC_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_1
    invoke-virtual {v0, v1, p1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_2
    return-void
.end method

.method public onAirplayStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 4

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lf/a/i/c/a;->isVrStarted:Z

    if-nez v0, :cond_0

    const-string p1, "AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lf/a/i/c/a;->getEcAudioTrack()Lf/a/i/c/b;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAudioTrack put ecAudioTrack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_2

    const-string v2, "initAudioTrack clear music cache"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p0, v2}, Lf/a/i/c/a;->onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioPlayer initAudioTrack ecAudioType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lf/a/i/c/a$g;

    invoke-direct {v2, p0, p1}, Lf/a/i/c/a$g;-><init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v3, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p1, p2, v2}, Lf/a/i/c/b;->d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->sendFocusRequestMessage(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "onAudioFocusChange focusChange is "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x3

    const-string v1, "EC_AUDIO_TYPE_TTS"

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_1
    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_SHORT_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_2
    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_GAIN:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_3
    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_LONG_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "EC_AUDIO_TYPE_VR"

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_SHORT_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "EC_AUDIO_TYPE_TALKIE"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_AUDIO_FOCUS_CHANGE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_0
    invoke-virtual {p1, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :goto_1
    return-void
.end method

.method public onCarMicRecord(ZLnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)I
    .locals 4

    const-string v0, "onCarMicRecord isStart = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iput-object p2, p0, Lf/a/i/c/a;->mECAudioInfo:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    iget-object p1, p0, Lf/a/i/c/a;->mPermissionRequestListener:Lf/a/i/h/h;

    if-eqz p1, :cond_3

    check-cast p1, Lf/a/k/g0;

    const/4 p2, 0x0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 1
    invoke-static {p1, v1}, Ld/g/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lf/a/i/c/a;->mPermissionRequestListener:Lf/a/i/h/h;

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_2

    const-string p2, "requestAudioRecordPermission start, isAudioRecordPermissionRequesting = "

    .line 3
    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v3, p1, Lf/a/k/g0;->I:Z

    invoke-static {p2, v3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean p2, p1, Lf/a/k/g0;->I:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, p1, Lf/a/k/g0;->I:Z

    new-array p2, v2, [Ljava/lang/String;

    aput-object v1, p2, v0

    const/16 v1, 0x2711

    invoke-static {p1, p2, v1}, Ld/g/e/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "requestAudioRecordPermission end"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_1
    return v0

    :cond_2
    throw p2

    .line 4
    :cond_3
    invoke-virtual {p0}, Lf/a/i/c/a;->startRecord()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lf/a/i/c/a;->stopRecord()V

    :goto_2
    return v0
.end method

.method public onData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/a$g;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "player == null return"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lf/a/i/c/a;->isOnDataReturn(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "onData isOnDataReturn"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p3, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p3, :cond_2

    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    .line 1
    iget-object p1, p1, Lf/a/i/i/q;->b:Lf/a/i/i/m;

    .line 2
    iget-object p1, p1, Lf/a/i/i/m;->d:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    .line 3
    sget-object p3, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_WIFI_AIRPLAY:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onData return because is Airplay And no focus"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p4}, Lf/a/i/c/a$g;->c(I)V

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, v1, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    const-string p1, "AudioPlayer onData mCacheQueueMap not containsKey :"

    invoke-static {p1, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioPlayer type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onInterrupt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public onMiracastStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 4

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lf/a/i/c/a;->isVrStarted:Z

    if-nez v0, :cond_0

    const-string p1, "AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lf/a/i/c/a;->getEcAudioTrack()Lf/a/i/c/b;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAudioTrack put ecAudioTrack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_2

    const-string v2, "initAudioTrack clear music cache"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p0, v2}, Lf/a/i/c/a;->onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioPlayer initAudioTrack ecAudioType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lf/a/i/c/a$g;

    invoke-direct {v2, p0, p1}, Lf/a/i/c/a$g;-><init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v3, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p1, p2, v2}, Lf/a/i/c/b;->d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->sendFocusRequestMessage(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onMusicInfo(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
    .locals 0

    return-void
.end method

.method public onQtData(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    const-string v1, "EC_AUDIO_TYPE_QT"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/i/c/a$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "player == null return"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "onData return because "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is no focus"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p4}, Lf/a/i/c/a$g;->c(I)V

    iget-object p1, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 1
    iget-object p1, v0, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public onQtStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 4

    const-string v0, " AudioPlayer onStart "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lf/a/i/c/a;->getEcAudioTrack()Lf/a/i/c/b;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    :goto_0
    iget-object v2, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioPlayer initAudioTrack ecAudioType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    const-string v2, "EC_AUDIO_TYPE_QT"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lf/a/i/c/a$g;

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v3}, Lf/a/i/c/a$g;-><init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Z)V

    iget-object v3, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0, p1}, Lf/a/i/c/a;->sendFocusRequestMessage(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p1, p2, v2}, Lf/a/i/c/b;->d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onQtStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->onStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    return-void
.end method

.method public onStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;)V
    .locals 4

    const-string v0, " AudioPlayer onStart "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->T:Z

    if-nez v0, :cond_0

    const-string p1, "AudioPlayer onStart mirrorConnectionOpen false return"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lf/a/i/c/a;->isVrStarted:Z

    if-nez v0, :cond_1

    const-string p1, "AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return"

    :goto_0
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lf/a/i/c/a;->getEcAudioTrack()Lf/a/i/c/b;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAudioTrack put ecAudioTrack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_3

    const-string v2, "initAudioTrack clear music cache"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p0, v2}, Lf/a/i/c/a;->onInterrupt(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioPlayer initAudioTrack ecAudioType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lf/a/i/c/a$g;

    invoke-direct {v2, p0, p1}, Lf/a/i/c/a$g;-><init>(Lf/a/i/c/a;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v3, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p1, p2, v2}, Lf/a/i/c/b;->d(Landroid/content/Context;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;I)V

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->sendFocusRequestMessage(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, p2, :cond_6

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "AudioPlayer onStart wait vr focus ok, break"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    const-string v1, "AudioPlayer onStart wait vr focus , count = "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 3
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public onStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer onStop begin ecAudioType = "

    invoke-static {v1, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object p1, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/i/c/a$g;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lf/a/i/c/a$g;->b()V

    :cond_1
    const-string p1, "AudioPlayer onStop end ecAudioType = "

    .line 2
    invoke-static {p1, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTalkieRecordStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lf/a/i/c/a;->isVrStarted:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onVRStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lf/a/i/c/a;->isVrStarted:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onVoiceCMD(Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceCMD cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.carcontrol.cmd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->id:Ljava/lang/String;

    const-string v2, "FunId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->cmd:Ljava/lang/String;

    const-string v2, "RegCmd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECCarCmd;->vrText:Ljava/lang/String;

    const-string v1, "VrText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onVolume(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioPlayer type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/i/c/b;

    check-cast p1, Lf/a/i/d/a;

    .line 1
    iget-object p1, p1, Lf/a/i/c/b;->e:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onVolumeFadeDown()V
    .locals 5

    invoke-virtual {p0}, Lf/a/i/c/a;->isVolumeFadeChange()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onVolumeFadeDown is invalid"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lf/a/i/c/a;->mCurrentMusicVolumeValue:F

    iget v1, p0, Lf/a/i/c/a;->mMinVolume:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public onVolumeFadeUp()V
    .locals 5

    invoke-virtual {p0}, Lf/a/i/c/a;->isVolumeFadeChange()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onVolumeFadeUp is invalid"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadedownAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lf/a/i/c/a;->mCurrentMusicVolumeValue:F

    iget v1, p0, Lf/a/i/c/a;->mMaxVolume:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lf/a/i/c/a;->mMusicVolumeFadeupAnimotor:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 6

    const-string v0, "AudioManager release"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lf/a/i/c/a;->doAbandonAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    .line 1
    iget-object v2, v1, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lf/a/i/c/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    :cond_2
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    goto :goto_0

    .line 2
    :cond_3
    iget-boolean v2, v1, Lf/a/i/c/b;->c:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lf/a/i/c/b;->d:Z

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, v1, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lf/a/i/c/b;->j:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileOutputStream;

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3
    :cond_6
    invoke-virtual {p0}, Lf/a/i/c/a;->releasePlayer()V

    iget-object v0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->mAudioStopMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->mAudioPlayEndMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lf/a/i/c/a;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lf/a/i/c/a;->workThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_8
    return-void
.end method

.method public releaseFocus()V
    .locals 3

    iget-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 4

    iget-object v0, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/a$g;

    const/4 v2, 0x1

    .line 1
    iget-object v3, v1, Lf/a/i/c/a$g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v1, v1, Lf/a/i/c/a$g;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a;->mPlayerMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iget-object v0, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lf/a/i/c/a;->mCacheQueueMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    :goto_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public sendAudioPlayEnd(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 3

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x15

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public sendFocusRequestMessage(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFocusRequestMessage type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ecAudioTypeFocusMap.get(type.name()) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setAnimatorUpdateListener()V
    .locals 0

    return-void
.end method

.method public setVolumeFadeChangeArea(FF)V
    .locals 0

    iput p1, p0, Lf/a/i/c/a;->mMinVolume:F

    iput p2, p0, Lf/a/i/c/a;->mMaxVolume:F

    return-void
.end method

.method public setmPermissionRequestListener(Lf/a/i/h/h;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/c/a;->mPermissionRequestListener:Lf/a/i/h/h;

    return-void
.end method

.method public declared-synchronized startRecord()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AbstractEcAudioManager startRecord start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->mECAudioInfo:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    if-nez v0, :cond_1

    new-instance v0, Lf/a/i/c/c;

    iget-object v1, p0, Lf/a/i/c/a;->mECAudioInfo:Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;

    invoke-direct {v0, v1, p0}, Lf/a/i/c/c;-><init>(Lnet/easyconn/ecsdk/ECTypes$ECAudioInfo;Lf/a/i/c/c$c;)V

    iput-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    :cond_1
    iget-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    invoke-virtual {v0}, Lf/a/i/c/c;->a()V

    const-string v0, "AbstractEcAudioManager startRecord end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecord()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractEcAudioManager stopRecord mEaseAudioRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    invoke-virtual {v0}, Lf/a/i/c/c;->b()V

    iget-object v0, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "EaseAudioRecord release"

    .line 1
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lf/a/i/c/c;->d:Z

    iget-object v2, v0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "EaseAudioRecord release1"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    const-string v2, "EaseAudioRecord release2"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v1, v0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    .line 2
    :cond_0
    iput-object v1, p0, Lf/a/i/c/a;->mEaseAudioRecord:Lf/a/i/c/c;

    goto :goto_0

    .line 3
    :cond_1
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/i/c/a;->mPermissionRequestListener:Lf/a/i/h/h;

    return-void
.end method

.method public uploadData([BI)V
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object p1

    iget-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, [B

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, v0}, Lnet/easyconn/ecsdk/ECSDK;->uploadAudioData([BI)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
