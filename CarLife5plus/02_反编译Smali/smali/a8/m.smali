.class public final La8/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;I)V
    .locals 0

    .line 1
    iput p2, p0, La8/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/m;->b:Lf1/b1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    new-instance p2, La8/m;

    .line 26
    .line 27
    iget-object v0, p0, La8/m;->b:Lf1/b1;

    .line 28
    .line 29
    const/16 v1, 0x18

    .line 30
    .line 31
    invoke-direct {p2, v0, v1}, La8/m;-><init>(Lf1/b1;I)V

    .line 32
    .line 33
    .line 34
    const v0, 0x46d9af86

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/16 v0, 0x30

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 46
    .line 47
    .line 48
    const/16 p2, 0x10

    .line 49
    .line 50
    invoke-static {p2, p1}, Lg5/a;->B(ILf1/s;)F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 55
    .line 56
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p1, p2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    check-cast v6, Lf1/s;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const-string v0, "\u6d3b\u52a8\u663e\u793a"

    .line 30
    .line 31
    const-string v2, "\u662f\u5426\u663e\u793a\u5168\u90e8\u6d3b\u52a8"

    .line 32
    .line 33
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v7, Lj8/k0;

    .line 42
    .line 43
    new-instance v9, Lj8/l0;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v9, v2}, Lj8/l0;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/16 v13, 0x1c

    .line 51
    .line 52
    const-string v8, "\u516c\u5f00\u6d3b\u52a8"

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-direct/range {v7 .. v13}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 57
    .line 58
    .line 59
    new-instance v8, Lj8/k0;

    .line 60
    .line 61
    new-instance v10, Lj8/l0;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-direct {v10, v3}, Lj8/l0;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    const/16 v14, 0x1c

    .line 69
    .line 70
    const-string v9, "\u5168\u90e8\u6d3b\u52a8"

    .line 71
    .line 72
    invoke-direct/range {v8 .. v14}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 73
    .line 74
    .line 75
    new-array v1, v1, [Lj8/k0;

    .line 76
    .line 77
    aput-object v7, v1, v2

    .line 78
    .line 79
    aput-object v8, v1, v3

    .line 80
    .line 81
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const v3, 0x4c5de2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v3}, Lf1/s;->W(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 96
    .line 97
    if-ne v3, v4, :cond_2

    .line 98
    .line 99
    new-instance v3, La8/s0;

    .line 100
    .line 101
    const/16 v4, 0x1a

    .line 102
    .line 103
    iget-object v5, p0, La8/m;->b:Lf1/b1;

    .line 104
    .line 105
    invoke-direct {v3, v5, v4}, La8/s0;-><init>(Lf1/b1;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    move-object v5, v3

    .line 112
    check-cast v5, Lf9/k;

    .line 113
    .line 114
    invoke-virtual {v6, v2}, Lf1/s;->p(Z)V

    .line 115
    .line 116
    .line 117
    const v7, 0x36006

    .line 118
    .line 119
    .line 120
    const/16 v8, 0xc

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-static/range {v0 .. v8}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 126
    .line 127
    .line 128
    :goto_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object v0
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 26
    const/4 v1, 0x6

    .line 27
    const-string v2, "\u5e94\u7528\u5305\u540d"

    .line 28
    .line 29
    invoke-static {v2, p2, p1, v1, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, La8/m;->b:Lf1/b1;

    .line 33
    .line 34
    invoke-interface {p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string p2, "\u9009\u62e9\u5e94\u7528\u5305\u540d"

    .line 47
    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    invoke-static {p2, p1, v0}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object p1
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object p2, p0, La8/m;->b:Lf1/b1;

    .line 26
    .line 27
    invoke-interface {p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    const-string p2, "\u9009\u62e9"

    .line 40
    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {p2, v1, p1, v2, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    return-object p1
.end method

.method private final j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    check-cast v6, Lf1/s;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const-string v0, "\u5e94\u7528\u663e\u793a"

    .line 30
    .line 31
    const-string v2, "\u662f\u5426\u663e\u793a\u5168\u90e8\u5e94\u7528"

    .line 32
    .line 33
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v7, Lj8/k0;

    .line 42
    .line 43
    new-instance v9, Lj8/l0;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v9, v2}, Lj8/l0;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/16 v13, 0x1c

    .line 51
    .line 52
    const-string v8, "\u53ef\u6253\u5f00\u5e94\u7528"

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-direct/range {v7 .. v13}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 57
    .line 58
    .line 59
    new-instance v8, Lj8/k0;

    .line 60
    .line 61
    new-instance v10, Lj8/l0;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-direct {v10, v3}, Lj8/l0;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    const/16 v14, 0x1c

    .line 69
    .line 70
    const-string v9, "\u5168\u90e8\u5e94\u7528"

    .line 71
    .line 72
    invoke-direct/range {v8 .. v14}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 73
    .line 74
    .line 75
    new-array v1, v1, [Lj8/k0;

    .line 76
    .line 77
    aput-object v7, v1, v2

    .line 78
    .line 79
    aput-object v8, v1, v3

    .line 80
    .line 81
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const v3, 0x4c5de2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v3}, Lf1/s;->W(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 96
    .line 97
    if-ne v3, v4, :cond_2

    .line 98
    .line 99
    new-instance v3, La8/s0;

    .line 100
    .line 101
    const/16 v4, 0x1b

    .line 102
    .line 103
    iget-object v5, p0, La8/m;->b:Lf1/b1;

    .line 104
    .line 105
    invoke-direct {v3, v5, v4}, La8/s0;-><init>(Lf1/b1;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    move-object v5, v3

    .line 112
    check-cast v5, Lf9/k;

    .line 113
    .line 114
    invoke-virtual {v6, v2}, Lf1/s;->p(Z)V

    .line 115
    .line 116
    .line 117
    const v7, 0x36006

    .line 118
    .line 119
    .line 120
    const/16 v8, 0xc

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-static/range {v0 .. v8}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 126
    .line 127
    .line 128
    :goto_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 129
    .line 130
    return-object v0
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La8/m;->a:I

    .line 4
    .line 5
    const/16 v4, 0x10

    .line 6
    .line 7
    sget-object v5, Lr1/m;->a:Lr1/m;

    .line 8
    .line 9
    const/16 v6, 0x30

    .line 10
    .line 11
    const-string v8, "\u53d6\u6d88"

    .line 12
    .line 13
    sget-object v9, Ls8/w;->a:Ls8/w;

    .line 14
    .line 15
    const-string v10, "\u6a21\u5757\u52a0\u8f7d\u5931\u8d25: "

    .line 16
    .line 17
    const-string v11, "OptionLoader"

    .line 18
    .line 19
    const-string v12, "load(...)"

    .line 20
    .line 21
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 22
    .line 23
    const/16 v16, 0x20

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v14, 0x1

    .line 27
    sget-object v17, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    iget-object v15, v1, La8/m;->b:Lf1/b1;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v13, 0x0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    check-cast v0, Lf1/s;

    .line 39
    .line 40
    move-object/from16 v2, p2

    .line 41
    .line 42
    check-cast v2, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    and-int/lit8 v2, v2, 0x3

    .line 49
    .line 50
    if-ne v2, v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    new-instance v2, La8/m;

    .line 64
    .line 65
    const/16 v3, 0x1c

    .line 66
    .line 67
    invoke-direct {v2, v15, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 68
    .line 69
    .line 70
    const v3, -0x4a83549f

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v2, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v7, v2, v0, v6, v14}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v0}, Lg5/a;->B(ILf1/s;)F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object v17

    .line 92
    :pswitch_0
    invoke-direct/range {p0 .. p2}, La8/m;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :pswitch_1
    invoke-direct/range {p0 .. p2}, La8/m;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :pswitch_2
    invoke-direct/range {p0 .. p2}, La8/m;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :pswitch_3
    invoke-direct/range {p0 .. p2}, La8/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :pswitch_4
    invoke-direct/range {p0 .. p2}, La8/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :pswitch_5
    move-object/from16 v0, p1

    .line 118
    .line 119
    check-cast v0, Lf1/s;

    .line 120
    .line 121
    move-object/from16 v2, p2

    .line 122
    .line 123
    check-cast v2, Ljava/lang/Number;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    and-int/lit8 v2, v2, 0x3

    .line 130
    .line 131
    if-ne v2, v3, :cond_3

    .line 132
    .line 133
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    :goto_2
    const-string v2, "\u5e94\u7528\u6d3b\u52a8"

    .line 145
    .line 146
    const/4 v4, 0x6

    .line 147
    invoke-static {v2, v7, v0, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_4

    .line 161
    .line 162
    const-string v2, "\u9009\u62e9\u5e94\u7528\u6d3b\u52a8"

    .line 163
    .line 164
    :cond_4
    invoke-static {v2, v0, v13}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-object v17

    .line 168
    :pswitch_6
    move-object/from16 v0, p1

    .line 169
    .line 170
    check-cast v0, Lf1/s;

    .line 171
    .line 172
    move-object/from16 v2, p2

    .line 173
    .line 174
    check-cast v2, Ljava/lang/Number;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    and-int/lit8 v2, v2, 0x3

    .line 181
    .line 182
    if-ne v2, v3, :cond_6

    .line 183
    .line 184
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_5

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_5
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_6
    :goto_4
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 202
    .line 203
    .line 204
    invoke-static {v13, v0}, Lg5/a;->d(ILf1/s;)V

    .line 205
    .line 206
    .line 207
    :goto_5
    return-object v17

    .line 208
    :pswitch_7
    move-object/from16 v0, p1

    .line 209
    .line 210
    check-cast v0, Lf1/s;

    .line 211
    .line 212
    move-object/from16 v2, p2

    .line 213
    .line 214
    check-cast v2, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    and-int/lit8 v2, v2, 0x3

    .line 221
    .line 222
    if-ne v2, v3, :cond_8

    .line 223
    .line 224
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_7

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_7
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 232
    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_8
    :goto_6
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 242
    .line 243
    .line 244
    invoke-static {v13, v0}, Lg5/a;->d(ILf1/s;)V

    .line 245
    .line 246
    .line 247
    :goto_7
    return-object v17

    .line 248
    :pswitch_8
    move-object/from16 v0, p1

    .line 249
    .line 250
    check-cast v0, Lf1/s;

    .line 251
    .line 252
    move-object/from16 v2, p2

    .line 253
    .line 254
    check-cast v2, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    and-int/lit8 v2, v2, 0x3

    .line 261
    .line 262
    if-ne v2, v3, :cond_a

    .line 263
    .line 264
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_9

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_9
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 272
    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_a
    :goto_8
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 282
    .line 283
    .line 284
    invoke-static {v13, v0}, Lg5/a;->d(ILf1/s;)V

    .line 285
    .line 286
    .line 287
    :goto_9
    return-object v17

    .line 288
    :pswitch_9
    move-object/from16 v0, p1

    .line 289
    .line 290
    check-cast v0, Lf1/s;

    .line 291
    .line 292
    move-object/from16 v2, p2

    .line 293
    .line 294
    check-cast v2, Ljava/lang/Number;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    and-int/lit8 v2, v2, 0x3

    .line 301
    .line 302
    if-ne v2, v3, :cond_c

    .line 303
    .line 304
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-nez v2, :cond_b

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_b
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 312
    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_c
    :goto_a
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 322
    .line 323
    .line 324
    invoke-static {v13, v0}, Lg5/a;->d(ILf1/s;)V

    .line 325
    .line 326
    .line 327
    :goto_b
    return-object v17

    .line 328
    :pswitch_a
    move-object/from16 v4, p1

    .line 329
    .line 330
    check-cast v4, Lf1/s;

    .line 331
    .line 332
    move-object/from16 v0, p2

    .line 333
    .line 334
    check-cast v0, Ljava/lang/Number;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    and-int/lit8 v0, v0, 0x3

    .line 341
    .line 342
    if-ne v0, v3, :cond_d

    .line 343
    .line 344
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_e

    .line 349
    .line 350
    :cond_d
    const v0, 0x6e3c21fe

    .line 351
    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_e
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_11

    .line 358
    .line 359
    :goto_c
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-ne v0, v2, :cond_f

    .line 367
    .line 368
    new-instance v0, Lp1/s;

    .line 369
    .line 370
    invoke-direct {v0}, Lp1/s;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_f
    move-object v2, v0

    .line 377
    check-cast v2, Lp1/s;

    .line 378
    .line 379
    invoke-virtual {v4, v13}, Lf1/s;->p(Z)V

    .line 380
    .line 381
    .line 382
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    move-object v5, v0

    .line 387
    check-cast v5, Lt7/f;

    .line 388
    .line 389
    invoke-virtual {v2, v5}, Lp1/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    if-nez v0, :cond_13

    .line 394
    .line 395
    :try_start_0
    const-class v0, Lt7/e;

    .line 396
    .line 397
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v0, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-instance v6, Lt7/a;

    .line 409
    .line 410
    invoke-direct {v6, v3}, Lt7/a;-><init>(I)V

    .line 411
    .line 412
    .line 413
    new-instance v7, Lwb/h;

    .line 414
    .line 415
    invoke-direct {v7, v0, v14, v6}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 416
    .line 417
    .line 418
    sget-object v0, Lt7/a;->b:Lt7/a;

    .line 419
    .line 420
    new-instance v6, Lwb/c;

    .line 421
    .line 422
    invoke-direct {v6, v13, v7, v0}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lt7/b;

    .line 426
    .line 427
    invoke-direct {v0, v13}, Lt7/b;-><init>(I)V

    .line 428
    .line 429
    .line 430
    new-instance v7, Lwb/c;

    .line 431
    .line 432
    invoke-direct {v7, v3, v6, v0}, Lwb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v7}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    goto :goto_d

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :goto_d
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    if-nez v3, :cond_10

    .line 450
    .line 451
    move-object v9, v0

    .line 452
    goto :goto_e

    .line 453
    :cond_10
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v10, v3}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    new-array v6, v14, [Ljava/lang/Object;

    .line 464
    .line 465
    aput-object v3, v6, v13

    .line 466
    .line 467
    invoke-virtual {v0, v11, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :goto_e
    check-cast v9, Ljava/util/List;

    .line 471
    .line 472
    new-instance v0, Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    :cond_11
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_12

    .line 486
    .line 487
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    move-object v7, v6

    .line 492
    check-cast v7, Lt7/e;

    .line 493
    .line 494
    invoke-interface {v7}, Lt7/e;->h()Lt7/f;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    check-cast v8, Lt7/f;

    .line 503
    .line 504
    if-ne v7, v8, :cond_11

    .line 505
    .line 506
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    goto :goto_f

    .line 510
    :cond_12
    invoke-virtual {v2, v5, v0}, Lp1/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    :cond_13
    check-cast v0, Ljava/util/List;

    .line 514
    .line 515
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-eqz v2, :cond_14

    .line 524
    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    check-cast v2, Lt7/e;

    .line 530
    .line 531
    invoke-interface {v2, v13, v4}, Lt7/e;->b(ILf1/s;)V

    .line 532
    .line 533
    .line 534
    goto :goto_10

    .line 535
    :cond_14
    :goto_11
    return-object v17

    .line 536
    :pswitch_b
    move-object/from16 v0, p1

    .line 537
    .line 538
    check-cast v0, Lf1/s;

    .line 539
    .line 540
    move-object/from16 v4, p2

    .line 541
    .line 542
    check-cast v4, Ljava/lang/Number;

    .line 543
    .line 544
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    and-int/lit8 v4, v4, 0x3

    .line 549
    .line 550
    if-ne v4, v3, :cond_15

    .line 551
    .line 552
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    if-nez v3, :cond_16

    .line 557
    .line 558
    :cond_15
    const v3, 0x4c5de2

    .line 559
    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_16
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 563
    .line 564
    .line 565
    goto :goto_13

    .line 566
    :goto_12
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    if-ne v3, v2, :cond_17

    .line 574
    .line 575
    new-instance v3, Lj8/h;

    .line 576
    .line 577
    const/16 v2, 0x15

    .line 578
    .line 579
    invoke-direct {v3, v15, v2}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    :cond_17
    check-cast v3, Lf9/a;

    .line 586
    .line 587
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 588
    .line 589
    .line 590
    const/16 v2, 0x36

    .line 591
    .line 592
    invoke-static {v8, v3, v0, v2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 593
    .line 594
    .line 595
    :goto_13
    return-object v17

    .line 596
    :pswitch_c
    move-object/from16 v0, p1

    .line 597
    .line 598
    check-cast v0, Lf1/s;

    .line 599
    .line 600
    move-object/from16 v5, p2

    .line 601
    .line 602
    check-cast v5, Ljava/lang/Number;

    .line 603
    .line 604
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    and-int/lit8 v5, v5, 0x3

    .line 609
    .line 610
    if-ne v5, v3, :cond_18

    .line 611
    .line 612
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-nez v3, :cond_19

    .line 617
    .line 618
    :cond_18
    const v3, 0x4c5de2

    .line 619
    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_19
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 623
    .line 624
    .line 625
    goto :goto_15

    .line 626
    :goto_14
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    if-ne v3, v2, :cond_1a

    .line 634
    .line 635
    new-instance v3, Lj8/h;

    .line 636
    .line 637
    invoke-direct {v3, v15, v4}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    :cond_1a
    check-cast v3, Lf9/a;

    .line 644
    .line 645
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 646
    .line 647
    .line 648
    const/16 v2, 0x36

    .line 649
    .line 650
    invoke-static {v8, v3, v0, v2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 651
    .line 652
    .line 653
    :goto_15
    return-object v17

    .line 654
    :pswitch_d
    move-object/from16 v14, p1

    .line 655
    .line 656
    check-cast v14, Lf1/s;

    .line 657
    .line 658
    move-object/from16 v0, p2

    .line 659
    .line 660
    check-cast v0, Ljava/lang/Number;

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    and-int/lit8 v0, v0, 0x3

    .line 667
    .line 668
    if-ne v0, v3, :cond_1c

    .line 669
    .line 670
    invoke-virtual {v14}, Lf1/s;->z()Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-nez v0, :cond_1b

    .line 675
    .line 676
    goto :goto_16

    .line 677
    :cond_1b
    invoke-virtual {v14}, Lf1/s;->Q()V

    .line 678
    .line 679
    .line 680
    goto :goto_17

    .line 681
    :cond_1c
    :goto_16
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    check-cast v0, Ljava/lang/Boolean;

    .line 686
    .line 687
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 688
    .line 689
    .line 690
    move-result v9

    .line 691
    const/4 v13, 0x0

    .line 692
    const/16 v15, 0x30

    .line 693
    .line 694
    const/4 v10, 0x0

    .line 695
    const/4 v11, 0x0

    .line 696
    const/4 v12, 0x0

    .line 697
    invoke-static/range {v9 .. v15}, Landroidx/compose/material3/a;->a(ZLf9/k;Lr1/p;ZLc1/n2;Lf1/s;I)V

    .line 698
    .line 699
    .line 700
    :goto_17
    return-object v17

    .line 701
    :pswitch_e
    move-object/from16 v7, p1

    .line 702
    .line 703
    check-cast v7, Lf1/s;

    .line 704
    .line 705
    move-object/from16 v0, p2

    .line 706
    .line 707
    check-cast v0, Ljava/lang/Number;

    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    and-int/lit8 v0, v0, 0x3

    .line 714
    .line 715
    if-ne v0, v3, :cond_1e

    .line 716
    .line 717
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-nez v0, :cond_1d

    .line 722
    .line 723
    goto :goto_18

    .line 724
    :cond_1d
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 725
    .line 726
    .line 727
    goto :goto_19

    .line 728
    :cond_1e
    :goto_18
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    check-cast v0, Ljava/lang/Boolean;

    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    const/4 v6, 0x0

    .line 739
    const/16 v8, 0x30

    .line 740
    .line 741
    const/4 v3, 0x0

    .line 742
    const/4 v4, 0x0

    .line 743
    const/4 v5, 0x0

    .line 744
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/a;->a(ZLf9/k;Lr1/p;ZLc1/n2;Lf1/s;I)V

    .line 745
    .line 746
    .line 747
    :goto_19
    return-object v17

    .line 748
    :pswitch_f
    move-object/from16 v0, p1

    .line 749
    .line 750
    check-cast v0, Lf1/s;

    .line 751
    .line 752
    move-object/from16 v2, p2

    .line 753
    .line 754
    check-cast v2, Ljava/lang/Number;

    .line 755
    .line 756
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    and-int/lit8 v2, v2, 0x3

    .line 761
    .line 762
    if-ne v2, v3, :cond_20

    .line 763
    .line 764
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    if-nez v2, :cond_1f

    .line 769
    .line 770
    goto :goto_1a

    .line 771
    :cond_1f
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 772
    .line 773
    .line 774
    goto :goto_1b

    .line 775
    :cond_20
    :goto_1a
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    check-cast v2, Lj8/k0;

    .line 780
    .line 781
    iget-object v2, v2, Lj8/k0;->a:Ljava/lang/String;

    .line 782
    .line 783
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 784
    .line 785
    .line 786
    invoke-static {v13, v0}, Lg5/a;->i(ILf1/s;)V

    .line 787
    .line 788
    .line 789
    :goto_1b
    return-object v17

    .line 790
    :pswitch_10
    move-object/from16 v0, p1

    .line 791
    .line 792
    check-cast v0, Lf1/s;

    .line 793
    .line 794
    move-object/from16 v4, p2

    .line 795
    .line 796
    check-cast v4, Ljava/lang/Number;

    .line 797
    .line 798
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    and-int/lit8 v4, v4, 0x3

    .line 803
    .line 804
    if-ne v4, v3, :cond_21

    .line 805
    .line 806
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 807
    .line 808
    .line 809
    move-result v3

    .line 810
    if-nez v3, :cond_22

    .line 811
    .line 812
    :cond_21
    const v3, 0x4c5de2

    .line 813
    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :cond_22
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 817
    .line 818
    .line 819
    goto :goto_1d

    .line 820
    :goto_1c
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    if-ne v3, v2, :cond_23

    .line 828
    .line 829
    new-instance v3, Lj8/h;

    .line 830
    .line 831
    invoke-direct {v3, v15, v13}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    :cond_23
    check-cast v3, Lf9/a;

    .line 838
    .line 839
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 840
    .line 841
    .line 842
    const/16 v2, 0x36

    .line 843
    .line 844
    invoke-static {v8, v3, v0, v2}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 845
    .line 846
    .line 847
    :goto_1d
    return-object v17

    .line 848
    :pswitch_11
    move-object/from16 v0, p1

    .line 849
    .line 850
    check-cast v0, Lf1/s;

    .line 851
    .line 852
    move-object/from16 v2, p2

    .line 853
    .line 854
    check-cast v2, Ljava/lang/Number;

    .line 855
    .line 856
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    and-int/lit8 v2, v2, 0x3

    .line 861
    .line 862
    if-ne v2, v3, :cond_25

    .line 863
    .line 864
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    if-nez v2, :cond_24

    .line 869
    .line 870
    goto :goto_1e

    .line 871
    :cond_24
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 872
    .line 873
    .line 874
    goto :goto_1f

    .line 875
    :cond_25
    :goto_1e
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    check-cast v2, Ljava/lang/String;

    .line 880
    .line 881
    invoke-static {v2, v0, v13}, Li2/c;->b(Ljava/lang/String;Lf1/s;I)V

    .line 882
    .line 883
    .line 884
    :goto_1f
    return-object v17

    .line 885
    :pswitch_12
    move-object/from16 v8, p1

    .line 886
    .line 887
    check-cast v8, Lf1/s;

    .line 888
    .line 889
    move-object/from16 v0, p2

    .line 890
    .line 891
    check-cast v0, Ljava/lang/Number;

    .line 892
    .line 893
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    and-int/lit8 v0, v0, 0x3

    .line 898
    .line 899
    if-ne v0, v3, :cond_27

    .line 900
    .line 901
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 902
    .line 903
    .line 904
    move-result v0

    .line 905
    if-nez v0, :cond_26

    .line 906
    .line 907
    goto :goto_20

    .line 908
    :cond_26
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_22

    .line 912
    .line 913
    :cond_27
    :goto_20
    sget-object v0, Lr1/c;->k:Lr1/g;

    .line 914
    .line 915
    sget-object v3, Ld0/h;->e:Ld0/d;

    .line 916
    .line 917
    const/16 v4, 0x36

    .line 918
    .line 919
    invoke-static {v3, v0, v8, v4}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    iget-wide v3, v8, Lf1/s;->T:J

    .line 924
    .line 925
    ushr-long v6, v3, v16

    .line 926
    .line 927
    xor-long/2addr v3, v6

    .line 928
    long-to-int v4, v3

    .line 929
    invoke-virtual {v8}, Lf1/s;->l()Lf1/q1;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-static {v8, v5}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 934
    .line 935
    .line 936
    move-result-object v6

    .line 937
    sget-object v7, Lq2/j;->d0:Lq2/i;

    .line 938
    .line 939
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    .line 941
    .line 942
    sget-object v7, Lq2/i;->b:Lq2/a0;

    .line 943
    .line 944
    invoke-virtual {v8}, Lf1/s;->a0()V

    .line 945
    .line 946
    .line 947
    iget-boolean v9, v8, Lf1/s;->S:Z

    .line 948
    .line 949
    if-eqz v9, :cond_28

    .line 950
    .line 951
    invoke-virtual {v8, v7}, Lf1/s;->k(Lf9/a;)V

    .line 952
    .line 953
    .line 954
    goto :goto_21

    .line 955
    :cond_28
    invoke-virtual {v8}, Lf1/s;->k0()V

    .line 956
    .line 957
    .line 958
    :goto_21
    sget-object v7, Lq2/i;->e:Lq2/h;

    .line 959
    .line 960
    invoke-static {v8, v7, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 964
    .line 965
    invoke-static {v8, v0, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 969
    .line 970
    iget-boolean v3, v8, Lf1/s;->S:Z

    .line 971
    .line 972
    if-nez v3, :cond_29

    .line 973
    .line 974
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 979
    .line 980
    .line 981
    move-result-object v7

    .line 982
    invoke-static {v3, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-nez v3, :cond_2a

    .line 987
    .line 988
    :cond_29
    invoke-static {v4, v8, v4, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 989
    .line 990
    .line 991
    :cond_2a
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 992
    .line 993
    invoke-static {v8, v0, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    const/16 v0, 0x14

    .line 997
    .line 998
    invoke-static {v0, v8}, Lg5/a;->B(ILf1/s;)F

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    const-wide v3, 0x100000000L

    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    invoke-static {v0, v3, v4}, Lc7/a;->M(FJ)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v22

    .line 1011
    const/16 v37, 0x0

    .line 1012
    .line 1013
    const v38, 0x1fff6

    .line 1014
    .line 1015
    .line 1016
    const-string v18, "\u4e0b\u8f7d"

    .line 1017
    .line 1018
    const/16 v19, 0x0

    .line 1019
    .line 1020
    const-wide/16 v20, 0x0

    .line 1021
    .line 1022
    const/16 v24, 0x0

    .line 1023
    .line 1024
    const-wide/16 v25, 0x0

    .line 1025
    .line 1026
    const/16 v27, 0x0

    .line 1027
    .line 1028
    const-wide/16 v28, 0x0

    .line 1029
    .line 1030
    const/16 v30, 0x0

    .line 1031
    .line 1032
    const/16 v31, 0x0

    .line 1033
    .line 1034
    const/16 v32, 0x0

    .line 1035
    .line 1036
    const/16 v33, 0x0

    .line 1037
    .line 1038
    const/16 v34, 0x0

    .line 1039
    .line 1040
    const/16 v36, 0x6

    .line 1041
    .line 1042
    move-object/from16 v35, v8

    .line 1043
    .line 1044
    invoke-static/range {v18 .. v38}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 1045
    .line 1046
    .line 1047
    const/16 v0, 0x20

    .line 1048
    .line 1049
    invoke-static {v0, v8}, Lg5/a;->B(ILf1/s;)F

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/c;->k(Lr1/p;F)Lr1/p;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-static {v8, v0}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    check-cast v0, Ljava/lang/Boolean;

    .line 1065
    .line 1066
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v3

    .line 1070
    const v0, -0x615d173a

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v8, v0}, Lf1/s;->W(I)V

    .line 1074
    .line 1075
    .line 1076
    const-string v0, "TEST_LOGS_SAVE"

    .line 1077
    .line 1078
    invoke-virtual {v8, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v4

    .line 1086
    if-nez v0, :cond_2b

    .line 1087
    .line 1088
    if-ne v4, v2, :cond_2c

    .line 1089
    .line 1090
    :cond_2b
    new-instance v4, La8/s0;

    .line 1091
    .line 1092
    const/16 v0, 0x11

    .line 1093
    .line 1094
    invoke-direct {v4, v15, v0}, La8/s0;-><init>(Lf1/b1;I)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v8, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_2c
    check-cast v4, Lf9/k;

    .line 1101
    .line 1102
    invoke-virtual {v8, v13}, Lf1/s;->p(Z)V

    .line 1103
    .line 1104
    .line 1105
    const/4 v7, 0x0

    .line 1106
    const/4 v9, 0x0

    .line 1107
    const/4 v5, 0x0

    .line 1108
    const/4 v6, 0x0

    .line 1109
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/a;->a(ZLf9/k;Lr1/p;ZLc1/n2;Lf1/s;I)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v8, v14}, Lf1/s;->p(Z)V

    .line 1113
    .line 1114
    .line 1115
    :goto_22
    return-object v17

    .line 1116
    :pswitch_13
    move-object/from16 v0, p1

    .line 1117
    .line 1118
    check-cast v0, Lf1/s;

    .line 1119
    .line 1120
    move-object/from16 v4, p2

    .line 1121
    .line 1122
    check-cast v4, Ljava/lang/Number;

    .line 1123
    .line 1124
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 1125
    .line 1126
    .line 1127
    move-result v4

    .line 1128
    and-int/lit8 v4, v4, 0x3

    .line 1129
    .line 1130
    if-ne v4, v3, :cond_2e

    .line 1131
    .line 1132
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v4

    .line 1136
    if-nez v4, :cond_2d

    .line 1137
    .line 1138
    goto :goto_23

    .line 1139
    :cond_2d
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_25

    .line 1143
    .line 1144
    :cond_2e
    :goto_23
    sget-object v4, Lr1/c;->k:Lr1/g;

    .line 1145
    .line 1146
    sget-object v5, Ld0/h;->b:Ld0/b;

    .line 1147
    .line 1148
    const/16 v6, 0x8

    .line 1149
    .line 1150
    int-to-float v6, v6

    .line 1151
    const/16 v25, 0x0

    .line 1152
    .line 1153
    const/16 v26, 0xb

    .line 1154
    .line 1155
    sget-object v21, Lr1/m;->a:Lr1/m;

    .line 1156
    .line 1157
    const/16 v22, 0x0

    .line 1158
    .line 1159
    const/16 v23, 0x0

    .line 1160
    .line 1161
    move/from16 v24, v6

    .line 1162
    .line 1163
    invoke-static/range {v21 .. v26}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v27

    .line 1167
    const v6, 0x6e3c21fe

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v6

    .line 1177
    if-ne v6, v2, :cond_2f

    .line 1178
    .line 1179
    invoke-static {v0}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v6

    .line 1183
    :cond_2f
    move-object/from16 v28, v6

    .line 1184
    .line 1185
    check-cast v28, Lb0/k;

    .line 1186
    .line 1187
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 1188
    .line 1189
    .line 1190
    const v6, 0x4c5de2

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v6

    .line 1200
    if-ne v6, v2, :cond_30

    .line 1201
    .line 1202
    new-instance v6, La8/f;

    .line 1203
    .line 1204
    const/16 v2, 0x11

    .line 1205
    .line 1206
    invoke-direct {v6, v15, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 1210
    .line 1211
    .line 1212
    :cond_30
    move-object/from16 v31, v6

    .line 1213
    .line 1214
    check-cast v31, Lf9/a;

    .line 1215
    .line 1216
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 1217
    .line 1218
    .line 1219
    const/16 v32, 0x1c

    .line 1220
    .line 1221
    const/16 v29, 0x0

    .line 1222
    .line 1223
    const/16 v30, 0x0

    .line 1224
    .line 1225
    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    const/16 v6, 0x36

    .line 1230
    .line 1231
    invoke-static {v5, v4, v0, v6}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v4

    .line 1235
    iget-wide v5, v0, Lf1/s;->T:J

    .line 1236
    .line 1237
    const/16 v16, 0x20

    .line 1238
    .line 1239
    ushr-long v8, v5, v16

    .line 1240
    .line 1241
    xor-long/2addr v5, v8

    .line 1242
    long-to-int v6, v5

    .line 1243
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v5

    .line 1247
    invoke-static {v0, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    sget-object v8, Lq2/j;->d0:Lq2/i;

    .line 1252
    .line 1253
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1254
    .line 1255
    .line 1256
    sget-object v8, Lq2/i;->b:Lq2/a0;

    .line 1257
    .line 1258
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 1259
    .line 1260
    .line 1261
    iget-boolean v9, v0, Lf1/s;->S:Z

    .line 1262
    .line 1263
    if-eqz v9, :cond_31

    .line 1264
    .line 1265
    invoke-virtual {v0, v8}, Lf1/s;->k(Lf9/a;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_24

    .line 1269
    :cond_31
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 1270
    .line 1271
    .line 1272
    :goto_24
    sget-object v8, Lq2/i;->e:Lq2/h;

    .line 1273
    .line 1274
    invoke-static {v0, v8, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1275
    .line 1276
    .line 1277
    sget-object v4, Lq2/i;->d:Lq2/h;

    .line 1278
    .line 1279
    invoke-static {v0, v4, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1280
    .line 1281
    .line 1282
    sget-object v4, Lq2/i;->f:Lq2/h;

    .line 1283
    .line 1284
    iget-boolean v5, v0, Lf1/s;->S:Z

    .line 1285
    .line 1286
    if-nez v5, :cond_32

    .line 1287
    .line 1288
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v5

    .line 1292
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v8

    .line 1296
    invoke-static {v5, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v5

    .line 1300
    if-nez v5, :cond_33

    .line 1301
    .line 1302
    :cond_32
    invoke-static {v6, v0, v6, v4}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1303
    .line 1304
    .line 1305
    :cond_33
    sget-object v4, Lq2/i;->c:Lq2/h;

    .line 1306
    .line 1307
    invoke-static {v0, v4, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1308
    .line 1309
    .line 1310
    const-string v2, "\u9009\u62e9"

    .line 1311
    .line 1312
    const/4 v4, 0x6

    .line 1313
    invoke-static {v2, v7, v0, v4, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v13, v0}, Lg5/a;->i(ILf1/s;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v0, v14}, Lf1/s;->p(Z)V

    .line 1320
    .line 1321
    .line 1322
    :goto_25
    return-object v17

    .line 1323
    :pswitch_14
    move-object/from16 v0, p1

    .line 1324
    .line 1325
    check-cast v0, Lf1/s;

    .line 1326
    .line 1327
    move-object/from16 v2, p2

    .line 1328
    .line 1329
    check-cast v2, Ljava/lang/Number;

    .line 1330
    .line 1331
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1332
    .line 1333
    .line 1334
    move-result v2

    .line 1335
    and-int/lit8 v2, v2, 0x3

    .line 1336
    .line 1337
    if-ne v2, v3, :cond_35

    .line 1338
    .line 1339
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v2

    .line 1343
    if-nez v2, :cond_34

    .line 1344
    .line 1345
    goto :goto_26

    .line 1346
    :cond_34
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_27

    .line 1350
    :cond_35
    :goto_26
    new-instance v2, La8/m;

    .line 1351
    .line 1352
    const/4 v3, 0x7

    .line 1353
    invoke-direct {v2, v15, v3}, La8/m;-><init>(Lf1/b1;I)V

    .line 1354
    .line 1355
    .line 1356
    const v3, -0x69be951e

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v3, v2, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    invoke-static {v7, v2, v0, v6, v14}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 1364
    .line 1365
    .line 1366
    :goto_27
    return-object v17

    .line 1367
    :pswitch_15
    move-object/from16 v0, p1

    .line 1368
    .line 1369
    check-cast v0, Lf1/s;

    .line 1370
    .line 1371
    move-object/from16 v2, p2

    .line 1372
    .line 1373
    check-cast v2, Ljava/lang/Number;

    .line 1374
    .line 1375
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1376
    .line 1377
    .line 1378
    move-result v2

    .line 1379
    and-int/lit8 v2, v2, 0x3

    .line 1380
    .line 1381
    if-ne v2, v3, :cond_37

    .line 1382
    .line 1383
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1384
    .line 1385
    .line 1386
    move-result v2

    .line 1387
    if-nez v2, :cond_36

    .line 1388
    .line 1389
    goto :goto_28

    .line 1390
    :cond_36
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_2c

    .line 1394
    .line 1395
    :cond_37
    :goto_28
    sget-object v2, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 1396
    .line 1397
    const/16 v4, 0x12c

    .line 1398
    .line 1399
    invoke-static {v4, v0}, Lg5/a;->B(ILf1/s;)F

    .line 1400
    .line 1401
    .line 1402
    move-result v4

    .line 1403
    const/4 v5, 0x0

    .line 1404
    invoke-static {v2, v4, v5, v3}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v2

    .line 1408
    sget-object v3, Ld0/h;->c:Ld0/b;

    .line 1409
    .line 1410
    sget-object v4, Lr1/c;->m:Lr1/f;

    .line 1411
    .line 1412
    invoke-static {v3, v4, v0, v13}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v3

    .line 1416
    iget-wide v4, v0, Lf1/s;->T:J

    .line 1417
    .line 1418
    const/16 v16, 0x20

    .line 1419
    .line 1420
    ushr-long v8, v4, v16

    .line 1421
    .line 1422
    xor-long/2addr v4, v8

    .line 1423
    long-to-int v5, v4

    .line 1424
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v4

    .line 1428
    invoke-static {v0, v2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v2

    .line 1432
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 1433
    .line 1434
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1435
    .line 1436
    .line 1437
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 1438
    .line 1439
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 1440
    .line 1441
    .line 1442
    iget-boolean v8, v0, Lf1/s;->S:Z

    .line 1443
    .line 1444
    if-eqz v8, :cond_38

    .line 1445
    .line 1446
    invoke-virtual {v0, v6}, Lf1/s;->k(Lf9/a;)V

    .line 1447
    .line 1448
    .line 1449
    goto :goto_29

    .line 1450
    :cond_38
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 1451
    .line 1452
    .line 1453
    :goto_29
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 1454
    .line 1455
    invoke-static {v0, v6, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1456
    .line 1457
    .line 1458
    sget-object v3, Lq2/i;->d:Lq2/h;

    .line 1459
    .line 1460
    invoke-static {v0, v3, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1461
    .line 1462
    .line 1463
    sget-object v3, Lq2/i;->f:Lq2/h;

    .line 1464
    .line 1465
    iget-boolean v4, v0, Lf1/s;->S:Z

    .line 1466
    .line 1467
    if-nez v4, :cond_39

    .line 1468
    .line 1469
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v4

    .line 1473
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v6

    .line 1477
    invoke-static {v4, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v4

    .line 1481
    if-nez v4, :cond_3a

    .line 1482
    .line 1483
    :cond_39
    invoke-static {v5, v0, v5, v3}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 1484
    .line 1485
    .line 1486
    :cond_3a
    sget-object v3, Lq2/i;->c:Lq2/h;

    .line 1487
    .line 1488
    invoke-static {v0, v3, v2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 1489
    .line 1490
    .line 1491
    const v2, -0x37c07213

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 1495
    .line 1496
    .line 1497
    sget v2, Lc8/v;->e:I

    .line 1498
    .line 1499
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v2

    .line 1503
    check-cast v2, Ljava/util/List;

    .line 1504
    .line 1505
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v2

    .line 1509
    if-eqz v2, :cond_3b

    .line 1510
    .line 1511
    sget-object v18, Lc8/b;->b:Ln1/c;

    .line 1512
    .line 1513
    sget-object v19, Lc8/b;->c:Ln1/c;

    .line 1514
    .line 1515
    const/16 v23, 0x1b6

    .line 1516
    .line 1517
    const/16 v24, 0x8

    .line 1518
    .line 1519
    const/16 v20, 0x0

    .line 1520
    .line 1521
    const/16 v21, 0x0

    .line 1522
    .line 1523
    move-object/from16 v22, v0

    .line 1524
    .line 1525
    invoke-static/range {v18 .. v24}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 1526
    .line 1527
    .line 1528
    :cond_3b
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 1529
    .line 1530
    .line 1531
    const v2, -0x37c05d7a

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 1535
    .line 1536
    .line 1537
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v2

    .line 1541
    check-cast v2, Ljava/util/List;

    .line 1542
    .line 1543
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v2

    .line 1547
    const/4 v3, 0x0

    .line 1548
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1549
    .line 1550
    .line 1551
    move-result v4

    .line 1552
    if-eqz v4, :cond_3e

    .line 1553
    .line 1554
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v4

    .line 1558
    add-int/lit8 v5, v3, 0x1

    .line 1559
    .line 1560
    if-ltz v3, :cond_3d

    .line 1561
    .line 1562
    check-cast v4, Lj8/k0;

    .line 1563
    .line 1564
    new-instance v6, Lc8/o;

    .line 1565
    .line 1566
    invoke-direct {v6, v4, v13}, Lc8/o;-><init>(Lj8/k0;I)V

    .line 1567
    .line 1568
    .line 1569
    const v8, -0x48f93fc

    .line 1570
    .line 1571
    .line 1572
    invoke-static {v8, v6, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v18

    .line 1576
    new-instance v6, Lc8/o;

    .line 1577
    .line 1578
    invoke-direct {v6, v4, v14}, Lc8/o;-><init>(Lj8/k0;I)V

    .line 1579
    .line 1580
    .line 1581
    const v4, -0x1d4cb39d

    .line 1582
    .line 1583
    .line 1584
    invoke-static {v4, v6, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v19

    .line 1588
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v4

    .line 1592
    check-cast v4, Ljava/util/List;

    .line 1593
    .line 1594
    invoke-static {v4}, Lp9/x1;->u(Ljava/util/List;)I

    .line 1595
    .line 1596
    .line 1597
    move-result v4

    .line 1598
    if-eq v3, v4, :cond_3c

    .line 1599
    .line 1600
    const/16 v20, 0x1

    .line 1601
    .line 1602
    goto :goto_2b

    .line 1603
    :cond_3c
    const/16 v20, 0x0

    .line 1604
    .line 1605
    :goto_2b
    const/16 v23, 0x36

    .line 1606
    .line 1607
    const/16 v24, 0x8

    .line 1608
    .line 1609
    const/16 v21, 0x0

    .line 1610
    .line 1611
    move-object/from16 v22, v0

    .line 1612
    .line 1613
    invoke-static/range {v18 .. v24}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 1614
    .line 1615
    .line 1616
    move v3, v5

    .line 1617
    goto :goto_2a

    .line 1618
    :cond_3d
    invoke-static {}, Lp9/x1;->L()V

    .line 1619
    .line 1620
    .line 1621
    throw v7

    .line 1622
    :cond_3e
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v0, v14}, Lf1/s;->p(Z)V

    .line 1626
    .line 1627
    .line 1628
    :goto_2c
    return-object v17

    .line 1629
    :pswitch_16
    move-object/from16 v0, p1

    .line 1630
    .line 1631
    check-cast v0, Lf1/s;

    .line 1632
    .line 1633
    move-object/from16 v2, p2

    .line 1634
    .line 1635
    check-cast v2, Ljava/lang/Number;

    .line 1636
    .line 1637
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1638
    .line 1639
    .line 1640
    move-result v2

    .line 1641
    and-int/lit8 v2, v2, 0x3

    .line 1642
    .line 1643
    if-ne v2, v3, :cond_40

    .line 1644
    .line 1645
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 1646
    .line 1647
    .line 1648
    move-result v2

    .line 1649
    if-nez v2, :cond_3f

    .line 1650
    .line 1651
    goto :goto_2d

    .line 1652
    :cond_3f
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 1653
    .line 1654
    .line 1655
    goto :goto_2e

    .line 1656
    :cond_40
    :goto_2d
    sget v2, Lc8/v;->e:I

    .line 1657
    .line 1658
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v2

    .line 1662
    check-cast v2, Lj8/k0;

    .line 1663
    .line 1664
    iget-object v2, v2, Lj8/k0;->a:Ljava/lang/String;

    .line 1665
    .line 1666
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 1667
    .line 1668
    .line 1669
    invoke-static {v13, v0}, Lg5/a;->i(ILf1/s;)V

    .line 1670
    .line 1671
    .line 1672
    :goto_2e
    return-object v17

    .line 1673
    :pswitch_17
    move-object/from16 v4, p1

    .line 1674
    .line 1675
    check-cast v4, Lf1/s;

    .line 1676
    .line 1677
    move-object/from16 v0, p2

    .line 1678
    .line 1679
    check-cast v0, Ljava/lang/Number;

    .line 1680
    .line 1681
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    const-class v5, Lz7/v1;

    .line 1686
    .line 1687
    and-int/lit8 v0, v0, 0x3

    .line 1688
    .line 1689
    if-ne v0, v3, :cond_42

    .line 1690
    .line 1691
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 1692
    .line 1693
    .line 1694
    move-result v0

    .line 1695
    if-nez v0, :cond_41

    .line 1696
    .line 1697
    goto :goto_2f

    .line 1698
    :cond_41
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 1699
    .line 1700
    .line 1701
    goto/16 :goto_37

    .line 1702
    .line 1703
    :cond_42
    :goto_2f
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v0

    .line 1707
    move-object/from16 v20, v0

    .line 1708
    .line 1709
    check-cast v20, Ljava/util/List;

    .line 1710
    .line 1711
    :try_start_1
    invoke-static {v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v0

    .line 1715
    invoke-static {v0, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v0

    .line 1722
    new-instance v6, La8/t0;

    .line 1723
    .line 1724
    const/4 v7, 0x5

    .line 1725
    invoke-direct {v6, v7}, La8/t0;-><init>(I)V

    .line 1726
    .line 1727
    .line 1728
    new-instance v7, Lwb/h;

    .line 1729
    .line 1730
    invoke-direct {v7, v0, v14, v6}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 1731
    .line 1732
    .line 1733
    sget-object v0, La8/t0;->d:La8/t0;

    .line 1734
    .line 1735
    new-instance v6, Lwb/b;

    .line 1736
    .line 1737
    invoke-interface {v7}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v7

    .line 1741
    invoke-direct {v6, v7, v0}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 1742
    .line 1743
    .line 1744
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1745
    .line 1746
    .line 1747
    move-result v0

    .line 1748
    if-nez v0, :cond_43

    .line 1749
    .line 1750
    move-object v0, v9

    .line 1751
    goto :goto_31

    .line 1752
    :cond_43
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v0

    .line 1756
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1757
    .line 1758
    .line 1759
    move-result v7

    .line 1760
    if-nez v7, :cond_44

    .line 1761
    .line 1762
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    goto :goto_31

    .line 1767
    :cond_44
    new-instance v7, Ljava/util/ArrayList;

    .line 1768
    .line 1769
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    .line 1774
    .line 1775
    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1776
    .line 1777
    .line 1778
    move-result v0

    .line 1779
    if-eqz v0, :cond_45

    .line 1780
    .line 1781
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1786
    .line 1787
    .line 1788
    goto :goto_30

    .line 1789
    :cond_45
    move-object v0, v7

    .line 1790
    goto :goto_31

    .line 1791
    :catchall_1
    move-exception v0

    .line 1792
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    :goto_31
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v6

    .line 1800
    if-nez v6, :cond_46

    .line 1801
    .line 1802
    goto :goto_32

    .line 1803
    :cond_46
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 1804
    .line 1805
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v6

    .line 1809
    invoke-static {v10, v6}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v6

    .line 1813
    new-array v7, v14, [Ljava/lang/Object;

    .line 1814
    .line 1815
    aput-object v6, v7, v13

    .line 1816
    .line 1817
    invoke-virtual {v0, v11, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1818
    .line 1819
    .line 1820
    move-object v0, v9

    .line 1821
    :goto_32
    check-cast v0, Ljava/util/List;

    .line 1822
    .line 1823
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1824
    .line 1825
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1826
    .line 1827
    .line 1828
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v7

    .line 1832
    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1833
    .line 1834
    .line 1835
    move-result v8

    .line 1836
    if-eqz v8, :cond_48

    .line 1837
    .line 1838
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v8

    .line 1842
    move-object v10, v8

    .line 1843
    check-cast v10, Lz7/v1;

    .line 1844
    .line 1845
    invoke-interface {v10}, Lz7/v1;->getName()Ljava/lang/String;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v10

    .line 1849
    invoke-virtual {v6, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v11

    .line 1853
    if-nez v11, :cond_47

    .line 1854
    .line 1855
    new-instance v11, Ljava/util/ArrayList;

    .line 1856
    .line 1857
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    .line 1859
    .line 1860
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    :cond_47
    check-cast v11, Ljava/util/List;

    .line 1864
    .line 1865
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1866
    .line 1867
    .line 1868
    goto :goto_33

    .line 1869
    :cond_48
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1870
    .line 1871
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v6

    .line 1878
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v6

    .line 1882
    :cond_49
    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1883
    .line 1884
    .line 1885
    move-result v8

    .line 1886
    if-eqz v8, :cond_4a

    .line 1887
    .line 1888
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v8

    .line 1892
    check-cast v8, Ljava/util/Map$Entry;

    .line 1893
    .line 1894
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v10

    .line 1898
    check-cast v10, Ljava/util/List;

    .line 1899
    .line 1900
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 1901
    .line 1902
    .line 1903
    move-result v10

    .line 1904
    if-le v10, v14, :cond_49

    .line 1905
    .line 1906
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v10

    .line 1910
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v8

    .line 1914
    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    .line 1916
    .line 1917
    goto :goto_34

    .line 1918
    :cond_4a
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v6

    .line 1922
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v6

    .line 1926
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v7

    .line 1930
    if-eqz v7, :cond_4b

    .line 1931
    .line 1932
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v0

    .line 1936
    check-cast v0, Ljava/util/Map$Entry;

    .line 1937
    .line 1938
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v6

    .line 1942
    check-cast v6, Ljava/lang/String;

    .line 1943
    .line 1944
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v0

    .line 1948
    move-object/from16 v21, v0

    .line 1949
    .line 1950
    check-cast v21, Ljava/util/List;

    .line 1951
    .line 1952
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 1953
    .line 1954
    sget-object v7, Lg9/y;->a:Lg9/z;

    .line 1955
    .line 1956
    invoke-virtual {v7, v5}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v5

    .line 1960
    invoke-interface {v5}, Lm9/c;->k()Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v5

    .line 1964
    sget-object v25, La8/t0;->e:La8/t0;

    .line 1965
    .line 1966
    const/16 v26, 0x1f

    .line 1967
    .line 1968
    const/16 v22, 0x0

    .line 1969
    .line 1970
    const/16 v23, 0x0

    .line 1971
    .line 1972
    const/16 v24, 0x0

    .line 1973
    .line 1974
    invoke-static/range {v21 .. v26}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v7

    .line 1978
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1979
    .line 1980
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    .line 1985
    .line 1986
    const-string v5, " \u4e2d name \u91cd\u590d\uff1a\'"

    .line 1987
    .line 1988
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    .line 1993
    .line 1994
    const-string v5, "\'\uff0c\u6a21\u5757\uff1a"

    .line 1995
    .line 1996
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    .line 1998
    .line 1999
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v5

    .line 2006
    new-array v6, v14, [Ljava/lang/Object;

    .line 2007
    .line 2008
    aput-object v5, v6, v13

    .line 2009
    .line 2010
    const-string v5, "CarLife_Vehicle"

    .line 2011
    .line 2012
    invoke-virtual {v0, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2013
    .line 2014
    .line 2015
    move-object/from16 v21, v9

    .line 2016
    .line 2017
    :goto_35
    const v6, 0x4c5de2

    .line 2018
    .line 2019
    .line 2020
    goto :goto_36

    .line 2021
    :cond_4b
    move-object/from16 v21, v0

    .line 2022
    .line 2023
    goto :goto_35

    .line 2024
    :goto_36
    invoke-virtual {v4, v6}, Lf1/s;->W(I)V

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v0

    .line 2031
    if-ne v0, v2, :cond_4c

    .line 2032
    .line 2033
    new-instance v0, La8/s0;

    .line 2034
    .line 2035
    invoke-direct {v0, v15, v3}, La8/s0;-><init>(Lf1/b1;I)V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2039
    .line 2040
    .line 2041
    :cond_4c
    move-object/from16 v22, v0

    .line 2042
    .line 2043
    check-cast v22, Lf9/k;

    .line 2044
    .line 2045
    invoke-virtual {v4, v13}, Lf1/s;->p(Z)V

    .line 2046
    .line 2047
    .line 2048
    const/16 v24, 0x6c06

    .line 2049
    .line 2050
    sget-object v18, La8/w0;->a:La8/w0;

    .line 2051
    .line 2052
    const-string v19, "\u6267\u884c\u52a8\u4f5c"

    .line 2053
    .line 2054
    move-object/from16 v23, v4

    .line 2055
    .line 2056
    invoke-virtual/range {v18 .. v24}, La8/w0;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;Lf1/s;I)V

    .line 2057
    .line 2058
    .line 2059
    :goto_37
    return-object v17

    .line 2060
    :pswitch_18
    move-object/from16 v4, p1

    .line 2061
    .line 2062
    check-cast v4, Lf1/s;

    .line 2063
    .line 2064
    move-object/from16 v0, p2

    .line 2065
    .line 2066
    check-cast v0, Ljava/lang/Number;

    .line 2067
    .line 2068
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2069
    .line 2070
    .line 2071
    move-result v0

    .line 2072
    const-class v5, Lz7/v1;

    .line 2073
    .line 2074
    and-int/lit8 v0, v0, 0x3

    .line 2075
    .line 2076
    if-ne v0, v3, :cond_4e

    .line 2077
    .line 2078
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 2079
    .line 2080
    .line 2081
    move-result v0

    .line 2082
    if-nez v0, :cond_4d

    .line 2083
    .line 2084
    goto :goto_38

    .line 2085
    :cond_4d
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 2086
    .line 2087
    .line 2088
    goto/16 :goto_40

    .line 2089
    .line 2090
    :cond_4e
    :goto_38
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v0

    .line 2094
    move-object v7, v0

    .line 2095
    check-cast v7, Ljava/util/List;

    .line 2096
    .line 2097
    :try_start_2
    invoke-static {v5}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v0

    .line 2101
    invoke-static {v0, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    .line 2103
    .line 2104
    invoke-static {v0}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v0

    .line 2108
    new-instance v3, La8/t0;

    .line 2109
    .line 2110
    const/4 v6, 0x4

    .line 2111
    invoke-direct {v3, v6}, La8/t0;-><init>(I)V

    .line 2112
    .line 2113
    .line 2114
    new-instance v6, Lwb/h;

    .line 2115
    .line 2116
    invoke-direct {v6, v0, v14, v3}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 2117
    .line 2118
    .line 2119
    sget-object v0, La8/t0;->b:La8/t0;

    .line 2120
    .line 2121
    new-instance v3, Lwb/b;

    .line 2122
    .line 2123
    invoke-interface {v6}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v6

    .line 2127
    invoke-direct {v3, v6, v0}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 2128
    .line 2129
    .line 2130
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v0

    .line 2134
    if-nez v0, :cond_4f

    .line 2135
    .line 2136
    move-object v0, v9

    .line 2137
    goto :goto_3a

    .line 2138
    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v0

    .line 2142
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2143
    .line 2144
    .line 2145
    move-result v6

    .line 2146
    if-nez v6, :cond_50

    .line 2147
    .line 2148
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v0

    .line 2152
    goto :goto_3a

    .line 2153
    :cond_50
    new-instance v6, Ljava/util/ArrayList;

    .line 2154
    .line 2155
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2156
    .line 2157
    .line 2158
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    .line 2160
    .line 2161
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2162
    .line 2163
    .line 2164
    move-result v0

    .line 2165
    if-eqz v0, :cond_51

    .line 2166
    .line 2167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v0

    .line 2171
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2172
    .line 2173
    .line 2174
    goto :goto_39

    .line 2175
    :cond_51
    move-object v0, v6

    .line 2176
    goto :goto_3a

    .line 2177
    :catchall_2
    move-exception v0

    .line 2178
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v0

    .line 2182
    :goto_3a
    invoke-static {v0}, Lr8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v3

    .line 2186
    if-nez v3, :cond_52

    .line 2187
    .line 2188
    goto :goto_3b

    .line 2189
    :cond_52
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2190
    .line 2191
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v3

    .line 2195
    invoke-static {v10, v3}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v3

    .line 2199
    new-array v6, v14, [Ljava/lang/Object;

    .line 2200
    .line 2201
    aput-object v3, v6, v13

    .line 2202
    .line 2203
    invoke-virtual {v0, v11, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2204
    .line 2205
    .line 2206
    move-object v0, v9

    .line 2207
    :goto_3b
    check-cast v0, Ljava/util/List;

    .line 2208
    .line 2209
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 2210
    .line 2211
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2212
    .line 2213
    .line 2214
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v6

    .line 2218
    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2219
    .line 2220
    .line 2221
    move-result v8

    .line 2222
    if-eqz v8, :cond_54

    .line 2223
    .line 2224
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v8

    .line 2228
    move-object v10, v8

    .line 2229
    check-cast v10, Lz7/v1;

    .line 2230
    .line 2231
    invoke-interface {v10}, Lz7/v1;->getName()Ljava/lang/String;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v10

    .line 2235
    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    .line 2237
    .line 2238
    move-result-object v11

    .line 2239
    if-nez v11, :cond_53

    .line 2240
    .line 2241
    new-instance v11, Ljava/util/ArrayList;

    .line 2242
    .line 2243
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2244
    .line 2245
    .line 2246
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    :cond_53
    check-cast v11, Ljava/util/List;

    .line 2250
    .line 2251
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2252
    .line 2253
    .line 2254
    goto :goto_3c

    .line 2255
    :cond_54
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 2256
    .line 2257
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2258
    .line 2259
    .line 2260
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v3

    .line 2264
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v3

    .line 2268
    :cond_55
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2269
    .line 2270
    .line 2271
    move-result v8

    .line 2272
    if-eqz v8, :cond_56

    .line 2273
    .line 2274
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v8

    .line 2278
    check-cast v8, Ljava/util/Map$Entry;

    .line 2279
    .line 2280
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v10

    .line 2284
    check-cast v10, Ljava/util/List;

    .line 2285
    .line 2286
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 2287
    .line 2288
    .line 2289
    move-result v10

    .line 2290
    if-le v10, v14, :cond_55

    .line 2291
    .line 2292
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v10

    .line 2296
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v8

    .line 2300
    invoke-interface {v6, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    .line 2302
    .line 2303
    goto :goto_3d

    .line 2304
    :cond_56
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2305
    .line 2306
    .line 2307
    move-result-object v3

    .line 2308
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v3

    .line 2312
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2313
    .line 2314
    .line 2315
    move-result v6

    .line 2316
    if-eqz v6, :cond_57

    .line 2317
    .line 2318
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v0

    .line 2322
    check-cast v0, Ljava/util/Map$Entry;

    .line 2323
    .line 2324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v3

    .line 2328
    check-cast v3, Ljava/lang/String;

    .line 2329
    .line 2330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2331
    .line 2332
    .line 2333
    move-result-object v0

    .line 2334
    move-object/from16 v19, v0

    .line 2335
    .line 2336
    check-cast v19, Ljava/util/List;

    .line 2337
    .line 2338
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2339
    .line 2340
    sget-object v6, Lg9/y;->a:Lg9/z;

    .line 2341
    .line 2342
    invoke-virtual {v6, v5}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v5

    .line 2346
    invoke-interface {v5}, Lm9/c;->k()Ljava/lang/String;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v5

    .line 2350
    sget-object v23, La8/t0;->c:La8/t0;

    .line 2351
    .line 2352
    const/16 v24, 0x1f

    .line 2353
    .line 2354
    const/16 v20, 0x0

    .line 2355
    .line 2356
    const/16 v21, 0x0

    .line 2357
    .line 2358
    const/16 v22, 0x0

    .line 2359
    .line 2360
    invoke-static/range {v19 .. v24}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v6

    .line 2364
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2365
    .line 2366
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2367
    .line 2368
    .line 2369
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    .line 2371
    .line 2372
    const-string v5, " \u4e2d name \u91cd\u590d\uff1a\'"

    .line 2373
    .line 2374
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    .line 2379
    .line 2380
    const-string v3, "\'\uff0c\u6a21\u5757\uff1a"

    .line 2381
    .line 2382
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v3

    .line 2392
    new-array v5, v14, [Ljava/lang/Object;

    .line 2393
    .line 2394
    aput-object v3, v5, v13

    .line 2395
    .line 2396
    const-string v3, "CarLife_Vehicle"

    .line 2397
    .line 2398
    invoke-virtual {v0, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2399
    .line 2400
    .line 2401
    move-object v8, v9

    .line 2402
    :goto_3e
    const v3, 0x4c5de2

    .line 2403
    .line 2404
    .line 2405
    goto :goto_3f

    .line 2406
    :cond_57
    move-object v8, v0

    .line 2407
    goto :goto_3e

    .line 2408
    :goto_3f
    invoke-virtual {v4, v3}, Lf1/s;->W(I)V

    .line 2409
    .line 2410
    .line 2411
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v0

    .line 2415
    if-ne v0, v2, :cond_58

    .line 2416
    .line 2417
    new-instance v0, La8/s0;

    .line 2418
    .line 2419
    invoke-direct {v0, v15, v14}, La8/s0;-><init>(Lf1/b1;I)V

    .line 2420
    .line 2421
    .line 2422
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2423
    .line 2424
    .line 2425
    :cond_58
    move-object v9, v0

    .line 2426
    check-cast v9, Lf9/k;

    .line 2427
    .line 2428
    invoke-virtual {v4, v13}, Lf1/s;->p(Z)V

    .line 2429
    .line 2430
    .line 2431
    const/16 v11, 0x6c06

    .line 2432
    .line 2433
    sget-object v5, La8/w0;->a:La8/w0;

    .line 2434
    .line 2435
    const-string v6, "\u89e6\u53d1\u6761\u4ef6"

    .line 2436
    .line 2437
    move-object v10, v4

    .line 2438
    invoke-virtual/range {v5 .. v11}, La8/w0;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;Lf1/s;I)V

    .line 2439
    .line 2440
    .line 2441
    :goto_40
    return-object v17

    .line 2442
    :pswitch_19
    move-object/from16 v0, p1

    .line 2443
    .line 2444
    check-cast v0, Lf1/s;

    .line 2445
    .line 2446
    move-object/from16 v4, p2

    .line 2447
    .line 2448
    check-cast v4, Ljava/lang/Number;

    .line 2449
    .line 2450
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 2451
    .line 2452
    .line 2453
    move-result v4

    .line 2454
    and-int/lit8 v4, v4, 0x3

    .line 2455
    .line 2456
    if-ne v4, v3, :cond_5a

    .line 2457
    .line 2458
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 2459
    .line 2460
    .line 2461
    move-result v3

    .line 2462
    if-nez v3, :cond_59

    .line 2463
    .line 2464
    goto :goto_41

    .line 2465
    :cond_59
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 2466
    .line 2467
    .line 2468
    goto :goto_42

    .line 2469
    :cond_5a
    :goto_41
    sget-object v4, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 2470
    .line 2471
    const/4 v3, 0x4

    .line 2472
    int-to-float v6, v3

    .line 2473
    const/16 v3, 0xc

    .line 2474
    .line 2475
    int-to-float v8, v3

    .line 2476
    const/4 v9, 0x5

    .line 2477
    const/4 v5, 0x0

    .line 2478
    const/4 v7, 0x0

    .line 2479
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v20

    .line 2483
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v3

    .line 2487
    check-cast v3, Ljava/lang/String;

    .line 2488
    .line 2489
    const v6, 0x4c5de2

    .line 2490
    .line 2491
    .line 2492
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 2493
    .line 2494
    .line 2495
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v4

    .line 2499
    if-ne v4, v2, :cond_5b

    .line 2500
    .line 2501
    new-instance v4, La8/s0;

    .line 2502
    .line 2503
    invoke-direct {v4, v15, v13}, La8/s0;-><init>(Lf1/b1;I)V

    .line 2504
    .line 2505
    .line 2506
    invoke-virtual {v0, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2507
    .line 2508
    .line 2509
    :cond_5b
    move-object/from16 v19, v4

    .line 2510
    .line 2511
    check-cast v19, Lf9/k;

    .line 2512
    .line 2513
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 2514
    .line 2515
    .line 2516
    sget-object v23, La8/c;->d:Ln1/c;

    .line 2517
    .line 2518
    const/high16 v35, 0xc00000

    .line 2519
    .line 2520
    const v36, 0x7dffb8

    .line 2521
    .line 2522
    .line 2523
    const/16 v21, 0x0

    .line 2524
    .line 2525
    const/16 v22, 0x0

    .line 2526
    .line 2527
    const/16 v24, 0x0

    .line 2528
    .line 2529
    const/16 v25, 0x0

    .line 2530
    .line 2531
    const/16 v26, 0x0

    .line 2532
    .line 2533
    const/16 v27, 0x0

    .line 2534
    .line 2535
    const/16 v28, 0x1

    .line 2536
    .line 2537
    const/16 v29, 0x0

    .line 2538
    .line 2539
    const/16 v30, 0x0

    .line 2540
    .line 2541
    const/16 v31, 0x0

    .line 2542
    .line 2543
    const/16 v32, 0x0

    .line 2544
    .line 2545
    const v34, 0x1801b0

    .line 2546
    .line 2547
    .line 2548
    move-object/from16 v33, v0

    .line 2549
    .line 2550
    move-object/from16 v18, v3

    .line 2551
    .line 2552
    invoke-static/range {v18 .. v36}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 2553
    .line 2554
    .line 2555
    :goto_42
    return-object v17

    .line 2556
    :pswitch_1a
    move-object/from16 v10, p1

    .line 2557
    .line 2558
    check-cast v10, Lf1/s;

    .line 2559
    .line 2560
    move-object/from16 v0, p2

    .line 2561
    .line 2562
    check-cast v0, Ljava/lang/Number;

    .line 2563
    .line 2564
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2565
    .line 2566
    .line 2567
    move-result v0

    .line 2568
    and-int/lit8 v0, v0, 0x3

    .line 2569
    .line 2570
    if-ne v0, v3, :cond_5d

    .line 2571
    .line 2572
    invoke-virtual {v10}, Lf1/s;->z()Z

    .line 2573
    .line 2574
    .line 2575
    move-result v0

    .line 2576
    if-nez v0, :cond_5c

    .line 2577
    .line 2578
    goto :goto_43

    .line 2579
    :cond_5c
    invoke-virtual {v10}, Lf1/s;->Q()V

    .line 2580
    .line 2581
    .line 2582
    goto :goto_46

    .line 2583
    :cond_5d
    :goto_43
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v0

    .line 2587
    check-cast v0, Ljava/lang/Boolean;

    .line 2588
    .line 2589
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2590
    .line 2591
    .line 2592
    move-result v0

    .line 2593
    if-eqz v0, :cond_5e

    .line 2594
    .line 2595
    const-string v0, "\u505c\u6b62"

    .line 2596
    .line 2597
    :goto_44
    move-object v4, v0

    .line 2598
    const v3, 0x4c5de2

    .line 2599
    .line 2600
    .line 2601
    goto :goto_45

    .line 2602
    :cond_5e
    const-string v0, "\u76d1\u542c"

    .line 2603
    .line 2604
    goto :goto_44

    .line 2605
    :goto_45
    invoke-virtual {v10, v3}, Lf1/s;->W(I)V

    .line 2606
    .line 2607
    .line 2608
    invoke-virtual {v10}, Lf1/s;->K()Ljava/lang/Object;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v0

    .line 2612
    if-ne v0, v2, :cond_5f

    .line 2613
    .line 2614
    new-instance v0, La8/f;

    .line 2615
    .line 2616
    const/4 v2, 0x6

    .line 2617
    invoke-direct {v0, v15, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 2618
    .line 2619
    .line 2620
    invoke-virtual {v10, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2621
    .line 2622
    .line 2623
    :cond_5f
    move-object v9, v0

    .line 2624
    check-cast v9, Lf9/a;

    .line 2625
    .line 2626
    invoke-virtual {v10, v13}, Lf1/s;->p(Z)V

    .line 2627
    .line 2628
    .line 2629
    const/16 v11, 0xc00

    .line 2630
    .line 2631
    const/4 v12, 0x6

    .line 2632
    const-wide/16 v5, 0x0

    .line 2633
    .line 2634
    const-wide/16 v7, 0x0

    .line 2635
    .line 2636
    invoke-static/range {v4 .. v12}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 2637
    .line 2638
    .line 2639
    :goto_46
    return-object v17

    .line 2640
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2641
    .line 2642
    check-cast v0, Lf1/s;

    .line 2643
    .line 2644
    move-object/from16 v4, p2

    .line 2645
    .line 2646
    check-cast v4, Ljava/lang/Number;

    .line 2647
    .line 2648
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 2649
    .line 2650
    .line 2651
    move-result v4

    .line 2652
    and-int/lit8 v4, v4, 0x3

    .line 2653
    .line 2654
    if-ne v4, v3, :cond_60

    .line 2655
    .line 2656
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 2657
    .line 2658
    .line 2659
    move-result v3

    .line 2660
    if-nez v3, :cond_61

    .line 2661
    .line 2662
    :cond_60
    const v3, 0x4c5de2

    .line 2663
    .line 2664
    .line 2665
    goto :goto_47

    .line 2666
    :cond_61
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 2667
    .line 2668
    .line 2669
    goto :goto_48

    .line 2670
    :goto_47
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    .line 2671
    .line 2672
    .line 2673
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 2674
    .line 2675
    .line 2676
    move-result-object v3

    .line 2677
    if-ne v3, v2, :cond_62

    .line 2678
    .line 2679
    new-instance v3, La8/f;

    .line 2680
    .line 2681
    const/4 v2, 0x5

    .line 2682
    invoke-direct {v3, v15, v2}, La8/f;-><init>(Lf1/b1;I)V

    .line 2683
    .line 2684
    .line 2685
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 2686
    .line 2687
    .line 2688
    :cond_62
    check-cast v3, Lf9/a;

    .line 2689
    .line 2690
    invoke-virtual {v0, v13}, Lf1/s;->p(Z)V

    .line 2691
    .line 2692
    .line 2693
    const-string v2, "\u9000\u51fa"

    .line 2694
    .line 2695
    const/16 v4, 0x36

    .line 2696
    .line 2697
    invoke-static {v2, v3, v0, v4}, Lg5/a;->o(Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 2698
    .line 2699
    .line 2700
    :goto_48
    return-object v17

    .line 2701
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2702
    .line 2703
    check-cast v0, Lf1/s;

    .line 2704
    .line 2705
    move-object/from16 v2, p2

    .line 2706
    .line 2707
    check-cast v2, Ljava/lang/Number;

    .line 2708
    .line 2709
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 2710
    .line 2711
    .line 2712
    move-result v2

    .line 2713
    and-int/lit8 v2, v2, 0x3

    .line 2714
    .line 2715
    if-ne v2, v3, :cond_64

    .line 2716
    .line 2717
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 2718
    .line 2719
    .line 2720
    move-result v2

    .line 2721
    if-nez v2, :cond_63

    .line 2722
    .line 2723
    goto :goto_49

    .line 2724
    :cond_63
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 2725
    .line 2726
    .line 2727
    goto :goto_4a

    .line 2728
    :cond_64
    :goto_49
    sget-object v2, La8/t;->a:La8/t;

    .line 2729
    .line 2730
    invoke-interface {v15}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 2731
    .line 2732
    .line 2733
    move-result-object v2

    .line 2734
    check-cast v2, Lj8/k0;

    .line 2735
    .line 2736
    iget-object v2, v2, Lj8/k0;->a:Ljava/lang/String;

    .line 2737
    .line 2738
    invoke-static {v2, v7, v0, v13, v3}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 2739
    .line 2740
    .line 2741
    invoke-static {v13, v0}, Lg5/a;->i(ILf1/s;)V

    .line 2742
    .line 2743
    .line 2744
    :goto_4a
    return-object v17

    .line 2745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
