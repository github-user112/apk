.class public final Le/a/b/b/c/u0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/b/c/m;

.field public final b:Le/a/b/f/a;


# direct methods
.method public constructor <init>(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    iput-object p2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Le/a/b/b/c/m;Le/a/b/d/c/a;)V
    .locals 3

    instance-of v0, p1, Le/a/b/d/c/b;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/b/d/c/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    throw v0

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/b/d/c/c;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/b/d/c/c;

    .line 5
    iget-object p1, p1, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    .line 6
    iget-object v0, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    invoke-virtual {p1, v1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/d/c/a;

    .line 8
    invoke-static {p0, v2}, Le/a/b/b/c/u0;->a(Le/a/b/b/c/m;Le/a/b/d/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Le/a/b/b/c/m;->a(Le/a/b/d/c/a;)V

    :cond_3
    return-void
.end method

.method public static b(Le/a/b/d/c/a;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Le/a/b/b/c/u0;->c(Le/a/b/d/c/a;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/d/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Le/a/b/d/c/a;)I
    .locals 1

    instance-of v0, p0, Le/a/b/d/c/f;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Le/a/b/d/c/u;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Le/a/b/d/c/g;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Le/a/b/d/c/l;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Le/a/b/d/c/q;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Le/a/b/d/c/k;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Le/a/b/d/c/h;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Le/a/b/d/c/v;

    if-eqz v0, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    instance-of v0, p0, Le/a/b/d/c/w;

    if-eqz v0, :cond_8

    const/16 p0, 0x18

    return p0

    :cond_8
    instance-of v0, p0, Le/a/b/d/c/j;

    if-eqz v0, :cond_9

    const/16 p0, 0x19

    return p0

    :cond_9
    instance-of v0, p0, Le/a/b/d/c/s;

    if-eqz v0, :cond_a

    const/16 p0, 0x1a

    return p0

    :cond_a
    instance-of v0, p0, Le/a/b/d/c/i;

    if-eqz v0, :cond_b

    const/16 p0, 0x1b

    return p0

    :cond_b
    instance-of v0, p0, Le/a/b/d/c/c;

    if-eqz v0, :cond_c

    const/16 p0, 0x1c

    return p0

    :cond_c
    instance-of v0, p0, Le/a/b/d/c/b;

    if-eqz v0, :cond_d

    const/16 p0, 0x1d

    return p0

    :cond_d
    instance-of v0, p0, Le/a/b/d/c/m;

    if-eqz v0, :cond_e

    const/16 p0, 0x1e

    return p0

    :cond_e
    instance-of p0, p0, Le/a/b/d/c/e;

    if-eqz p0, :cond_f

    const/16 p0, 0x1f

    return p0

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d(Le/a/b/d/a/a;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1}, Le/a/b/f/c;->d()Z

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public e(Le/a/b/d/c/c;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object p1, p1, Le/a/b/d/c/c;->a:Le/a/b/d/c/c$a;

    .line 2
    iget-object v1, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz p2, :cond_1

    .line 3
    iget-object v2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    const-string v3, "  size: "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Le/a/b/f/c;

    invoke-virtual {v2, v3}, Le/a/b/f/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast v2, Le/a/b/f/c;

    invoke-virtual {v2, v1}, Le/a/b/f/c;->n(I)I

    :goto_1
    if-ge v0, v1, :cond_3

    .line 4
    invoke-virtual {p1, v0}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/d/c/a;

    if-eqz p2, :cond_2

    .line 5
    iget-object v3, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    const-string v4, "  ["

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Le/a/b/b/c/u0;->b(Le/a/b/d/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Le/a/b/f/c;

    invoke-virtual {v3, v4}, Le/a/b/f/c;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Le/a/b/b/c/u0;->f(Le/a/b/d/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1}, Le/a/b/f/c;->e()V

    :cond_4
    return-void
.end method

.method public f(Le/a/b/d/c/a;)V
    .locals 6

    invoke-static {p1}, Le/a/b/b/c/u0;->c(Le/a/b/d/c/a;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Le/a/b/d/c/e;

    .line 1
    iget p1, p1, Le/a/b/d/c/n;->a:I

    .line 2
    iget-object v1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v0

    check-cast v1, Le/a/b/f/c;

    invoke-virtual {v1, p1}, Le/a/b/f/c;->j(I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1, v0}, Le/a/b/f/c;->j(I)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast v2, Le/a/b/f/c;

    invoke-virtual {v2, v0}, Le/a/b/f/c;->j(I)V

    check-cast p1, Le/a/b/d/c/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Le/a/b/b/c/u0;->d(Le/a/b/d/a/a;Z)V

    throw p1

    :pswitch_3
    iget-object v2, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    check-cast v2, Le/a/b/f/c;

    invoke-virtual {v2, v0}, Le/a/b/f/c;->j(I)V

    check-cast p1, Le/a/b/d/c/c;

    invoke-virtual {p0, p1, v1}, Le/a/b/b/c/u0;->e(Le/a/b/d/c/c;Z)V

    goto/16 :goto_4

    :pswitch_4
    check-cast p1, Le/a/b/d/c/i;

    .line 3
    iget-object v1, p1, Le/a/b/d/c/i;->c:Le/a/b/d/c/j;

    if-nez v1, :cond_0

    new-instance v1, Le/a/b/d/c/j;

    .line 4
    iget-object v2, p1, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    .line 5
    iget-object v3, p1, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 6
    invoke-direct {v1, v2, v3}, Le/a/b/d/c/j;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    iput-object v1, p1, Le/a/b/d/c/i;->c:Le/a/b/d/c/j;

    :cond_0
    iget-object p1, p1, Le/a/b/d/c/i;->c:Le/a/b/d/c/j;

    .line 7
    iget-object v1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 8
    iget-object v1, v1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object v1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 10
    iget-object v1, v1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 11
    check-cast p1, Le/a/b/d/c/s;

    invoke-virtual {v1, p1}, Le/a/b/b/c/f0;->m(Le/a/b/d/c/d;)I

    move-result p1

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 12
    iget-object v1, v1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 13
    check-cast p1, Le/a/b/d/c/j;

    :goto_0
    invoke-virtual {v1, p1}, Le/a/b/b/c/t;->m(Le/a/b/d/c/j;)I

    move-result p1

    goto :goto_1

    :pswitch_7
    iget-object v1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 14
    iget-object v1, v1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 15
    check-cast p1, Le/a/b/d/c/w;

    invoke-virtual {v1, p1}, Le/a/b/b/c/q0;->m(Le/a/b/d/c/w;)I

    move-result p1

    goto :goto_1

    :pswitch_8
    iget-object v1, p0, Le/a/b/b/c/u0;->a:Le/a/b/b/c/m;

    .line 16
    iget-object v1, v1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 17
    check-cast p1, Le/a/b/d/c/v;

    invoke-virtual {v1, p1}, Le/a/b/b/c/o0;->m(Le/a/b/d/c/v;)I

    move-result p1

    :goto_1
    iget-object v1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    int-to-long v2, p1

    invoke-static {v1, v0, v2, v3}, Ld/s/y;->k0(Le/a/a/c/a;IJ)V

    goto :goto_4

    :cond_1
    check-cast p1, Le/a/b/d/c/h;

    .line 18
    iget-wide v1, p1, Le/a/b/d/c/o;->a:J

    goto :goto_2

    .line 19
    :cond_2
    check-cast p1, Le/a/b/d/c/k;

    .line 20
    iget p1, p1, Le/a/b/d/c/n;->a:I

    int-to-long v1, p1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    .line 21
    :goto_2
    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    invoke-static {p1, v0, v1, v2}, Ld/s/y;->j0(Le/a/a/c/a;IJ)V

    goto :goto_4

    :cond_3
    check-cast p1, Le/a/b/d/c/p;

    invoke-virtual {p1}, Le/a/b/d/c/p;->h()J

    move-result-wide v1

    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    invoke-static {p1, v0, v1, v2}, Ld/s/y;->k0(Le/a/a/c/a;IJ)V

    goto :goto_4

    :cond_4
    check-cast p1, Le/a/b/d/c/p;

    invoke-virtual {p1}, Le/a/b/d/c/p;->h()J

    move-result-wide v2

    iget-object p1, p0, Le/a/b/b/c/u0;->b:Le/a/b/f/a;

    const/16 v4, 0x3f

    shr-long v4, v2, v4

    xor-long/2addr v4, v2

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x41

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v1, v4, 0x3

    add-int/lit8 v4, v1, -0x1

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v0, v4

    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1, v0}, Le/a/b/f/c;->j(I)V

    :goto_3
    if-lez v1, :cond_5

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Le/a/b/f/c;->j(I)V

    const/16 v0, 0x8

    shr-long/2addr v2, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
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
