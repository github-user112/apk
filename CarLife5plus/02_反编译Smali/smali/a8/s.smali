.class public final La8/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/s;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lf0/c;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move-object/from16 v2, p3

    .line 14
    .line 15
    check-cast v2, Lf1/s;

    .line 16
    .line 17
    move-object/from16 v3, p4

    .line 18
    .line 19
    check-cast v3, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    and-int/lit8 v4, v3, 0x6

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    :goto_0
    or-int/2addr v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v0, v3

    .line 41
    :goto_1
    and-int/lit8 v3, v3, 0x30

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lf1/s;->d(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v3, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v0, v3

    .line 57
    :cond_3
    and-int/lit16 v3, v0, 0x93

    .line 58
    .line 59
    const/16 v4, 0x92

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eq v3, v4, :cond_4

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/4 v3, 0x0

    .line 68
    :goto_3
    and-int/2addr v0, v5

    .line 69
    invoke-virtual {v2, v0, v3}, Lf1/s;->N(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    move-object/from16 v0, p0

    .line 76
    .line 77
    iget-object v3, v0, La8/s;->a:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    const v3, -0x7f941789

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Lf1/s;->W(I)V

    .line 89
    .line 90
    .line 91
    const/16 v3, 0x12

    .line 92
    .line 93
    invoke-static {v3, v2}, Lg5/a;->B(ILf1/s;)F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const-wide v4, 0x100000000L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-static {v3, v4, v5}, Lc7/a;->M(FJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    const/16 v3, 0x1e

    .line 107
    .line 108
    invoke-static {v3, v2}, Lg5/a;->B(ILf1/s;)F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-static {v3, v4, v5}, Lc7/a;->M(FJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    sget-object v3, Lr1/m;->a:Lr1/m;

    .line 117
    .line 118
    invoke-static {v3}, Landroidx/compose/foundation/layout/c;->o(Lr1/p;)Lr1/p;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/16 v21, 0x1b0

    .line 123
    .line 124
    const v22, 0x1e3f4

    .line 125
    .line 126
    .line 127
    const-wide/16 v4, 0x0

    .line 128
    .line 129
    move-wide v6, v7

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    const-wide/16 v9, 0x0

    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v15, 0x0

    .line 138
    const/4 v14, 0x3

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/4 v15, 0x0

    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    const/16 v17, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    const/16 v20, 0x30

    .line 155
    .line 156
    move-object/from16 v19, v2

    .line 157
    .line 158
    move-object v2, v1

    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-static/range {v2 .. v22}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v2, v19

    .line 164
    .line 165
    invoke-virtual {v2, v1}, Lf1/s;->p(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move-object/from16 v0, p0

    .line 170
    .line 171
    invoke-virtual {v2}, Lf1/s;->Q()V

    .line 172
    .line 173
    .line 174
    :goto_4
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 175
    .line 176
    return-object v1
.end method
