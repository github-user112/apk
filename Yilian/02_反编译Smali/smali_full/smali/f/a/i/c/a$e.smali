.class public Lf/a/i/c/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/c/a;


# direct methods
.method public constructor <init>(Lf/a/i/c/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/c/a$e;->a:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const-string v0, "talkieFocusChangeListener focusChange is "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a$e;->a:Lf/a/i/c/a;

    iget-boolean v1, v0, Lf/a/i/c/a;->isVrStarted:Z

    if-eqz v1, :cond_0

    const-string p1, "talkieFocusChangeListener vr started, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v1, p1}, Lf/a/i/c/a;->handleFocusChange(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V

    return-void
.end method
