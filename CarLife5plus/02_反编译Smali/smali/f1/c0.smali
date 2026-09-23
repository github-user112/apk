.class public final Lf1/c0;
.super Lf1/t1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf1/c0;->b:I

    sget-object v0, Lf1/w0;->f:Lf1/w0;

    .line 1
    invoke-direct {p0, p1}, Lf1/t1;-><init>(Lf9/a;)V

    .line 2
    iput-object v0, p0, Lf1/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf9/k;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lf1/c0;->b:I

    .line 3
    new-instance v0, Lb3/f0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 4
    invoke-direct {p0, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 5
    new-instance v0, Lf1/d0;

    invoke-direct {v0, p1}, Lf1/d0;-><init>(Lf9/k;)V

    iput-object v0, p0, Lf1/c0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lf1/u1;
    .locals 13

    .line 1
    iget v0, p0, Lf1/c0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lf1/u1;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v4, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    iget-object v0, p0, Lf1/c0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v5, v0

    .line 18
    check-cast v5, Lf1/p2;

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    invoke-direct/range {v1 .. v6}, Lf1/u1;-><init>(Lf1/t1;Ljava/lang/Object;ZLf1/p2;Z)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    move-object v3, p1

    .line 28
    new-instance v7, Lf1/u1;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    const/4 v10, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    :goto_1
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x1

    .line 39
    move-object v8, p0

    .line 40
    move-object v9, v3

    .line 41
    invoke-direct/range {v7 .. v12}, Lf1/u1;-><init>(Lf1/t1;Ljava/lang/Object;ZLf1/p2;Z)V

    .line 42
    .line 43
    .line 44
    return-object v7

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lf1/y2;
    .locals 1

    .line 1
    iget v0, p0, Lf1/c0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lf1/t1;->b()Lf1/y2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lf1/c0;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lf1/d0;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
