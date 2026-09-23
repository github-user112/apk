.class public final Lf1/d1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c;
.implements Lv/y0;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lf1/d1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lf1/d1;->b:I

    .line 4
    iput p2, p0, Lf1/d1;->c:I

    return-void
.end method

.method public constructor <init>(IILv/t;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lf1/d1;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lf1/d1;->b:I

    .line 8
    iput p2, p0, Lf1/d1;->c:I

    .line 9
    new-instance v0, Lba/a;

    new-instance v1, Lv/y;

    invoke-direct {v1, p1, p2, p3}, Lv/y;-><init>(IILv/t;)V

    invoke-direct {v0, v1}, Lba/a;-><init>(Lv/w;)V

    iput-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf1/c;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf1/d1;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/d1;->d:Ljava/lang/Object;

    iput p2, p0, Lf1/d1;->b:I

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public b(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/c;

    .line 4
    .line 5
    iget v1, p0, Lf1/d1;->c:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lf1/d1;->b:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, v1

    .line 14
    invoke-interface {v0, p1, p2}, Lf1/c;->b(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lf1/d1;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lf1/d1;->c:I

    .line 6
    .line 7
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lf1/c;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lf1/c;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/c;

    .line 4
    .line 5
    invoke-interface {v0}, Lf1/c;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(III)V
    .locals 2

    .line 1
    iget v0, p0, Lf1/d1;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lf1/d1;->b:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lf1/c;

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    add-int/2addr p2, v0

    .line 15
    invoke-interface {v1, p1, p2, p3}, Lf1/c;->e(III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/c;

    .line 4
    .line 5
    iget v1, p0, Lf1/d1;->c:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lf1/d1;->b:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, v1

    .line 14
    invoke-interface {v0, p1, p2}, Lf1/c;->f(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public g(Lv/p;Lv/p;Lv/p;)J
    .locals 2

    .line 1
    iget p1, p0, Lf1/d1;->c:I

    .line 2
    .line 3
    iget p2, p0, Lf1/d1;->b:I

    .line 4
    .line 5
    add-int/2addr p2, p1

    .line 6
    int-to-long p1, p2

    .line 7
    const-wide/32 v0, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long p1, p1, v0

    .line 11
    .line 12
    return-wide p1
.end method

.method public h(II)B
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    aget-byte p1, p2, p1

    .line 8
    .line 9
    return p1
.end method

.method public i(Lv/p;Lv/p;Lv/p;)Lv/p;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf1/d1;->g(Lv/p;Lv/p;Lv/p;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lba/a;

    .line 8
    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lba/a;->p(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public j()V
    .locals 1

    .line 1
    iget v0, p0, Lf1/d1;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "OffsetApplier up called with no corresponding down"

    .line 11
    .line 12
    invoke-static {v0}, Lf1/t;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lf1/d1;->c:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Lf1/d1;->c:I

    .line 20
    .line 21
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lf1/c;

    .line 24
    .line 25
    invoke-interface {v0}, Lf1/c;->j()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public k(Lf9/n;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/c;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lf1/c;->k(Lf9/n;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public l(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/c;

    .line 4
    .line 5
    iget v1, p0, Lf1/d1;->c:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lf1/d1;->b:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    add-int/2addr p1, v1

    .line 14
    invoke-interface {v0, p1, p2}, Lf1/c;->l(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic m()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lba/a;

    .line 5
    .line 6
    move-wide v2, p1

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-virtual/range {v1 .. v6}, Lba/a;->n(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public o(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    int-to-byte p3, p3

    .line 8
    aput-byte p3, p2, p1

    .line 9
    .line 10
    return-void
.end method

.method public p(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lba/a;

    .line 5
    .line 6
    move-wide v2, p1

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-virtual/range {v1 .. v6}, Lba/a;->p(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lf1/d1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Lf1/d1;->b:I

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    iget v3, p0, Lf1/d1;->c:I

    .line 18
    .line 19
    mul-int v2, v2, v3

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v3, :cond_3

    .line 29
    .line 30
    iget-object v5, p0, Lf1/d1;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, [[B

    .line 33
    .line 34
    aget-object v5, v5, v4

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_1
    if-ge v6, v1, :cond_2

    .line 38
    .line 39
    aget-byte v7, v5, v6

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    if-eq v7, v8, :cond_0

    .line 45
    .line 46
    const-string v7, "  "

    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    const-string v7, " 1"

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-string v7, " 0"

    .line 59
    .line 60
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 v5, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
