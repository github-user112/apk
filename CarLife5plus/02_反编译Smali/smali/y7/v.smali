.class public final Ly7/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# instance fields
.field public final a:Lz7/u1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->b:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Ly7/v;->a:Lz7/u1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lc8/k0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v3, v2}, Lc8/k0;-><init>(ILw8/c;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u8fde\u63a5\u7c7b\u578b"

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    const-string v2, "onDismissRequest"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "onConfigured"

    .line 15
    .line 16
    invoke-static {v4, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, -0x648b2d41

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lf1/s;->Y(I)Lf1/s;

    .line 23
    .line 24
    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x2

    .line 36
    :goto_0
    or-int v5, p5, v5

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v5, v6

    .line 50
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v6, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v5, v6

    .line 62
    and-int/lit16 v6, v5, 0x493

    .line 63
    .line 64
    const/16 v7, 0x492

    .line 65
    .line 66
    if-ne v6, v7, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    :goto_3
    const v6, 0x4c5de2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 90
    .line 91
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    new-instance v6, Lc8/g;

    .line 94
    .line 95
    const/16 v7, 0x1d

    .line 96
    .line 97
    invoke-direct {v6, v3, v7}, Lc8/g;-><init>(Lf9/a;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    check-cast v6, Lf9/a;

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    invoke-virtual {v0, v7}, Lf1/s;->p(Z)V

    .line 107
    .line 108
    .line 109
    new-instance v7, Lc8/s;

    .line 110
    .line 111
    const/16 v8, 0x13

    .line 112
    .line 113
    invoke-direct {v7, v8, v4, v1}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const v8, -0x2b0ba18a

    .line 117
    .line 118
    .line 119
    invoke-static {v8, v7, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    and-int/lit8 v17, v5, 0xe

    .line 124
    .line 125
    const/16 v18, 0x3fc

    .line 126
    .line 127
    const-wide/16 v7, 0x0

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v13, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    move-object/from16 v16, v0

    .line 136
    .line 137
    move v5, v2

    .line 138
    invoke-static/range {v5 .. v18}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-eqz v7, :cond_6

    .line 146
    .line 147
    new-instance v0, Lc8/h;

    .line 148
    .line 149
    const/16 v6, 0x10

    .line 150
    .line 151
    move/from16 v2, p1

    .line 152
    .line 153
    move/from16 v5, p5

    .line 154
    .line 155
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 156
    .line 157
    .line 158
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 159
    .line 160
    :cond_6
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ConnectType"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Ly7/v;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method
