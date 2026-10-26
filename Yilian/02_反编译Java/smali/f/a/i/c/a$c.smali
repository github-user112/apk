.class public Lf/a/i/c/a$c;
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

    iput-object p1, p0, Lf/a/i/c/a$c;->a:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "vrFocusChangeListener focusChange is "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    const-string v1, "EC_AUDIO_TYPE_VR"

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a$c;->a:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/i/c/a$c;->a:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lf/a/i/c/a$c;->a:Lf/a/i/c/a;

    invoke-virtual {v0, p1}, Lf/a/i/c/a;->handleVrFocusChange(I)V

    return-void
.end method
