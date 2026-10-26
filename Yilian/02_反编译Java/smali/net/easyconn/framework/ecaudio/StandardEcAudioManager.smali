.class public Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;
.super Lf/a/i/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$c;
    }
.end annotation


# static fields
.field public static mIsUseMusicIntentReceiver:Z = true


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public focusCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/media/AudioFocusRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lf/a/i/c/a;-><init>(Lf/a/i/i/q;Landroid/content/Context;)V

    new-instance p1, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->focusCache:Ljava/util/Hashtable;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->isUseMusicIntentReceiver()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$c;

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_0
    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->isUseMusicIntentReceiver()Z

    move-result p1

    sput-boolean p1, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->mIsUseMusicIntentReceiver:Z

    return-void
.end method

.method public static synthetic access$000(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    return-object p0
.end method

.method public static synthetic access$100(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    return-object p0
.end method

.method public static synthetic access$200()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method

.method public static synthetic access$300()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method

.method public static synthetic access$400()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method

.method public static synthetic access$500()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method

.method public static synthetic access$600()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method

.method public static synthetic access$700()Lf/a/i/i/q;
    .locals 1

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    return-object v0
.end method


# virtual methods
.method public allowUseHighLevelAudioTocus()Z
    .locals 1

    const-string v0, "StandardEcAudioManager allowUseHighLevelAudioTocus is true"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public doAbandonAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 6

    sget-object v0, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    const-string v1, "doAbandonAudioFocus Method Start"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAbandonAudioFocus error: ecAudioType = null ecAudioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const-string v4, " result is "

    const/4 v5, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->allowUseHighLevelAudioTocus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->focusCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v1

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAbandonAudioFocus >= version O complete, ecAudioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAbandonAudioFocus >= version O complete, result is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAbandonAudioFocus >= version O error, audioFocusRequest = null ecAudioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->getAudioFocusChangeListenerByType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAbandonAudioFocus < version O complete,  ecAudioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lf/a/i/f/a;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public doRequestAudioFocus(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 11

    sget-object v0, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    const-string v1, "doRequestAudioFocus Method Start"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "doRequestAudioFocus error: ecAudioType = "

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ecAudioTypeFocusMap is contain = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/i/c/b;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " trackCache in abstractEcAudioTrack = null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lf/a/i/c/a;->checkMusicHasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "EC_AUDIO_TYPE_TALKIE"

    invoke-virtual {p1, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SD14 TALKIE can not  request because focus is on Music"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    iget-object v0, v0, Lf/a/i/f/a;->a:Lf/a/i/f/a$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lf/a/i/f/a$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 2
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-wide/16 v3, 0xfa

    const/16 v5, 0xa

    const-string v6, "; result is "

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v1, v2, :cond_9

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->allowUseHighLevelAudioTocus()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->focusCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->getFocusType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v2, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/i/c/b;

    invoke-virtual {v2, p1}, Lf/a/i/c/b;->a(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->getAudioFocusChangeListenerByType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->focusCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->focusCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    if-nez v1, :cond_5

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_5

    sget v2, Lf/a/i/c/a;->retryNumber:I

    add-int/lit8 v9, v2, 0x1

    sput v9, Lf/a/i/c/a;->retryNumber:I

    if-ge v2, v5, :cond_5

    iget-object v2, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_5
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    new-instance v3, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;

    invoke-direct {v3, p0, p1, v1}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$a;-><init>(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->getVrFocusResultDelayTime()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v8, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v8, :cond_8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sput v7, Lf/a/i/c/a;->retryNumber:I

    :goto_4
    const-string v2, "doRequestAudioFocus >= version O ecAudioType is "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    :cond_9
    iget-object v1, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lf/a/i/c/a;->getAudioFocusChangeListenerByType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    iget-object v9, p0, Lf/a/i/c/a;->trackCache:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf/a/i/c/b;

    .line 3
    iget v9, v9, Lf/a/i/c/b;->h:I

    .line 4
    invoke-virtual {p0, p1}, Lf/a/i/c/a;->getFocusType(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)I

    move-result v10

    invoke-virtual {v1, v2, v9, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-nez v1, :cond_a

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_a

    sget v2, Lf/a/i/c/a;->retryNumber:I

    add-int/lit8 v9, v2, 0x1

    sput v9, Lf/a/i/c/a;->retryNumber:I

    if-ge v2, v5, :cond_a

    iget-object v2, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    :cond_a
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    new-instance v3, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$b;

    invoke-direct {v3, p0, p1, v1}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$b;-><init>(Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->getVrFocusResultDelayTime()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v8, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lf/a/i/c/a;->ecAudioTypeRequestFocusMap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    if-ne v1, v8, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sput v7, Lf/a/i/c/a;->retryNumber:I

    :goto_8
    const-string v2, "doRequestAudioFocus < version O ecAudioType is "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/i/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getEcAudioTrack()Lf/a/i/c/b;
    .locals 2

    new-instance v0, Lf/a/i/d/a;

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->allowUseHighLevelAudioTocus()Z

    move-result v1

    invoke-direct {v0, v1}, Lf/a/i/d/a;-><init>(Z)V

    return-object v0
.end method

.method public getVrFocusResultDelayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnDataReturn(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;[BII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isUseMusicIntentReceiver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 4

    invoke-super {p0}, Lf/a/i/c/a;->release()V

    invoke-virtual {p0}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->isUseMusicIntentReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    const-class v3, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$c;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
