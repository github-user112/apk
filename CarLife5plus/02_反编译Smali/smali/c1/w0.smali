.class public final Lc1/w0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Lf9/n;

.field public final synthetic c:Ln3/c;

.field public final synthetic d:Lc1/q2;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lf9/k;

.field public final synthetic g:Z

.field public final synthetic h:Lb3/o0;

.field public final synthetic i:Ll0/r0;

.field public final synthetic j:Ll0/q0;

.field public final synthetic k:Z

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Lb3/i0;

.field public final synthetic o:Lb0/k;

.field public final synthetic p:Lf9/n;

.field public final synthetic q:Ly1/l0;


# direct methods
.method public constructor <init>(Lr1/p;Lf9/n;Ln3/c;Lc1/q2;Ljava/lang/String;Lf9/k;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lb0/k;Lf9/n;Ly1/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/w0;->a:Lr1/p;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/w0;->b:Lf9/n;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/w0;->c:Ln3/c;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/w0;->d:Lc1/q2;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/w0;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/w0;->f:Lf9/k;

    .line 12
    .line 13
    iput-boolean p7, p0, Lc1/w0;->g:Z

    .line 14
    .line 15
    iput-object p8, p0, Lc1/w0;->h:Lb3/o0;

    .line 16
    .line 17
    iput-object p9, p0, Lc1/w0;->i:Ll0/r0;

    .line 18
    .line 19
    iput-object p10, p0, Lc1/w0;->j:Ll0/q0;

    .line 20
    .line 21
    iput-boolean p11, p0, Lc1/w0;->k:Z

    .line 22
    .line 23
    iput p12, p0, Lc1/w0;->l:I

    .line 24
    .line 25
    iput p13, p0, Lc1/w0;->m:I

    .line 26
    .line 27
    iput-object p14, p0, Lc1/w0;->n:Lb3/i0;

    .line 28
    .line 29
    iput-object p15, p0, Lc1/w0;->o:Lb0/k;

    .line 30
    .line 31
    move-object/from16 p1, p16

    .line 32
    .line 33
    iput-object p1, p0, Lc1/w0;->p:Lf9/n;

    .line 34
    .line 35
    move-object/from16 p1, p17

    .line 36
    .line 37
    iput-object p1, p0, Lc1/w0;->q:Ly1/l0;

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v2, v2, 0x3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v2, v0, Lc1/w0;->b:Lf9/n;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    sget-object v2, Lc1/g;->c:Lc1/g;

    .line 37
    .line 38
    new-instance v3, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v3, v2, v4}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lc1/w0;->c:Ln3/c;

    .line 45
    .line 46
    sget-wide v4, Lc1/b1;->b:J

    .line 47
    .line 48
    invoke-interface {v2, v4, v5}, Ln3/c;->q(J)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v7, 0x0

    .line 53
    const/16 v8, 0xd

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object v2, Lr1/m;->a:Lr1/m;

    .line 63
    .line 64
    :goto_1
    iget-object v3, v0, Lc1/w0;->a:Lr1/p;

    .line 65
    .line 66
    invoke-interface {v3, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v3, Lr2/n0;->a:Lf1/c0;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object v3, Lr2/n0;->b:Lf1/w2;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const v4, 0x7f0e0029

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    sget v3, Ld1/r;->b:F

    .line 94
    .line 95
    sget v3, Lc1/t0;->c:F

    .line 96
    .line 97
    sget v4, Lc1/t0;->b:F

    .line 98
    .line 99
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/c;->a(Lr1/p;FF)Lr1/p;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v14, Ly1/n0;

    .line 104
    .line 105
    iget-object v12, v0, Lc1/w0;->d:Lc1/q2;

    .line 106
    .line 107
    iget-wide v4, v12, Lc1/q2;->i:J

    .line 108
    .line 109
    invoke-direct {v14, v4, v5}, Ly1/n0;-><init>(J)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Lc1/v0;

    .line 113
    .line 114
    iget-object v11, v0, Lc1/w0;->p:Lf9/n;

    .line 115
    .line 116
    iget-object v13, v0, Lc1/w0;->q:Ly1/l0;

    .line 117
    .line 118
    iget-object v5, v0, Lc1/w0;->e:Ljava/lang/String;

    .line 119
    .line 120
    iget-boolean v6, v0, Lc1/w0;->g:Z

    .line 121
    .line 122
    iget-boolean v7, v0, Lc1/w0;->k:Z

    .line 123
    .line 124
    iget-object v8, v0, Lc1/w0;->n:Lb3/i0;

    .line 125
    .line 126
    iget-object v9, v0, Lc1/w0;->o:Lb0/k;

    .line 127
    .line 128
    iget-object v10, v0, Lc1/w0;->b:Lf9/n;

    .line 129
    .line 130
    invoke-direct/range {v4 .. v13}, Lc1/v0;-><init>(Ljava/lang/String;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ly1/l0;)V

    .line 131
    .line 132
    .line 133
    move-object v13, v9

    .line 134
    const v2, 0x57e4c9cd

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v4, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    const/16 v17, 0x0

    .line 142
    .line 143
    iget-object v2, v0, Lc1/w0;->f:Lf9/k;

    .line 144
    .line 145
    move-object/from16 v16, v1

    .line 146
    .line 147
    move-object v1, v5

    .line 148
    iget-object v5, v0, Lc1/w0;->h:Lb3/o0;

    .line 149
    .line 150
    move v4, v6

    .line 151
    iget-object v6, v0, Lc1/w0;->i:Ll0/r0;

    .line 152
    .line 153
    move-object v11, v8

    .line 154
    move v8, v7

    .line 155
    iget-object v7, v0, Lc1/w0;->j:Ll0/q0;

    .line 156
    .line 157
    iget v9, v0, Lc1/w0;->l:I

    .line 158
    .line 159
    iget v10, v0, Lc1/w0;->m:I

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-static/range {v1 .. v17}, Ll0/j;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lf9/k;Lb0/k;Ly1/n0;Ln1/c;Lf1/s;I)V

    .line 163
    .line 164
    .line 165
    :goto_2
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 166
    .line 167
    return-object v1
.end method
