.class public final synthetic Lz7/w1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/w1;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/w1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/w1;->a:Lz7/w1;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerOption"

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "id"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "label"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "trigger"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "action"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "enabled"

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lz7/w1;->descriptor:Llc/e;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lz7/w1;->descriptor:Llc/e;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lmc/b;->l(Llc/e;)Lmc/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v1, Lz7/b2;->f:[Lr8/h;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v8, v4

    .line 13
    move-object v9, v8

    .line 14
    move-object v10, v9

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    :goto_0
    if-eqz v4, :cond_6

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v12, -0x1

    .line 26
    if-eq v5, v12, :cond_5

    .line 27
    .line 28
    if-eqz v5, :cond_4

    .line 29
    .line 30
    if-eq v5, v2, :cond_3

    .line 31
    .line 32
    const/4 v12, 0x2

    .line 33
    if-eq v5, v12, :cond_2

    .line 34
    .line 35
    const/4 v12, 0x3

    .line 36
    if-eq v5, v12, :cond_1

    .line 37
    .line 38
    const/4 v11, 0x4

    .line 39
    if-ne v5, v11, :cond_0

    .line 40
    .line 41
    invoke-interface {p1, v0, v11}, Lmc/a;->v(Llc/e;I)Z

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    or-int/lit8 v6, v6, 0x10

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lkc/f;

    .line 49
    .line 50
    invoke-direct {p1, v5}, Lkc/f;-><init>(I)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    aget-object v5, v1, v12

    .line 55
    .line 56
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lkc/a;

    .line 61
    .line 62
    invoke-interface {p1, v0, v12, v5, v10}, Lmc/a;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v10, v5

    .line 67
    check-cast v10, Ljava/util/List;

    .line 68
    .line 69
    or-int/lit8 v6, v6, 0x8

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    aget-object v5, v1, v12

    .line 73
    .line 74
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lkc/a;

    .line 79
    .line 80
    invoke-interface {p1, v0, v12, v5, v9}, Lmc/a;->q(Llc/e;ILkc/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    move-object v9, v5

    .line 85
    check-cast v9, Ljava/util/List;

    .line 86
    .line 87
    or-int/lit8 v6, v6, 0x4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p1, v0, v2}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    or-int/lit8 v6, v6, 0x2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-interface {p1, v0, v3}, Lmc/a;->h(Llc/e;I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    or-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v4, 0x0

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 107
    .line 108
    .line 109
    new-instance v5, Lz7/b2;

    .line 110
    .line 111
    invoke-direct/range {v5 .. v11}, Lz7/b2;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 112
    .line 113
    .line 114
    return-object v5
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lz7/b2;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lz7/w1;->descriptor:Llc/e;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lz7/b2;->f:[Lr8/h;

    .line 15
    .line 16
    iget v2, p2, Lz7/b2;->a:I

    .line 17
    .line 18
    iget-boolean v3, p2, Lz7/b2;->e:Z

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {p1, v4, v2, v0}, Lpc/s;->m(IILlc/e;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p2, Lz7/b2;->b:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {p1, v0, v4, v2}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aget-object v5, v1, v2

    .line 32
    .line 33
    invoke-interface {v5}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lkc/a;

    .line 38
    .line 39
    iget-object v6, p2, Lz7/b2;->c:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v2, v5, v6}, Lpc/s;->o(Llc/e;ILkc/a;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    aget-object v1, v1, v2

    .line 46
    .line 47
    invoke-interface {v1}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lkc/a;

    .line 52
    .line 53
    iget-object p2, p2, Lz7/b2;->d:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v2, v1, p2}, Lpc/s;->o(Llc/e;ILkc/a;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lpc/s;->u(Llc/e;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    :goto_0
    const/4 p2, 0x4

    .line 68
    invoke-virtual {p1, v0, p2, v3}, Lpc/s;->c(Llc/e;IZ)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1, v0}, Lpc/s;->t(Llc/e;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final c()[Lkc/a;
    .locals 4

    .line 1
    sget-object v0, Lz7/b2;->f:[Lr8/h;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [Lkc/a;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    sget-object v3, Lnc/c0;->a:Lnc/c0;

    .line 8
    .line 9
    aput-object v3, v1, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    sget-object v3, Lnc/x0;->a:Lnc/x0;

    .line 13
    .line 14
    aput-object v3, v1, v2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    invoke-interface {v3}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    aget-object v0, v0, v2

    .line 27
    .line 28
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    aput-object v0, v1, v2

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    sget-object v2, Lnc/f;->a:Lnc/f;

    .line 36
    .line 37
    aput-object v2, v1, v0

    .line 38
    .line 39
    return-object v1
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/w1;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
