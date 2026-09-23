.class public final Lt7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lt7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/c;->a:Lt7/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILf1/s;)V
    .locals 15

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    const v1, 0x4d07682b    # 1.41984432E8f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v12, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v12}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v12}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-object v1, Lr2/n0;->f:Lf1/w2;

    .line 28
    .line 29
    invoke-virtual {v12, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/View;

    .line 34
    .line 35
    sget-object v2, Lt7/g;->d:Ldc/l0;

    .line 36
    .line 37
    invoke-static {v2, v12}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0x6e3c21fe

    .line 42
    .line 43
    .line 44
    invoke-virtual {v12, v3}, Lf1/s;->W(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 52
    .line 53
    if-ne v4, v5, :cond_2

    .line 54
    .line 55
    sget-object v4, Lt7/f;->e:Lt7/f;

    .line 56
    .line 57
    invoke-static {v4}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v12, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    check-cast v4, Lf1/b1;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-virtual {v12, v6}, Lf1/s;->p(Z)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lt7/g;

    .line 75
    .line 76
    iget-boolean v2, v2, Lt7/g;->b:Z

    .line 77
    .line 78
    invoke-virtual {v12, v3}, Lf1/s;->W(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-ne v3, v5, :cond_3

    .line 86
    .line 87
    new-instance v3, Lm7/e;

    .line 88
    .line 89
    const/16 v5, 0x19

    .line 90
    .line 91
    invoke-direct {v3, v5}, Lm7/e;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    check-cast v3, Lf9/a;

    .line 98
    .line 99
    invoke-virtual {v12, v6}, Lf1/s;->p(Z)V

    .line 100
    .line 101
    .line 102
    new-instance v5, Lc8/s;

    .line 103
    .line 104
    const/16 v6, 0xf

    .line 105
    .line 106
    invoke-direct {v5, v6, v1, v4}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const v1, 0x547a0d45

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v5, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    new-instance v1, La8/m;

    .line 117
    .line 118
    const/16 v5, 0x12

    .line 119
    .line 120
    invoke-direct {v1, v4, v5}, La8/m;-><init>(Lf1/b1;I)V

    .line 121
    .line 122
    .line 123
    const v4, -0x4a3f996c

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v1, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const v13, 0x180030

    .line 131
    .line 132
    .line 133
    const/16 v14, 0x3bc

    .line 134
    .line 135
    move v1, v2

    .line 136
    move-object v2, v3

    .line 137
    const-wide/16 v3, 0x0

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    invoke-static/range {v1 .. v14}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 145
    .line 146
    .line 147
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    new-instance v2, La8/d;

    .line 154
    .line 155
    const/16 v3, 0x16

    .line 156
    .line 157
    invoke-direct {v2, v0, v3, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object v2, v1, Lf1/w1;->d:Lf9/n;

    .line 161
    .line 162
    :cond_4
    return-void
.end method
