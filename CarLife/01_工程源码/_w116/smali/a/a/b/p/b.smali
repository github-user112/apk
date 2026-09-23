.class public final La/a/b/p/b;
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


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;-><init>()V

    iput-object p1, p0, La/a/b/p/b;->d:La/a/a/a/c;

    new-instance v0, La/a/b/l/c/c;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p0}, La/a/b/l/c/c;-><init>(La/a/a/a/c;IZLa/a/b/l/c/c$a;)V

    iput-object v0, p0, La/a/b/p/b;->e:La/a/b/l/c/c;

    const/4 p1, 0x2

    iput p1, p0, La/a/b/p/b;->g:I

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La/a/a/a/a/e;

    .line 1
    iget-object p1, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    .line 2
    invoke-virtual {p1, p0}, La/a/a/a/a/h/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 3
    iget-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

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
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "NavModule onError "

    aput-object v0, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const/4 p3, 0x2

    const-string v0, " "

    aput-object v0, p1, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "CarLife_SDK"

    const-string p3, "tag"

    .line 1
    invoke-static {p2, p3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {p1, p3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 3
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, La/a/b/p/b;->d:La/a/a/a/c;

    invoke-interface {p1, p0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0}, La/a/b/l/b;->k(La/a/b/l/b;La/a/a/a/a/a/b;ZI)V

    goto/16 :goto_2

    .line 3
    :pswitch_1
    iget-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/a/b/l/b;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, La/a/a/a/d;->H(I)V

    goto :goto_2

    .line 5
    :pswitch_2
    iget-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La/a/b/l/b;->close()V

    :goto_1
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;

    iget-object p2, p0, La/a/b/p/b;->d:La/a/a/a/c;

    .line 6
    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/b/l/c/d/b;

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    move-result v2

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, La/a/b/l/c/d/b;-><init>(IIIJI)V

    new-instance p1, La/a/b/l/b;

    const v1, 0x8000

    invoke-direct {p1, p2, v0, v1}, La/a/b/l/b;-><init>(La/a/a/a/c;La/a/b/l/c/d/b;I)V

    .line 7
    iput-object p1, p0, La/a/b/p/b;->f:La/a/b/l/b;

    iget-object p1, p0, La/a/b/p/b;->d:La/a/a/a/c;

    check-cast p1, La/a/a/a/a/e;

    .line 8
    iget-object v0, p1, La/a/a/a/a/e;->p:La/a/a/a/a/h/a;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v1, p0

    .line 9
    invoke-static/range {v0 .. v6}, La/a/a/a/a/h/a;->f(La/a/a/a/a/h/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I

    iget-object p1, p0, La/a/b/p/b;->e:La/a/b/l/c/c;

    iget-object p2, p0, La/a/b/p/b;->f:La/a/b/l/b;

    invoke-static {p2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, La/a/b/l/c/c;->b(La/a/b/l/c/d/c;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, La/a/a/a/d;->H(I)V

    goto :goto_2

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeTTSInitProto.CarlifeTTSInit"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x40001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getId()I
    .locals 1

    iget v0, p0, La/a/b/p/b;->g:I

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

    iget-object p1, p0, La/a/b/p/b;->d:La/a/a/a/c;

    invoke-interface {p1, p0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

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
    iget-object p1, p0, La/a/b/p/b;->e:La/a/b/l/c/c;

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
