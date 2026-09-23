.class public Lu0/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/tencent/bugly/proguard/ah;
.implements Lg1/k0;
.implements Lo1/j;
.implements Lr2/a1;
.implements Lra/f;
.implements Lyb/h;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 10

    iput p1, p0, Lu0/j;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 39
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void

    .line 40
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Lh1/e;

    const/16 v0, 0x10

    new-array v0, v0, [Lq2/h0;

    invoke-direct {p1, v0}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    return-void

    .line 43
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void

    .line 46
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v2, Lv/d;->j:Lv/w0;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 48
    new-instance v1, Lv/k;

    .line 49
    iget-object p1, v2, Lv/w0;->a:Lf9/k;

    .line 50
    invoke-interface {p1, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lv/p;

    const-wide/high16 v5, -0x8000000000000000L

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, 0x0

    .line 51
    invoke-direct/range {v1 .. v9}, Lv/k;-><init>(Lv/w0;Ljava/lang/Object;Lv/p;JJZ)V

    .line 52
    iput-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void

    .line 53
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p1, Ls/h0;

    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 55
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 56
    new-instance p1, Ls/h0;

    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 57
    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void

    .line 58
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0xb -> :sswitch_2
        0x10 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lu0/j;->a:I

    iput-object p2, p0, Lu0/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Lu0/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, Lu0/j;->a:I

    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    iput-object p3, p0, Lu0/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu0/j;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 34
    new-instance p1, La5/e;

    const/16 v0, 0x1b

    invoke-direct {p1, v0, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lr8/i;->b:Lr8/i;

    invoke-static {v0, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/c;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lu0/j;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lf6/c;

    invoke-direct {v0, p1}, Lf6/c;-><init>(Lf6/c;)V

    iput-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 24
    iget v0, p1, Lf6/c;->i:I

    .line 25
    iget p1, p1, Lf6/c;->h:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 26
    new-array p1, v0, [Lf6/a;

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf9/k;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lu0/j;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg6/a;[I)V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, Lu0/j;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 11
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 12
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    .line 13
    aget v2, p2, v1

    if-nez v2, :cond_2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 14
    aget v2, p2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 15
    filled-new-array {v1}, [I

    move-result-object p1

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    .line 16
    new-array v2, p1, [I

    iput-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 17
    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 18
    :cond_2
    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    :goto_1
    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lu0/j;->a:I

    const-string v0, "error"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lma/q;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lu0/j;->a:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "className"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    iput-object p2, p0, Lu0/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lna/d;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    const/16 p3, 0x12

    iput p3, p0, Lu0/j;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpa/n0;Lpa/m0;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lu0/j;->a:I

    const-string v0, "strings"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedNames"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq2/h0;Lo2/m0;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lu0/j;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 21
    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object p1

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls5/b;I)V
    .locals 0

    iput p2, p0, Lu0/j;->a:I

    packed-switch p2, :pswitch_data_0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    return-void

    .line 30
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 32
    new-instance p2, Lt5/a;

    invoke-direct {p2, p1}, Lt5/a;-><init>(Ls5/b;)V

    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lv9/y;Lba/a;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lu0/j;->a:I

    const-string v0, "module"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lva/k;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lu0/j;->a:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object p1, p1, Lva/k;->a:Lva/h;

    .line 61
    iget-object p1, p1, Lva/h;->a:Lva/z;

    .line 62
    invoke-virtual {p1}, Lva/z;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ls/a;

    invoke-virtual {p1}, Ls/a;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lu0/j;->a:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 71
    new-array p1, p1, [I

    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public static E(Lm5/o;Lm5/o;I)Lm5/o;
    .locals 2

    .line 1
    iget v0, p1, Lm5/o;->a:F

    .line 2
    .line 3
    iget v1, p0, Lm5/o;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    add-int/lit8 p2, p2, 0x1

    .line 7
    .line 8
    int-to-float p2, p2

    .line 9
    div-float/2addr v0, p2

    .line 10
    iget p1, p1, Lm5/o;->b:F

    .line 11
    .line 12
    iget p0, p0, Lm5/o;->b:F

    .line 13
    .line 14
    sub-float/2addr p1, p0

    .line 15
    div-float/2addr p1, p2

    .line 16
    new-instance p2, Lm5/o;

    .line 17
    .line 18
    add-float/2addr v1, v0

    .line 19
    add-float/2addr p0, p1

    .line 20
    invoke-direct {p2, v1, p0}, Lm5/o;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public static i(Ljava/util/List;)Llb/h0;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Llb/h0;->c:Llb/h0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Llb/h0;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Llb/h0;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static k(Lq2/h0;)V
    .locals 10

    .line 1
    iget v0, p0, Lq2/h0;->O:I

    .line 2
    .line 3
    if-lez v0, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lq2/l0;->d:Lq2/d0;

    .line 8
    .line 9
    sget-object v1, Lq2/d0;->e:Lq2/d0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_a

    .line 13
    .line 14
    invoke-virtual {p0}, Lq2/h0;->q()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_a

    .line 19
    .line 20
    invoke-virtual {p0}, Lq2/h0;->r()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_a

    .line 25
    .line 26
    iget-boolean v0, p0, Lq2/h0;->P:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lq2/h0;->J()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 41
    .line 42
    iget-object v0, v0, Lq2/d1;->f:Lr1/o;

    .line 43
    .line 44
    iget v1, v0, Lr1/o;->d:I

    .line 45
    .line 46
    const/16 v3, 0x100

    .line 47
    .line 48
    and-int/2addr v1, v3

    .line 49
    if-eqz v1, :cond_a

    .line 50
    .line 51
    :goto_0
    if-eqz v0, :cond_a

    .line 52
    .line 53
    iget v1, v0, Lr1/o;->c:I

    .line 54
    .line 55
    and-int/2addr v1, v3

    .line 56
    if-eqz v1, :cond_9

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    move-object v4, v0

    .line 60
    move-object v5, v1

    .line 61
    :goto_1
    if-eqz v4, :cond_9

    .line 62
    .line 63
    instance-of v6, v4, Lq2/p;

    .line 64
    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    check-cast v4, Lq2/p;

    .line 68
    .line 69
    invoke-static {v4, v3}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-interface {v4, v6}, Lq2/p;->V(Lq2/h1;)V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_2
    iget v6, v4, Lr1/o;->c:I

    .line 78
    .line 79
    and-int/2addr v6, v3

    .line 80
    if-eqz v6, :cond_8

    .line 81
    .line 82
    instance-of v6, v4, Lq2/m;

    .line 83
    .line 84
    if-eqz v6, :cond_8

    .line 85
    .line 86
    move-object v6, v4

    .line 87
    check-cast v6, Lq2/m;

    .line 88
    .line 89
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    :goto_2
    const/4 v8, 0x1

    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    iget v9, v6, Lr1/o;->c:I

    .line 96
    .line 97
    and-int/2addr v9, v3

    .line 98
    if-eqz v9, :cond_6

    .line 99
    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    if-ne v7, v8, :cond_3

    .line 103
    .line 104
    move-object v4, v6

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    if-nez v5, :cond_4

    .line 107
    .line 108
    new-instance v5, Lh1/e;

    .line 109
    .line 110
    const/16 v8, 0x10

    .line 111
    .line 112
    new-array v8, v8, [Lr1/o;

    .line 113
    .line 114
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    if-eqz v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object v4, v1

    .line 123
    :cond_5
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_3
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    if-ne v7, v8, :cond_8

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    :goto_4
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    goto :goto_1

    .line 137
    :cond_9
    iget v1, v0, Lr1/o;->d:I

    .line 138
    .line 139
    and-int/2addr v1, v3

    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_a
    :goto_5
    iput-boolean v2, p0, Lq2/h0;->N:Z

    .line 146
    .line 147
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iget-object v0, p0, Lh1/e;->a:[Ljava/lang/Object;

    .line 152
    .line 153
    iget p0, p0, Lh1/e;->c:I

    .line 154
    .line 155
    :goto_6
    if-ge v2, p0, :cond_b

    .line 156
    .line 157
    aget-object v1, v0, v2

    .line 158
    .line 159
    check-cast v1, Lq2/h0;

    .line 160
    .line 161
    invoke-static {v1}, Lu0/j;->k(Lq2/h0;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_b
    return-void
.end method

.method public static y(Lm5/o;FF)Lm5/o;
    .locals 2

    .line 1
    iget v0, p0, Lm5/o;->a:F

    .line 2
    .line 3
    iget p0, p0, Lm5/o;->b:F

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpg-float p1, v0, p1

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    sub-float/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    add-float/2addr v0, v1

    .line 14
    :goto_0
    cmpg-float p1, p0, p2

    .line 15
    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    sub-float/2addr p0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    add-float/2addr p0, v1

    .line 21
    :goto_1
    new-instance p1, Lm5/o;

    .line 22
    .line 23
    invoke-direct {p1, v0, p0}, Lm5/o;-><init>(FF)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method


# virtual methods
.method public A(Lu0/j;)Lu0/j;
    .locals 12

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg6/a;

    .line 4
    .line 5
    iget-object v1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg6/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lu0/j;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lu0/j;->x()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, [I

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    iget-object p1, p1, Lu0/j;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    array-length v3, p1

    .line 38
    add-int v4, v2, v3

    .line 39
    .line 40
    add-int/lit8 v4, v4, -0x1

    .line 41
    .line 42
    new-array v4, v4, [I

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    :goto_0
    if-ge v6, v2, :cond_2

    .line 47
    .line 48
    aget v7, v1, v6

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    :goto_1
    if-ge v8, v3, :cond_1

    .line 52
    .line 53
    add-int v9, v6, v8

    .line 54
    .line 55
    aget v10, v4, v9

    .line 56
    .line 57
    aget v11, p1, v8

    .line 58
    .line 59
    invoke-virtual {v0, v7, v11}, Lg6/a;->c(II)I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual {v0, v10, v11}, Lg6/a;->a(II)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    aput v10, v4, v9

    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance p1, Lu0/j;

    .line 76
    .line 77
    invoke-direct {p1, v0, v4}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    :goto_2
    iget-object p1, v0, Lg6/a;->c:Lu0/j;

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public B(Ln/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lba/a;

    .line 4
    .line 5
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/ActionMode$Callback;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lba/a;->u(Ln/a;)Ln/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lj/b0;

    .line 19
    .line 20
    iget-object v0, p1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Lj/b0;->l:Landroid/view/Window;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lj/b0;->x:Lj/r;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lj/b0;->y:Le4/q0;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Le4/q0;->b()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 47
    .line 48
    invoke-static {v0}, Le4/k0;->a(Landroid/view/View;)Le4/q0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Le4/q0;->a(F)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p1, Lj/b0;->y:Le4/q0;

    .line 57
    .line 58
    new-instance v1, Lj/t;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2, p0}, Lj/t;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Le4/q0;->d(Le4/r0;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lj/b0;->u:Ln/a;

    .line 69
    .line 70
    iget-object v0, p1, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 71
    .line 72
    sget-object v1, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 73
    .line 74
    invoke-static {v0}, Le4/b0;->c(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lj/b0;->H()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public C(Ln/a;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj/b0;

    .line 4
    .line 5
    iget-object v0, v0, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget-object v1, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-static {v0}, Le4/b0;->c(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lba/a;

    .line 15
    .line 16
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/view/ActionMode$Callback;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lba/a;->u(Ln/a;)Ln/e;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v2, v0, Lba/a;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ls/q0;

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ls/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/view/Menu;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Lo/b0;

    .line 37
    .line 38
    iget-object v0, v0, Lba/a;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    move-object v4, p2

    .line 43
    check-cast v4, Lo/m;

    .line 44
    .line 45
    invoke-direct {v3, v0, v4}, Lo/b0;-><init>(Landroid/content/Context;Lo/m;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2, v3}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-interface {v1, p1, v3}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public D(Llb/w;Lpa/e;Lra/f;)Lza/g;
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lra/d;->N:Lra/b;

    .line 12
    .line 13
    iget v1, p2, Lpa/e;->m:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p2, Lpa/e;->c:Lpa/d;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, Lhb/b;->a:[I

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    aget v1, v2, v1

    .line 36
    .line 37
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Unsupported annotation argument type: "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p2, Lpa/e;->c:Lpa/d;

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, " (expected "

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 p1, 0x29

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p3

    .line 79
    :pswitch_0
    iget-object p2, p2, Lpa/e;->k:Ljava/util/List;

    .line 80
    .line 81
    const-string v0, "getArrayElementList(...)"

    .line 82
    .line 83
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    const/16 v1, 0xa

    .line 89
    .line 90
    invoke-static {p2, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lpa/e;

    .line 112
    .line 113
    iget-object v2, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lv9/y;

    .line 116
    .line 117
    invoke-interface {v2}, Lv9/y;->j()Ls9/i;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ls9/i;->e()Llb/a0;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v1, p3}, Lu0/j;->D(Llb/w;Lpa/e;Lra/f;)Lza/g;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    new-instance p2, Lza/x;

    .line 137
    .line 138
    invoke-direct {p2, v0, p1}, Lza/x;-><init>(Ljava/util/List;Llb/w;)V

    .line 139
    .line 140
    .line 141
    return-object p2

    .line 142
    :pswitch_1
    new-instance p1, Lza/a;

    .line 143
    .line 144
    iget-object p2, p2, Lpa/e;->j:Lpa/h;

    .line 145
    .line 146
    const-string v0, "getAnnotation(...)"

    .line 147
    .line 148
    invoke-static {p2, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p2, p3}, Lu0/j;->j(Lpa/h;Lra/f;)Lw9/c;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object p1

    .line 159
    :pswitch_2
    new-instance p1, Lza/i;

    .line 160
    .line 161
    iget v0, p2, Lpa/e;->h:I

    .line 162
    .line 163
    invoke-static {p3, v0}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget p2, p2, Lpa/e;->i:I

    .line 168
    .line 169
    invoke-static {p3, p2}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, v0, p2}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :pswitch_3
    new-instance p1, Lza/s;

    .line 178
    .line 179
    iget v0, p2, Lpa/e;->h:I

    .line 180
    .line 181
    invoke-static {p3, v0}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    iget p2, p2, Lpa/e;->l:I

    .line 186
    .line 187
    invoke-direct {p1, p3, p2}, Lza/s;-><init>(Lua/b;I)V

    .line 188
    .line 189
    .line 190
    return-object p1

    .line 191
    :pswitch_4
    new-instance p1, Lza/w;

    .line 192
    .line 193
    iget p2, p2, Lpa/e;->g:I

    .line 194
    .line 195
    invoke-interface {p3, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-direct {p1, p2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :pswitch_5
    new-instance p1, Lza/c;

    .line 204
    .line 205
    iget-wide p2, p2, Lpa/e;->d:J

    .line 206
    .line 207
    const-wide/16 v0, 0x0

    .line 208
    .line 209
    cmp-long v2, p2, v0

    .line 210
    .line 211
    if-eqz v2, :cond_2

    .line 212
    .line 213
    const/4 p2, 0x1

    .line 214
    goto :goto_2

    .line 215
    :cond_2
    const/4 p2, 0x0

    .line 216
    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-direct {p1, p2}, Lza/c;-><init>(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :pswitch_6
    new-instance p1, Lza/c;

    .line 225
    .line 226
    iget-wide p2, p2, Lpa/e;->f:D

    .line 227
    .line 228
    invoke-direct {p1, p2, p3}, Lza/c;-><init>(D)V

    .line 229
    .line 230
    .line 231
    return-object p1

    .line 232
    :pswitch_7
    new-instance p1, Lza/c;

    .line 233
    .line 234
    iget p2, p2, Lpa/e;->e:F

    .line 235
    .line 236
    invoke-direct {p1, p2}, Lza/c;-><init>(F)V

    .line 237
    .line 238
    .line 239
    return-object p1

    .line 240
    :pswitch_8
    iget-wide p1, p2, Lpa/e;->d:J

    .line 241
    .line 242
    if-eqz v0, :cond_3

    .line 243
    .line 244
    new-instance p3, Lza/y;

    .line 245
    .line 246
    invoke-direct {p3, p1, p2}, Lza/y;-><init>(J)V

    .line 247
    .line 248
    .line 249
    return-object p3

    .line 250
    :cond_3
    new-instance p3, Lza/t;

    .line 251
    .line 252
    invoke-direct {p3, p1, p2}, Lza/t;-><init>(J)V

    .line 253
    .line 254
    .line 255
    return-object p3

    .line 256
    :pswitch_9
    iget-wide p1, p2, Lpa/e;->d:J

    .line 257
    .line 258
    long-to-int p2, p1

    .line 259
    if-eqz v0, :cond_4

    .line 260
    .line 261
    new-instance p1, Lza/y;

    .line 262
    .line 263
    invoke-direct {p1, p2}, Lza/y;-><init>(I)V

    .line 264
    .line 265
    .line 266
    return-object p1

    .line 267
    :cond_4
    new-instance p1, Lza/k;

    .line 268
    .line 269
    invoke-direct {p1, p2}, Lza/k;-><init>(I)V

    .line 270
    .line 271
    .line 272
    return-object p1

    .line 273
    :pswitch_a
    iget-wide p1, p2, Lpa/e;->d:J

    .line 274
    .line 275
    long-to-int p2, p1

    .line 276
    int-to-short p1, p2

    .line 277
    if-eqz v0, :cond_5

    .line 278
    .line 279
    new-instance p2, Lza/y;

    .line 280
    .line 281
    invoke-direct {p2, p1}, Lza/y;-><init>(S)V

    .line 282
    .line 283
    .line 284
    return-object p2

    .line 285
    :cond_5
    new-instance p2, Lza/v;

    .line 286
    .line 287
    invoke-direct {p2, p1}, Lza/v;-><init>(S)V

    .line 288
    .line 289
    .line 290
    return-object p2

    .line 291
    :pswitch_b
    new-instance p1, Lza/e;

    .line 292
    .line 293
    iget-wide p2, p2, Lpa/e;->d:J

    .line 294
    .line 295
    long-to-int p3, p2

    .line 296
    int-to-char p2, p3

    .line 297
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-direct {p1, p2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-object p1

    .line 305
    :pswitch_c
    iget-wide p1, p2, Lpa/e;->d:J

    .line 306
    .line 307
    long-to-int p2, p1

    .line 308
    int-to-byte p1, p2

    .line 309
    if-eqz v0, :cond_6

    .line 310
    .line 311
    new-instance p2, Lza/y;

    .line 312
    .line 313
    invoke-direct {p2, p1}, Lza/y;-><init>(B)V

    .line 314
    .line 315
    .line 316
    return-object p2

    .line 317
    :cond_6
    new-instance p2, Lza/d;

    .line 318
    .line 319
    invoke-direct {p2, p1}, Lza/d;-><init>(B)V

    .line 320
    .line 321
    .line 322
    return-object p2

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
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

.method public F(IIII)F
    .locals 17

    .line 1
    sub-int v0, p4, p2

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v1, p3, p1

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move/from16 v4, p1

    .line 22
    .line 23
    move/from16 v1, p2

    .line 24
    .line 25
    move/from16 v6, p3

    .line 26
    .line 27
    move/from16 v5, p4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v1, p1

    .line 31
    .line 32
    move/from16 v4, p2

    .line 33
    .line 34
    move/from16 v5, p3

    .line 35
    .line 36
    move/from16 v6, p4

    .line 37
    .line 38
    :goto_1
    sub-int v7, v5, v1

    .line 39
    .line 40
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sub-int v8, v6, v4

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    neg-int v9, v7

    .line 51
    const/4 v10, 0x2

    .line 52
    div-int/2addr v9, v10

    .line 53
    const/4 v11, -0x1

    .line 54
    if-ge v1, v5, :cond_2

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v12, -0x1

    .line 59
    :goto_2
    if-ge v4, v6, :cond_3

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    :cond_3
    add-int/2addr v5, v12

    .line 63
    move v13, v1

    .line 64
    move v14, v4

    .line 65
    const/4 v15, 0x0

    .line 66
    :goto_3
    if-eq v13, v5, :cond_b

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    move v2, v14

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v2, v13

    .line 73
    :goto_4
    if-eqz v0, :cond_5

    .line 74
    .line 75
    move v10, v13

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    move v10, v14

    .line 78
    :goto_5
    move/from16 v16, v0

    .line 79
    .line 80
    if-ne v15, v3, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    :goto_6
    move-object/from16 v3, p0

    .line 84
    .line 85
    move/from16 p2, v7

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_6
    const/4 v0, 0x0

    .line 89
    goto :goto_6

    .line 90
    :goto_7
    iget-object v7, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v7, Ls5/b;

    .line 93
    .line 94
    invoke-virtual {v7, v2, v10}, Ls5/b;->b(II)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v0, v2, :cond_8

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    if-ne v15, v0, :cond_7

    .line 102
    .line 103
    invoke-static {v13, v14, v1, v4}, Lp4/e;->j(IIII)F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    return v0

    .line 108
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 109
    .line 110
    :cond_8
    add-int/2addr v9, v8

    .line 111
    if-lez v9, :cond_a

    .line 112
    .line 113
    if-eq v14, v6, :cond_9

    .line 114
    .line 115
    add-int/2addr v14, v11

    .line 116
    sub-int v9, v9, p2

    .line 117
    .line 118
    goto :goto_9

    .line 119
    :cond_9
    :goto_8
    const/4 v0, 0x2

    .line 120
    goto :goto_a

    .line 121
    :cond_a
    :goto_9
    add-int/2addr v13, v12

    .line 122
    move/from16 v7, p2

    .line 123
    .line 124
    move/from16 v0, v16

    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    const/4 v10, 0x2

    .line 128
    goto :goto_3

    .line 129
    :cond_b
    move-object/from16 v3, p0

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :goto_a
    if-ne v15, v0, :cond_c

    .line 133
    .line 134
    invoke-static {v5, v6, v1, v4}, Lp4/e;->j(IIII)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    return v0

    .line 139
    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 140
    .line 141
    return v0
.end method

.method public G(IIII)F
    .locals 7

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls5/b;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lu0/j;->F(IIII)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr p3, p1

    .line 10
    sub-int p3, p1, p3

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    .line 15
    if-gez p3, :cond_0

    .line 16
    .line 17
    int-to-float v4, p1

    .line 18
    sub-int p3, p1, p3

    .line 19
    .line 20
    int-to-float p3, p3

    .line 21
    div-float/2addr v4, p3

    .line 22
    const/4 p3, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v4, v0, Ls5/b;->a:I

    .line 25
    .line 26
    if-lt p3, v4, :cond_1

    .line 27
    .line 28
    add-int/lit8 v5, v4, -0x1

    .line 29
    .line 30
    sub-int/2addr v5, p1

    .line 31
    int-to-float v5, v5

    .line 32
    sub-int/2addr p3, p1

    .line 33
    int-to-float p3, p3

    .line 34
    div-float p3, v5, p3

    .line 35
    .line 36
    add-int/lit8 v4, v4, -0x1

    .line 37
    .line 38
    move v6, v4

    .line 39
    move v4, p3

    .line 40
    move p3, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    .line 44
    :goto_0
    int-to-float v5, p2

    .line 45
    sub-int/2addr p4, p2

    .line 46
    int-to-float p4, p4

    .line 47
    mul-float p4, p4, v4

    .line 48
    .line 49
    sub-float p4, v5, p4

    .line 50
    .line 51
    float-to-int p4, p4

    .line 52
    if-gez p4, :cond_2

    .line 53
    .line 54
    sub-int p4, p2, p4

    .line 55
    .line 56
    int-to-float p4, p4

    .line 57
    div-float/2addr v5, p4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget v0, v0, Ls5/b;->b:I

    .line 60
    .line 61
    if-lt p4, v0, :cond_3

    .line 62
    .line 63
    add-int/lit8 v2, v0, -0x1

    .line 64
    .line 65
    sub-int/2addr v2, p2

    .line 66
    int-to-float v2, v2

    .line 67
    sub-int/2addr p4, p2

    .line 68
    int-to-float p4, p4

    .line 69
    div-float v5, v2, p4

    .line 70
    .line 71
    add-int/lit8 v2, v0, -0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v2, p4

    .line 75
    const/high16 v5, 0x3f800000    # 1.0f

    .line 76
    .line 77
    :goto_1
    int-to-float p4, p1

    .line 78
    sub-int/2addr p3, p1

    .line 79
    int-to-float p3, p3

    .line 80
    mul-float p3, p3, v5

    .line 81
    .line 82
    add-float/2addr p3, p4

    .line 83
    float-to-int p3, p3

    .line 84
    invoke-virtual {p0, p1, p2, p3, v2}, Lu0/j;->F(IIII)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-float/2addr p1, v1

    .line 89
    sub-float/2addr p1, v3

    .line 90
    return p1
.end method

.method public H(Lu0/j;)Lu0/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg6/a;

    .line 4
    .line 5
    iget-object v1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg6/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lu0/j;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v0, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lg6/a;

    .line 25
    .line 26
    iget-object p1, p1, Lu0/j;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, [I

    .line 29
    .line 30
    array-length v1, p1

    .line 31
    new-array v2, v1, [I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    aget v4, p1, v3

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    rsub-int v4, v4, 0x3a1

    .line 42
    .line 43
    rem-int/lit16 v4, v4, 0x3a1

    .line 44
    .line 45
    aput v4, v2, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lu0/j;

    .line 51
    .line 52
    invoke-direct {p1, v0, v2}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lu0/j;->g(Lu0/j;)Lu0/j;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public I(Landroid/view/View;[F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [F

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v1, p2}, Lu0/j;->I(Landroid/view/View;[F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    neg-float v1, v1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    int-to-float v2, v2

    .line 29
    neg-float v2, v2

    .line 30
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Ly1/a0;->f([FFF)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v0}, Lr2/j0;->t([F[F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Ly1/a0;->f([FFF)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0}, Lr2/j0;->t([F[F)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, [I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    neg-float v2, v2

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-float v3, v3

    .line 77
    neg-float v3, v3

    .line 78
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v2, v3}, Ly1/a0;->f([FFF)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0}, Lr2/j0;->t([F[F)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    aget v2, v1, v2

    .line 89
    .line 90
    int-to-float v2, v2

    .line 91
    const/4 v3, 0x1

    .line 92
    aget v1, v1, v3

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    invoke-static {v0}, Ly1/a0;->d([F)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v2, v1}, Ly1/a0;->f([FFF)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2, v0}, Lr2/j0;->t([F[F)V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_1

    .line 113
    .line 114
    invoke-static {p1, v0}, Ly1/h0;->v(Landroid/graphics/Matrix;[F)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, v0}, Lr2/j0;->t([F[F)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method

.method public J(Lm5/o;Lm5/o;)I
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ls5/b;

    .line 10
    .line 11
    iget v4, v0, Lm5/o;->a:F

    .line 12
    .line 13
    float-to-int v4, v4

    .line 14
    iget v0, v0, Lm5/o;->b:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    iget v5, v2, Lm5/o;->a:F

    .line 18
    .line 19
    float-to-int v5, v5

    .line 20
    iget v2, v2, Lm5/o;->b:F

    .line 21
    .line 22
    float-to-int v2, v2

    .line 23
    sub-int v6, v2, v0

    .line 24
    .line 25
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sub-int v7, v5, v4

    .line 30
    .line 31
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x1

    .line 37
    if-le v6, v7, :cond_0

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v6, 0x0

    .line 42
    :goto_0
    if-eqz v6, :cond_1

    .line 43
    .line 44
    move/from16 v16, v4

    .line 45
    .line 46
    move v4, v0

    .line 47
    move/from16 v0, v16

    .line 48
    .line 49
    move/from16 v16, v5

    .line 50
    .line 51
    move v5, v2

    .line 52
    move/from16 v2, v16

    .line 53
    .line 54
    :cond_1
    sub-int v7, v5, v4

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    sub-int v10, v2, v0

    .line 61
    .line 62
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    neg-int v11, v7

    .line 67
    div-int/lit8 v11, v11, 0x2

    .line 68
    .line 69
    const/4 v12, -0x1

    .line 70
    if-ge v0, v2, :cond_2

    .line 71
    .line 72
    const/4 v13, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v13, -0x1

    .line 75
    :goto_1
    if-ge v4, v5, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v9, -0x1

    .line 79
    :goto_2
    if-eqz v6, :cond_4

    .line 80
    .line 81
    move v12, v0

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v12, v4

    .line 84
    :goto_3
    if-eqz v6, :cond_5

    .line 85
    .line 86
    move v14, v4

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    move v14, v0

    .line 89
    :goto_4
    invoke-virtual {v3, v12, v14}, Ls5/b;->b(II)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    :goto_5
    if-eq v4, v5, :cond_b

    .line 94
    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    move v14, v0

    .line 98
    goto :goto_6

    .line 99
    :cond_6
    move v14, v4

    .line 100
    :goto_6
    if-eqz v6, :cond_7

    .line 101
    .line 102
    move v15, v4

    .line 103
    goto :goto_7

    .line 104
    :cond_7
    move v15, v0

    .line 105
    :goto_7
    invoke-virtual {v3, v14, v15}, Ls5/b;->b(II)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-eq v14, v12, :cond_8

    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    move v12, v14

    .line 114
    :cond_8
    add-int/2addr v11, v10

    .line 115
    if-lez v11, :cond_a

    .line 116
    .line 117
    if-eq v0, v2, :cond_9

    .line 118
    .line 119
    add-int/2addr v0, v13

    .line 120
    sub-int/2addr v11, v7

    .line 121
    goto :goto_8

    .line 122
    :cond_9
    return v8

    .line 123
    :cond_a
    :goto_8
    add-int/2addr v4, v9

    .line 124
    goto :goto_5

    .line 125
    :cond_b
    return v8
.end method

.method public K(I)Lr8/p;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    const/4 v3, -0x1

    .line 13
    if-eq p1, v3, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lpa/m0;

    .line 18
    .line 19
    iget-object v3, v3, Lpa/m0;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lpa/l0;

    .line 26
    .line 27
    iget-object v3, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lpa/n0;

    .line 30
    .line 31
    iget v4, p1, Lpa/l0;->d:I

    .line 32
    .line 33
    iget-object v3, v3, Lpa/n0;->b:Lva/s;

    .line 34
    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p1, Lpa/l0;->e:Lpa/k0;

    .line 42
    .line 43
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-eq v4, v5, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-ne v4, v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance p1, Lac/p;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget p1, p1, Lpa/l0;->c:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p1, Lr8/p;

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {p1, v0, v1, v2}, Lr8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object p1
.end method

.method public L(FLn3/c;Lac/w;)V
    .locals 6

    .line 1
    sget v0, Lh0/j0;->a:F

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ln3/c;->S(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    cmpg-float p2, p1, p2

    .line 8
    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lp1/f;->e()Lf9/k;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v0

    .line 25
    :goto_0
    invoke-static {p2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :try_start_0
    iget-object v3, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lv/k;

    .line 32
    .line 33
    iget-object v3, v3, Lv/k;->b:Lf1/k1;

    .line 34
    .line 35
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lac/j1;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    :goto_1
    iget-object v4, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lv/k;

    .line 60
    .line 61
    iget-boolean v5, v4, Lv/k;->f:Z

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    sub-float/2addr v3, p1

    .line 66
    invoke-static {v4, v3}, Lv/d;->g(Lv/k;F)Lv/k;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance v3, Lv/k;

    .line 74
    .line 75
    sget-object v4, Lv/d;->j:Lv/w0;

    .line 76
    .line 77
    neg-float p1, p1

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/16 v5, 0x3c

    .line 83
    .line 84
    invoke-direct {v3, v4, p1, v0, v5}, Lv/k;-><init>(Lv/w0;Ljava/lang/Object;Lv/p;I)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 88
    .line 89
    :goto_2
    new-instance p1, Lb8/g;

    .line 90
    .line 91
    const/16 v3, 0xc

    .line 92
    .line 93
    invoke-direct {p1, p0, v0, v3}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x3

    .line 97
    invoke-static {p3, v0, p1, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lu0/j;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    invoke-static {p2, v2, v1}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_3
    invoke-static {p2, v2, v1}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public M(Lf1/a1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls/h0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    instance-of v0, p1, Ls/d0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Ls/d0;

    .line 16
    .line 17
    iget-object v0, p1, Ls/d0;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    iget p1, p1, Ls/d0;->b:I

    .line 20
    .line 21
    if-gtz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    aget-object p1, v0, p1

    .line 26
    .line 27
    const-string v0, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/ClassCastException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public N(Lua/e;Ljava/lang/String;)Lba/a;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lba/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "asString(...)"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lna/q;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v1, p1}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lba/a;-><init>(Lu0/j;Lna/q;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public O(ILd3/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Iterator;

    .line 4
    .line 5
    :goto_0
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lva/l;

    .line 16
    .line 17
    iget v1, v1, Lva/l;->a:I

    .line 18
    .line 19
    if-ge v1, p1, :cond_5

    .line 20
    .line 21
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lva/l;

    .line 30
    .line 31
    iget-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Lva/h;->c:Lva/h;

    .line 40
    .line 41
    iget-object v3, v1, Lva/l;->b:Lva/m0;

    .line 42
    .line 43
    iget v4, v1, Lva/l;->a:I

    .line 44
    .line 45
    iget-boolean v1, v1, Lva/l;->c:Z

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    const/4 v6, 0x3

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    check-cast v2, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v7, Lva/m0;->e:Lva/j0;

    .line 68
    .line 69
    if-ne v3, v7, :cond_0

    .line 70
    .line 71
    check-cast v2, Lva/a;

    .line 72
    .line 73
    invoke-virtual {p2, v4, v6}, Ld3/e;->L(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2}, Lva/a;->d(Ld3/e;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v4, v5}, Ld3/e;->L(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    iget v7, v3, Lva/m0;->b:I

    .line 84
    .line 85
    invoke-virtual {p2, v4, v7}, Ld3/e;->L(II)V

    .line 86
    .line 87
    .line 88
    invoke-static {p2, v3, v2}, Lva/h;->k(Ld3/e;Lva/m0;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    sget-object v1, Lva/m0;->e:Lva/j0;

    .line 93
    .line 94
    if-ne v3, v1, :cond_2

    .line 95
    .line 96
    check-cast v2, Lva/a;

    .line 97
    .line 98
    invoke-virtual {p2, v4, v6}, Ld3/e;->L(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p2}, Lva/a;->d(Ld3/e;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v4, v5}, Ld3/e;->L(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget v1, v3, Lva/m0;->b:I

    .line 109
    .line 110
    invoke-virtual {p2, v4, v1}, Ld3/e;->L(II)V

    .line 111
    .line 112
    .line 113
    invoke-static {p2, v3, v2}, Lva/h;->k(Ld3/e;Lva/m0;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .line 128
    iput-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    check-cast v0, Lf9/k;

    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "[UserInfo] Successfully uploaded user info."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 5
    iput-wide p1, v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    .line 6
    iget-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/bugly/proguard/r;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lu0/j;->K(I)Lr8/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lr8/p;->a:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    .line 10
    iget-object p1, p1, Lr8/p;->b:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Ljava/util/List;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/16 v7, 0x3e

    .line 17
    .line 18
    const-string v3, "."

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v2 .. v7}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/16 v6, 0x3e

    .line 40
    .line 41
    const-string v2, "/"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static/range {v1 .. v6}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x2f

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public c(Landroid/view/View;[F)V
    .locals 0

    .line 1
    invoke-static {p2}, Ly1/a0;->d([F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lu0/j;->I(Landroid/view/View;[F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public d(Ljava/lang/Integer;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg1/k0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lg1/k0;->d(Ljava/lang/Integer;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lf1/k2;

    .line 13
    .line 14
    iget v2, v1, Lf1/k2;->v:I

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v3, v1, Lf1/k2;->b:[I

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lf1/k2;->D([II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v1, p1, v2, v3}, Lp9/x1;->d(Lf1/k2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public e(Lo1/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf9/n;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu0/j;->K(I)Lr8/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lr8/p;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public g(Lu0/j;)Lu0/j;
    .locals 8

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg6/a;

    .line 4
    .line 5
    iget-object v1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg6/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lu0/j;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lu0/j;->x()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, [I

    .line 32
    .line 33
    iget-object p1, p1, Lu0/j;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, [I

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    array-length v3, p1

    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v7, v1

    .line 43
    move-object v1, p1

    .line 44
    move-object p1, v7

    .line 45
    :goto_0
    array-length v2, v1

    .line 46
    new-array v2, v2, [I

    .line 47
    .line 48
    array-length v3, v1

    .line 49
    array-length v4, p1

    .line 50
    sub-int/2addr v3, v4

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    move v4, v3

    .line 56
    :goto_1
    array-length v5, v1

    .line 57
    if-ge v4, v5, :cond_3

    .line 58
    .line 59
    sub-int v5, v4, v3

    .line 60
    .line 61
    aget v5, p1, v5

    .line 62
    .line 63
    aget v6, v1, v4

    .line 64
    .line 65
    invoke-virtual {v0, v5, v6}, Lg6/a;->a(II)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    aput v5, v2, v4

    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance p1, Lu0/j;

    .line 75
    .line 76
    invoke-direct {p1, v0, v2}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string v0, "ModulusPolys do not have same ModulusGF field"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpa/n0;

    .line 4
    .line 5
    iget-object v0, v0, Lpa/n0;->b:Lva/s;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "getString(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public h(Lk6/c;Lk6/c;)F
    .locals 4

    .line 1
    iget v0, p1, Lm5/o;->a:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    iget v1, p1, Lm5/o;->b:F

    .line 5
    .line 6
    float-to-int v1, v1

    .line 7
    iget v2, p2, Lm5/o;->a:F

    .line 8
    .line 9
    float-to-int v2, v2

    .line 10
    iget v3, p2, Lm5/o;->b:F

    .line 11
    .line 12
    float-to-int v3, v3

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lu0/j;->G(IIII)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget p2, p2, Lm5/o;->a:F

    .line 18
    .line 19
    float-to-int p2, p2

    .line 20
    iget p1, p1, Lm5/o;->a:F

    .line 21
    .line 22
    float-to-int p1, p1

    .line 23
    invoke-virtual {p0, p2, v3, p1, v1}, Lu0/j;->G(IIII)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/high16 v1, 0x40e00000    # 7.0f

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    div-float/2addr p1, v1

    .line 36
    return p1

    .line 37
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    div-float/2addr v0, v1

    .line 44
    return v0

    .line 45
    :cond_1
    add-float/2addr v0, p1

    .line 46
    const/high16 p1, 0x41600000    # 14.0f

    .line 47
    .line 48
    div-float/2addr v0, p1

    .line 49
    return v0
.end method

.method public j(Lpa/h;Lra/f;)Lw9/c;
    .locals 10

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lpa/h;->c:I

    .line 12
    .line 13
    invoke-static {p2, v0}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lv9/y;

    .line 20
    .line 21
    iget-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lba/a;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lv9/v;->f(Lv9/y;Lua/b;Lba/a;)Lv9/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p1, Lpa/h;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    invoke-static {v0}, Lnb/l;->f(Lv9/k;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_7

    .line 42
    .line 43
    sget v1, Lxa/d;->a:I

    .line 44
    .line 45
    sget-object v1, Lv9/f;->e:Lv9/f;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_7

    .line 52
    .line 53
    invoke-interface {v0}, Lv9/e;->w()Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "getConstructors(...)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v1, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-static {v1}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ly9/i;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    check-cast v1, Ly9/u;

    .line 73
    .line 74
    invoke-virtual {v1}, Ly9/u;->S()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "getValueParameters(...)"

    .line 79
    .line 80
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v2, 0xa

    .line 84
    .line 85
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Ls8/c0;->H(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/16 v3, 0x10

    .line 94
    .line 95
    if-ge v2, v3, :cond_0

    .line 96
    .line 97
    const/16 v2, 0x10

    .line 98
    .line 99
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    move-object v4, v2

    .line 119
    check-cast v4, Ly9/r0;

    .line 120
    .line 121
    check-cast v4, Ly9/m;

    .line 122
    .line 123
    invoke-virtual {v4}, Ly9/m;->getName()Lua/e;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p1, Lpa/h;->d:Ljava/util/List;

    .line 132
    .line 133
    const-string v1, "getArgumentList(...)"

    .line 134
    .line 135
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lpa/f;

    .line 158
    .line 159
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget v4, v2, Lpa/f;->c:I

    .line 163
    .line 164
    invoke-static {p2, v4}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ly9/r0;

    .line 173
    .line 174
    const/4 v5, 0x0

    .line 175
    if-nez v4, :cond_3

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    new-instance v6, Lr8/j;

    .line 179
    .line 180
    iget v7, v2, Lpa/f;->c:I

    .line 181
    .line 182
    invoke-static {p2, v7}, Li9/a;->E(Lra/f;I)Lua/e;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v4, Ly9/s0;

    .line 187
    .line 188
    invoke-virtual {v4}, Ly9/s0;->getType()Llb/w;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    const-string v8, "getType(...)"

    .line 193
    .line 194
    invoke-static {v4, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v2, v2, Lpa/f;->d:Lpa/e;

    .line 198
    .line 199
    const-string v8, "getValue(...)"

    .line 200
    .line 201
    invoke-static {v2, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v4, v2, p2}, Lu0/j;->D(Llb/w;Lpa/e;Lra/f;)Lza/g;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {p0, v8, v4, v2}, Lu0/j;->l(Lza/g;Llb/w;Lpa/e;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_4

    .line 213
    .line 214
    move-object v5, v8

    .line 215
    :cond_4
    if-nez v5, :cond_5

    .line 216
    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v8, "Unexpected argument value: actual type "

    .line 220
    .line 221
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v2, v2, Lpa/e;->c:Lpa/d;

    .line 225
    .line 226
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v2, " != expected type "

    .line 230
    .line 231
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string v4, "message"

    .line 242
    .line 243
    invoke-static {v2, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v5, Lza/j;

    .line 247
    .line 248
    invoke-direct {v5, v2}, Lza/j;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_5
    invoke-direct {v6, v7, v5}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    move-object v5, v6

    .line 255
    :goto_2
    if-eqz v5, :cond_2

    .line 256
    .line 257
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_6
    invoke-static {v1}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    sget-object p1, Ls8/x;->a:Ls8/x;

    .line 267
    .line 268
    :goto_3
    new-instance p2, Lw9/c;

    .line 269
    .line 270
    invoke-interface {v0}, Lv9/e;->n()Llb/a0;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    sget-object v1, Lv9/m0;->e0:Lv9/n0;

    .line 275
    .line 276
    invoke-direct {p2, v0, p1, v1}, Lw9/c;-><init>(Llb/a0;Ljava/util/Map;Lv9/m0;)V

    .line 277
    .line 278
    .line 279
    return-object p2
.end method

.method public l(Lza/g;Llb/w;Lpa/e;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv9/y;

    .line 4
    .line 5
    iget-object v1, p3, Lpa/e;->c:Lpa/d;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v2, Lhb/b;->a:[I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget v1, v2, v1

    .line 18
    .line 19
    :goto_0
    const/16 v2, 0xa

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq v1, v2, :cond_6

    .line 24
    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lza/g;->a(Lv9/y;)Llb/w;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    instance-of v1, p1, Lza/b;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lza/b;

    .line 44
    .line 45
    iget-object v1, v1, Lza/g;->a:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v5, p3, Lpa/e;->k:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ne v2, v5, :cond_5

    .line 61
    .line 62
    invoke-interface {v0}, Lv9/y;->j()Ls9/i;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Ls9/i;->g(Llb/w;)Llb/w;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    move-object p2, v1

    .line 75
    check-cast p2, Ljava/util/Collection;

    .line 76
    .line 77
    const-string v0, "<this>"

    .line 78
    .line 79
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ll9/d;

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    sub-int/2addr p2, v3

    .line 89
    invoke-direct {v0, v4, p2, v3}, Ll9/b;-><init>(III)V

    .line 90
    .line 91
    .line 92
    instance-of p2, v0, Ljava/util/Collection;

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    move-object p2, v0

    .line 97
    check-cast p2, Ljava/util/Collection;

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-virtual {v0}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    :cond_4
    move-object v0, p2

    .line 111
    check-cast v0, Ll9/c;

    .line 112
    .line 113
    iget-boolean v2, v0, Ll9/c;->c:Z

    .line 114
    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-virtual {v0}, Ll9/c;->nextInt()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move-object v2, v1

    .line 122
    check-cast v2, Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Lza/g;

    .line 129
    .line 130
    iget-object v5, p3, Lpa/e;->k:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lpa/e;

    .line 137
    .line 138
    const-string v5, "getArrayElement(...)"

    .line 139
    .line 140
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2, p1, v0}, Lu0/j;->l(Lza/g;Llb/w;Lpa/e;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string p3, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    .line 153
    .line 154
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p2

    .line 174
    :cond_6
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    instance-of p2, p1, Lv9/e;

    .line 183
    .line 184
    if-eqz p2, :cond_7

    .line 185
    .line 186
    check-cast p1, Lv9/e;

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    const/4 p1, 0x0

    .line 190
    :goto_1
    if-eqz p1, :cond_9

    .line 191
    .line 192
    sget-object p2, Ls9/i;->e:Lua/e;

    .line 193
    .line 194
    sget-object p2, Ls9/o;->Q:Lua/d;

    .line 195
    .line 196
    invoke-static {p1, p2}, Ls9/i;->b(Lv9/e;Lua/d;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_8

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    :goto_2
    return v4

    .line 204
    :cond_9
    :goto_3
    return v3
.end method

.method public m(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg6/a;

    .line 4
    .line 5
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lu0/j;->q(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    if-ne p1, v3, :cond_2

    .line 19
    .line 20
    array-length p1, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v2, p1, :cond_1

    .line 23
    .line 24
    aget v4, v1, v2

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Lg6/a;->a(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v3

    .line 34
    :cond_2
    aget v2, v1, v2

    .line 35
    .line 36
    array-length v4, v1

    .line 37
    :goto_1
    if-ge v3, v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p1, v2}, Lg6/a;->c(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    aget v5, v1, v3

    .line 44
    .line 45
    invoke-virtual {v0, v2, v5}, Lg6/a;->a(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    return v2
.end method

.method public n(FIIF)Lk6/a;
    .locals 11

    .line 1
    mul-float p4, p4, p1

    .line 2
    .line 3
    float-to-int p4, p4

    .line 4
    sub-int v0, p2, p4

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ls5/b;

    .line 14
    .line 15
    iget v2, v0, Ls5/b;->a:I

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    sub-int/2addr v2, v10

    .line 19
    add-int/2addr p2, p4

    .line 20
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sub-int v6, p2, v4

    .line 25
    .line 26
    int-to-float p2, v6

    .line 27
    const/high16 v2, 0x40400000    # 3.0f

    .line 28
    .line 29
    mul-float v2, v2, p1

    .line 30
    .line 31
    cmpg-float p2, p2, v2

    .line 32
    .line 33
    if-ltz p2, :cond_c

    .line 34
    .line 35
    sub-int p2, p3, p4

    .line 36
    .line 37
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    iget p2, v0, Ls5/b;->b:I

    .line 42
    .line 43
    sub-int/2addr p2, v10

    .line 44
    add-int/2addr p3, p4

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    sub-int v7, p2, v5

    .line 50
    .line 51
    int-to-float p2, v7

    .line 52
    cmpg-float p2, p2, v2

    .line 53
    .line 54
    if-ltz p2, :cond_b

    .line 55
    .line 56
    new-instance v2, Lk6/b;

    .line 57
    .line 58
    iget-object p2, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v3, p2

    .line 61
    check-cast v3, Ls5/b;

    .line 62
    .line 63
    iget-object p2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v9, p2

    .line 66
    check-cast v9, Lm5/p;

    .line 67
    .line 68
    move v8, p1

    .line 69
    invoke-direct/range {v2 .. v9}, Lk6/b;-><init>(Ls5/b;IIIIFLm5/p;)V

    .line 70
    .line 71
    .line 72
    iget p1, v2, Lk6/b;->e:I

    .line 73
    .line 74
    iget p2, v2, Lk6/b;->c:I

    .line 75
    .line 76
    add-int/2addr p1, p2

    .line 77
    iget p3, v2, Lk6/b;->f:I

    .line 78
    .line 79
    div-int/lit8 p4, p3, 0x2

    .line 80
    .line 81
    iget v0, v2, Lk6/b;->d:I

    .line 82
    .line 83
    add-int/2addr p4, v0

    .line 84
    const/4 v0, 0x3

    .line 85
    new-array v0, v0, [I

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_0
    if-ge v4, p3, :cond_9

    .line 89
    .line 90
    and-int/lit8 v5, v4, 0x1

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    if-nez v5, :cond_0

    .line 94
    .line 95
    add-int/lit8 v5, v4, 0x1

    .line 96
    .line 97
    div-int/2addr v5, v6

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 100
    .line 101
    div-int/2addr v5, v6

    .line 102
    neg-int v5, v5

    .line 103
    :goto_1
    add-int/2addr v5, p4

    .line 104
    aput v1, v0, v1

    .line 105
    .line 106
    aput v1, v0, v10

    .line 107
    .line 108
    aput v1, v0, v6

    .line 109
    .line 110
    move v7, p2

    .line 111
    :goto_2
    if-ge v7, p1, :cond_1

    .line 112
    .line 113
    invoke-virtual {v3, v7, v5}, Ls5/b;->b(II)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_1

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    const/4 v8, 0x0

    .line 123
    :goto_3
    if-ge v7, p1, :cond_7

    .line 124
    .line 125
    invoke-virtual {v3, v7, v5}, Ls5/b;->b(II)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_5

    .line 130
    .line 131
    if-ne v8, v10, :cond_2

    .line 132
    .line 133
    aget v9, v0, v10

    .line 134
    .line 135
    add-int/2addr v9, v10

    .line 136
    aput v9, v0, v10

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_2
    if-ne v8, v6, :cond_4

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Lk6/b;->a([I)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_3

    .line 146
    .line 147
    invoke-virtual {v2, v5, v7, v0}, Lk6/b;->b(II[I)Lk6/a;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-eqz v8, :cond_3

    .line 152
    .line 153
    return-object v8

    .line 154
    :cond_3
    aget v8, v0, v6

    .line 155
    .line 156
    aput v8, v0, v1

    .line 157
    .line 158
    aput v10, v0, v10

    .line 159
    .line 160
    aput v1, v0, v6

    .line 161
    .line 162
    const/4 v8, 0x1

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 165
    .line 166
    aget v9, v0, v8

    .line 167
    .line 168
    add-int/2addr v9, v10

    .line 169
    aput v9, v0, v8

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_5
    if-ne v8, v10, :cond_6

    .line 173
    .line 174
    add-int/lit8 v8, v8, 0x1

    .line 175
    .line 176
    :cond_6
    aget v9, v0, v8

    .line 177
    .line 178
    add-int/2addr v9, v10

    .line 179
    aput v9, v0, v8

    .line 180
    .line 181
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v2, v0}, Lk6/b;->a([I)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_8

    .line 189
    .line 190
    invoke-virtual {v2, v5, p1, v0}, Lk6/b;->b(II[I)Lk6/a;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_8

    .line 195
    .line 196
    return-object v5

    .line 197
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_9
    iget-object p1, v2, Lk6/b;->b:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-nez p2, :cond_a

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lk6/a;

    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_a
    sget-object p1, Lm5/i;->c:Lm5/i;

    .line 216
    .line 217
    throw p1

    .line 218
    :cond_b
    sget-object p1, Lm5/i;->c:Lm5/i;

    .line 219
    .line 220
    throw p1

    .line 221
    :cond_c
    sget-object p1, Lm5/i;->c:Lm5/i;

    .line 222
    .line 223
    throw p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lf9/k;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lma/q;

    .line 4
    .line 5
    iget-object v0, v0, Lma/q;->a:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    new-instance v1, Lma/p;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lma/p;-><init>(Lu0/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object p3, v1, Lma/p;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    invoke-static {p3, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lr8/j;

    .line 47
    .line 48
    iget-object v4, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v3, v1, Lma/p;->c:Lr8/j;

    .line 57
    .line 58
    iget-object v3, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v9, v3

    .line 61
    check-cast v9, Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "ret"

    .line 64
    .line 65
    invoke-static {v9, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 p1, 0x28

    .line 77
    .line 78
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v6, Lna/r;->a:Lna/r;

    .line 82
    .line 83
    const/16 v7, 0x1e

    .line 84
    .line 85
    const-string v3, ""

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-static/range {v2 .. v7}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 p1, 0x29

    .line 97
    .line 98
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v2, 0x1

    .line 106
    if-le p1, v2, :cond_1

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "L"

    .line 111
    .line 112
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v2, 0x3b

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    :cond_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v2, "internalName"

    .line 135
    .line 136
    invoke-static {p2, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v2, "jvmDescriptor"

    .line 140
    .line 141
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/16 p2, 0x2e

    .line 153
    .line 154
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p2, v1, Lma/p;->c:Lr8/j;

    .line 165
    .line 166
    iget-object p2, p2, Lr8/j;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p2, Lma/t;

    .line 169
    .line 170
    new-instance v2, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-static {p3, v8}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    .line 189
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Lr8/j;

    .line 194
    .line 195
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v3, Lma/t;

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    new-instance p3, Lma/n;

    .line 204
    .line 205
    iget-object v1, v1, Lma/p;->a:Ljava/lang/String;

    .line 206
    .line 207
    invoke-direct {p3, p2, v2, v1}, Lma/n;-><init>(Lma/t;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public p(I)Lf6/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lf6/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lu0/j;->v(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget-object v1, v0, v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :goto_0
    const/4 v2, 0x5

    .line 16
    if-ge v1, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lu0/j;->v(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, v1

    .line 23
    if-ltz v2, :cond_1

    .line 24
    .line 25
    aget-object v2, v0, v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lu0/j;->v(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v1

    .line 35
    array-length v3, v0

    .line 36
    if-ge v2, v3, :cond_2

    .line 37
    .line 38
    aget-object v2, v0, v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public q(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    sub-int/2addr v1, p1

    .line 9
    aget p1, v0, v1

    .line 10
    .line 11
    return p1
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    return v0
.end method

.method public s(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const-string v1, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v1, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    move p1, v1

    .line 55
    :goto_0
    monitor-exit v0

    .line 56
    return p1

    .line 57
    :goto_1
    monitor-exit v0

    .line 58
    throw p1
.end method

.method public t()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public toInstant()Lyb/d;
    .locals 4

    .line 1
    new-instance v0, Lyb/e;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " when parsing an Instant from \""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const/16 v3, 0x40

    .line 25
    .line 26
    invoke-static {v3, v2}, Lyb/f;->l(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x22

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Lyb/e;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lu0/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {p0}, Lu0/j;->r()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v2, v2, 0x8

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lu0/j;->r()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_0
    if-ltz v2, :cond_6

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lu0/j;->q(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    if-gez v3, :cond_0

    .line 36
    .line 37
    const-string v4, " - "

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    neg-int v3, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lez v4, :cond_1

    .line 49
    .line 50
    const-string v4, " + "

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 56
    .line 57
    if-eq v3, v1, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    if-eqz v2, :cond_5

    .line 63
    .line 64
    if-ne v2, v1, :cond_4

    .line 65
    .line 66
    const/16 v3, 0x78

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const-string v3, "x^"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :pswitch_2
    new-instance v0, Ljava/util/Formatter;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object v2, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, [Lf6/a;

    .line 96
    .line 97
    array-length v3, v2

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_3
    if-ge v5, v3, :cond_8

    .line 102
    .line 103
    aget-object v7, v2, v5

    .line 104
    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    const-string v7, "%3d:    |   %n"

    .line 108
    .line 109
    add-int/lit8 v8, v6, 0x1

    .line 110
    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    new-array v9, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v6, v9, v4

    .line 118
    .line 119
    invoke-virtual {v0, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 120
    .line 121
    .line 122
    move v6, v8

    .line 123
    goto :goto_4

    .line 124
    :catchall_0
    move-exception v1

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    const-string v8, "%3d: %3d|%3d%n"

    .line 127
    .line 128
    add-int/lit8 v9, v6, 0x1

    .line 129
    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    iget v10, v7, Lf6/a;->f:I

    .line 135
    .line 136
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    iget v7, v7, Lf6/a;->e:I

    .line 141
    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    const/4 v11, 0x3

    .line 147
    new-array v11, v11, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v6, v11, v4

    .line 150
    .line 151
    aput-object v10, v11, v1

    .line 152
    .line 153
    const/4 v6, 0x2

    .line 154
    aput-object v7, v11, v6

    .line 155
    .line 156
    invoke-virtual {v0, v8, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 157
    .line 158
    .line 159
    move v6, v9

    .line 160
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 168
    .line 169
    .line 170
    return-object v1

    .line 171
    :goto_5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :catchall_1
    move-exception v2

    .line 173
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :catchall_2
    move-exception v0

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_6
    throw v2

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public u()Lo2/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf1/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lo2/m0;

    .line 10
    .line 11
    return-object v0
.end method

.method public v(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf6/c;

    .line 4
    .line 5
    iget v0, v0, Lf6/c;->h:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    return p1
.end method

.method public w(Lm5/o;)Z
    .locals 4

    .line 1
    iget v0, p1, Lm5/o;->a:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    .line 6
    if-ltz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ls5/b;

    .line 11
    .line 12
    iget v3, v2, Ls5/b;->a:I

    .line 13
    .line 14
    int-to-float v3, v3

    .line 15
    cmpg-float v0, v0, v3

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    iget p1, p1, Lm5/o;->b:F

    .line 20
    .line 21
    cmpl-float v0, p1, v1

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget v0, v2, Ls5/b;->b:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    cmpg-float p1, p1, v0

    .line 29
    .line 30
    if-gez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    return v1
.end method

.method public z(I)Lu0/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lu0/j;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lu0/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg6/a;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, v1, Lg6/a;->c:Lu0/j;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    array-length v2, v0

    .line 19
    new-array v3, v2, [I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v2, :cond_2

    .line 23
    .line 24
    aget v5, v0, v4

    .line 25
    .line 26
    invoke-virtual {v1, v5, p1}, Lg6/a;->c(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    aput v5, v3, v4

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p1, Lu0/j;

    .line 36
    .line 37
    invoke-direct {p1, v1, v3}, Lu0/j;-><init>(Lg6/a;[I)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method
