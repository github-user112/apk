.class public Lf/a/i/c/a$f;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/i/c/a;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/c/a;


# direct methods
.method public constructor <init>(Lf/a/i/c/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/c/a$f;->a:Lf/a/i/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lf/a/i/c/a$f;->a:Lf/a/i/c/a;

    invoke-virtual {p1, v0}, Lf/a/i/c/a;->doAbandonAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lf/a/i/c/a$f;->a:Lf/a/i/c/a;

    invoke-virtual {p1, v0}, Lf/a/i/c/a;->doRequestAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lf/a/i/c/a$f;->a:Lf/a/i/c/a;

    iget-object p1, p1, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lf/a/i/c/a$f;->a:Lf/a/i/c/a;

    iget-object p1, p1, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMusicFocusStatusBroadcast(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method
