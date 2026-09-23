.class public final La/a/b/p/a;
.super La/a/a/a/d;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements La/a/b/l/c/c$a;


# instance fields
.field public final d:La/a/a/a/c;

.field public final e:La/a/b/l/c/c;

.field public f:Z

.field public g:La/a/b/l/b;

.field public final h:I

.field public final i:Landroid/media/AudioManager;

.field public final j:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;-><init>()V

    iput-object p1, p0, La/a/b/p/a;->d:La/a/a/a/c;

    new-instance v0, La/a/b/l/c/c;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, La/a/b/l/c/c;-><init>(La/a/a/a/c;IZLa/a/b/l/c/c$a;)V

    iput-object v0, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    iput v1, p0, La/a/b/p/a;->h:I

    sget-object p1, La/a/a/a/l/a;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, La/a/b/p/a;->i:Landroid/media/AudioManager;

    new-instance p1, Landroid/content/ComponentName;

    sget-object v0, La/a/a/a/l/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/baidu/carlifevehicle/MediaButtonReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, La/a/b/p/a;->j:Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 1
    iget-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    :goto_0
    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    :goto_0
    return-void
.end method

.method public b(La/a/b/l/c/d/c;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(La/a/b/l/c/d/c;ILjava/lang/String;)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, p2, v2, v0}, La/a/b/l/b;->k(La/a/b/l/b;La/a/a/a/a/a/b;ZI)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->c()V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->a()V

    goto :goto_0

    .line 3
    :pswitch_4
    iget-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/a/b/l/b;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    .line 4
    :goto_0
    invoke-virtual {p0, v2}, La/a/a/a/d;->H(I)V

    goto :goto_3

    .line 5
    :pswitch_5
    iget-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    :goto_1
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;

    iget-object p2, p0, La/a/b/p/a;->d:La/a/a/a/c;

    .line 6
    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/b/l/c/d/b;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getChannelConfig()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeMusicInitProto$CarlifeMusicInit;->getSampleFormat()I

    move-result v5

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, La/a/b/l/c/d/b;-><init>(IIIJI)V

    new-instance p1, La/a/b/l/b;

    const/high16 v2, 0x20000

    invoke-direct {p1, p2, v0, v2}, La/a/b/l/b;-><init>(La/a/a/a/c;La/a/b/l/c/d/b;I)V

    .line 7
    iput-object p1, p0, La/a/b/p/a;->g:La/a/b/l/b;

    iget-boolean p2, p0, La/a/b/p/a;->f:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, La/a/b/l/c/c;->b(La/a/b/l/c/d/c;)V

    invoke-virtual {p2}, La/a/b/l/c/c;->a()V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p2, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, La/a/b/l/c/c;->b(La/a/b/l/c/d/c;)V

    .line 10
    :goto_2
    invoke-virtual {p0, v1}, La/a/a/a/d;->H(I)V

    goto :goto_3

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeMusicInitProto.CarlifeMusicInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getId()I
    .locals 1

    iget v0, p0, La/a/b/p/a;->h:I

    return v0
.end method

.method public j(La/a/b/l/c/d/c;I)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(La/a/b/l/c/d/c;Z)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/b/p/a;->f:Z

    const/4 v1, -0x3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v1, :cond_3

    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/a/b/p/a;->i:Landroid/media/AudioManager;

    iget-object v0, p0, La/a/b/p/a;->j:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    .line 1
    invoke-virtual {p1, v2}, La/a/b/l/c/c;->d(F)V

    .line 2
    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->c()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, La/a/b/p/a;->i:Landroid/media/AudioManager;

    iget-object v1, p0, La/a/b/p/a;->j:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->e()V

    const/4 p1, 0x3

    .line 3
    sget-object v1, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v2, 0x18028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;->setStatusID(I)Lcom/baidu/carlife/protobuf/CarlifeModuleStatusProto$CarlifeModuleStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    invoke-virtual {v1, p1}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, v1}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, La/a/b/p/a;->i:Landroid/media/AudioManager;

    iget-object v0, p0, La/a/b/p/a;->j:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->a()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, La/a/b/p/a;->e:La/a/b/l/c/c;

    .line 5
    invoke-virtual {p1, v2}, La/a/b/l/c/c;->d(F)V

    :goto_0
    return-void
.end method

.method public s(La/a/b/l/c/d/c;JJ)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public y(II)V
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MusicModule onModuleStateChanged "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "->"

    const/4 v3, 0x2

    aput-object p2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, v0, v4

    const-string p2, "CarLife_SDK"

    const-string v5, "tag"

    .line 1
    invoke-static {p2, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "args"

    invoke-static {v0, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v6, v0

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v4, p2, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, La/a/b/p/a;->d:La/a/a/a/c;

    check-cast p1, La/a/a/a/a/e;

    .line 5
    iget-object v4, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v5, p0

    .line 6
    invoke-static/range {v4 .. v10}, La/a/a/a/a/h/a;->f(La/a/a/a/a/h/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I

    move-result p1

    if-ne p1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, La/a/b/p/a;->f:Z

    iget-object p1, p0, La/a/b/p/a;->i:Landroid/media/AudioManager;

    iget-object p2, p0, La/a/b/p/a;->j:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, La/a/b/p/a;->d:La/a/a/a/c;

    check-cast p1, La/a/a/a/a/e;

    .line 7
    iget-object p1, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    .line 8
    invoke-virtual {p1, p0}, La/a/a/a/a/h/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :goto_1
    return-void
.end method
