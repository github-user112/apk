.class public final La/a/b/p/d;
.super La/a/a/a/d;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements La/a/b/l/c/c$a;


# instance fields
.field public final d:La/a/a/a/c;

.field public final e:La/a/b/l/c/c;

.field public f:La/a/b/l/b;

.field public final g:I

.field public final h:Lc/a;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;-><init>()V

    iput-object p1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    new-instance v0, La/a/b/l/c/c;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, La/a/b/l/c/c;-><init>(La/a/a/a/c;IZLa/a/b/l/c/c$a;)V

    iput-object v0, p0, La/a/b/p/d;->e:La/a/b/l/c/c;

    const/4 p1, 0x4

    iput p1, p0, La/a/b/p/d;->g:I

    new-instance p1, La/a/b/p/d$a;

    invoke-direct {p1, p0}, La/a/b/p/d$a;-><init>(La/a/b/p/d;)V

    invoke-static {p1}, La/d/a/b;->b(Lc/k/a/a;)Lc/a;

    move-result-object p1

    iput-object p1, p0, La/a/b/p/d;->h:Lc/a;

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0}, La/a/b/p/d;->a0()V

    return-void
.end method

.method public final R()La/a/b/l/c/d/c;
    .locals 1

    iget-object v0, p0, La/a/b/p/d;->h:Lc/a;

    invoke-interface {v0}, Lc/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/l/c/d/c;

    return-object v0
.end method

.method public final a0()V
    .locals 1

    iget-object v0, p0, La/a/b/p/d;->f:La/a/b/l/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/a/b/l/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/p/d;->f:La/a/b/l/b;

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
    .locals 4

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errorMessage"

    invoke-static {p3, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "VRModule onError "

    aput-object v0, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string v0, "CarLife_SDK"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {p2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 3
    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, v0, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, La/a/b/p/d;->R()La/a/b/l/c/d/c;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    const p2, 0x18072

    invoke-interface {p1, p3, p2}, La/a/a/a/c;->z0(II)V

    :cond_1
    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, La/a/b/p/d;->a0()V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, La/a/b/p/d;->f:La/a/b/l/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/b/l/b;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/d;->f:La/a/b/l/b;

    .line 4
    :goto_0
    invoke-virtual {p0, v2}, La/a/a/a/d;->H(I)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, La/a/b/p/d;->f:La/a/b/l/b;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, p2, v2, v0}, La/a/b/l/b;->k(La/a/b/l/b;La/a/a/a/a/a/b;ZI)V

    goto :goto_2

    .line 5
    :pswitch_4
    iget-object p1, p0, La/a/b/p/d;->f:La/a/b/l/b;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    :goto_1
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    iget-object v1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    .line 6
    invoke-static {v1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/b/l/c/d/b;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v5

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v6

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, La/a/b/l/c/d/b;-><init>(IIIJI)V

    new-instance p1, La/a/b/l/b;

    const v3, 0x8000

    invoke-direct {p1, v1, v0, v3}, La/a/b/l/b;-><init>(La/a/a/a/c;La/a/b/l/c/d/b;I)V

    .line 7
    iput-object p1, p0, La/a/b/p/d;->f:La/a/b/l/b;

    iget-object v0, p0, La/a/b/p/d;->e:La/a/b/l/c/c;

    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, La/a/b/l/c/c;->b(La/a/b/l/c/d/c;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, La/a/a/a/d;->H(I)V

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const p2, 0x10071

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v2}, La/a/a/a/d;->H(I)V

    iget-object p1, p0, La/a/b/p/d;->e:La/a/b/l/c/c;

    invoke-virtual {p0}, La/a/b/p/d;->R()La/a/b/l/c/d/c;

    move-result-object p2

    invoke-virtual {p1, p2}, La/a/b/l/c/c;->b(La/a/b/l/c/d/c;)V

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x50002
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getId()I
    .locals 1

    iget v0, p0, La/a/b/p/d;->g:I

    return v0
.end method

.method public j(La/a/b/l/c/d/c;I)V
    .locals 0

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(La/a/b/l/c/d/c;Z)V
    .locals 5

    const-string p2, "source"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "VRModule onFinish "

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {p2, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 3
    array-length v4, p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v3, v1, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, La/a/b/p/d;->R()La/a/b/l/c/d/c;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    const p2, 0x18072

    invoke-interface {p1, v0, p2}, La/a/a/a/c;->z0(II)V

    :cond_1
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/a/b/p/d;->e:La/a/b/l/c/c;

    invoke-virtual {p1}, La/a/b/l/c/c;->e()V

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
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "VRModule onModuleStateChanged "

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v2, "->"

    aput-object v2, v0, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    const-string p2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {p2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, p2, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    check-cast p1, La/a/a/a/a/e;

    .line 5
    iget-object v0, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v1, p0

    .line 6
    invoke-static/range {v0 .. v6}, La/a/a/a/a/h/a;->f(La/a/a/a/a/h/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, La/a/b/p/d;->d:La/a/a/a/c;

    check-cast p1, La/a/a/a/a/e;

    .line 7
    iget-object p1, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    .line 8
    invoke-virtual {p1, p0}, La/a/a/a/a/h/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0}, La/a/b/p/d;->a0()V

    :goto_1
    return-void
.end method
