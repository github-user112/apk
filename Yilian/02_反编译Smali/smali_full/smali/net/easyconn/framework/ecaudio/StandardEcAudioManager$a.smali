.class public Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->doRequestAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

.field public final synthetic b:I

.field public final synthetic c:Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->c:Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;

    iput-object p2, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->a:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    iput p3, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->c:Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;

    invoke-static {v0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$000(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->a:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
