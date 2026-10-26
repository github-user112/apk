.class public final Le/a/b/b/b/z;
.super Le/a/b/b/b/l;
.source ""


# instance fields
.field public e:Le/a/b/b/b/e;


# direct methods
.method public constructor <init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le/a/b/b/b/l;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    if-nez v0, :cond_0

    const-string v0, "????"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Le/a/b/b/b/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Le/a/b/b/b/j;)Le/a/b/b/b/h;
    .locals 4

    new-instance v0, Le/a/b/b/b/z;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 3
    iget-object v3, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    invoke-direct {v0, p1, v1, v2, v3}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    return-object v0
.end method

.method public j(Le/a/b/d/b/l;)Le/a/b/b/b/h;
    .locals 4

    new-instance v0, Le/a/b/b/b/z;

    .line 1
    iget-object v1, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget-object v2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 3
    iget-object v3, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    invoke-direct {v0, v1, v2, p1, v3}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    return-object v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    invoke-virtual {v0}, Le/a/b/b/b/h;->c()I

    move-result v0

    invoke-virtual {p0}, Le/a/b/b/b/h;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public m()Z
    .locals 3

    .line 1
    iget v0, p0, Le/a/b/b/b/h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/b/b/b/z;->e:Le/a/b/b/b/e;

    .line 3
    iget v0, v0, Le/a/b/b/b/h;->a:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public n(Le/a/b/b/b/e;)Le/a/b/b/b/z;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/b/b/h;->b:Le/a/b/b/b/j;

    .line 2
    iget v1, v0, Le/a/b/b/b/j;->a:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v0, Le/a/b/b/b/k;->k0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_1
    sget-object v0, Le/a/b/b/b/k;->l0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_2
    sget-object v0, Le/a/b/b/b/k;->i0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_3
    sget-object v0, Le/a/b/b/b/k;->j0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_4
    sget-object v0, Le/a/b/b/b/k;->g0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_5
    sget-object v0, Le/a/b/b/b/k;->h0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_6
    sget-object v0, Le/a/b/b/b/k;->e0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_7
    sget-object v0, Le/a/b/b/b/k;->f0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_8
    sget-object v0, Le/a/b/b/b/k;->c0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_9
    sget-object v0, Le/a/b/b/b/k;->d0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_a
    sget-object v0, Le/a/b/b/b/k;->a0:Le/a/b/b/b/j;

    goto :goto_0

    :pswitch_b
    sget-object v0, Le/a/b/b/b/k;->b0:Le/a/b/b/b/j;

    .line 3
    :goto_0
    new-instance v1, Le/a/b/b/b/z;

    .line 4
    iget-object v2, p0, Le/a/b/b/b/h;->c:Le/a/b/d/b/q;

    .line 5
    iget-object v3, p0, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 6
    invoke-direct {v1, v0, v2, v3, p1}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
