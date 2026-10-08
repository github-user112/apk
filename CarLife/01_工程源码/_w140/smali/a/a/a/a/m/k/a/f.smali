.class public final La/a/a/a/m/k/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# instance fields
.field public final b:La/a/a/a/m/f;

.field public c:Z

.field public d:J

.field public e:J

.field public f:Ljava/io/File;

.field public g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a/a/a/m/k/a/f;->b:La/a/a/a/m/f;

    new-instance p2, Ljava/io/File;

    check-cast p1, La/a/a/a/a/e;

    .line 1
    iget-object p1, p1, La/a/a/a/a/e;->t:Ljava/io/File;

    const-string v0, "CarLifeTransferringFile.tmp"

    .line 2
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/m/k/a/f;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/m/k/a/f;->b()V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/m/k/a/f;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/a/a/a/m/k/a/f;->e:J

    iput-wide v0, p0, La/a/a/a/m/k/a/f;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/m/k/a/f;->c:Z

    iget-object v0, p0, La/a/a/a/m/k/a/f;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/m/k/a/f;->g:Ljava/io/OutputStream;

    :goto_0
    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-wide p1, p0, La/a/a/a/m/k/a/f;->d:J

    iget-wide v0, p0, La/a/a/a/m/k/a/f;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-object p1, p0, La/a/a/a/m/k/a/f;->b:La/a/a/a/m/f;

    iget-object p2, p0, La/a/a/a/m/k/a/f;->f:Ljava/io/File;

    invoke-interface {p1, p2}, La/a/a/a/m/f;->e(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0}, La/a/a/a/m/k/a/f;->b()V

    goto :goto_2

    .line 2
    :pswitch_1
    iget-boolean p1, p0, La/a/a/a/m/k/a/f;->c:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, La/a/a/a/a/a/b;->l()I

    move-result p1

    iget-wide v0, p0, La/a/a/a/m/k/a/f;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/a/a/a/m/k/a/f;->e:J

    iget-object v0, p0, La/a/a/a/m/k/a/f;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p2, La/a/a/a/a/a/b;->i:[B

    .line 4
    invoke-virtual {p2}, La/a/a/a/a/a/b;->k()I

    move-result p2

    invoke-virtual {v0, v1, p2, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 5
    :pswitch_2
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p1

    instance-of p2, p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    iput-boolean p2, p0, La/a/a/a/m/k/a/f;->c:Z

    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeFileTransferBeginProto$CarlifeFileTransferBegin;->getFileSize()J

    move-result-wide p1

    iput-wide p1, p0, La/a/a/a/m/k/a/f;->d:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, La/a/a/a/m/k/a/f;->e:J

    iget-object p1, p0, La/a/a/a/m/k/a/f;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, La/a/a/a/m/k/a/f;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object p1, p0, La/a/a/a/m/k/a/f;->g:Ljava/io/OutputStream;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :goto_1
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, La/a/a/a/m/k/a/f;->f:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, La/a/a/a/m/k/a/f;->g:Ljava/io/OutputStream;

    .line 6
    :cond_6
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x70007
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method
