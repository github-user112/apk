.class public final Lz/l1;
.super Lz/f0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Li2/d;
.implements Lq2/y1;
.implements Lq2/k;


# instance fields
.field public A:Lz/h;

.field public final B:Lj2/d;

.field public final C:Lz/d1;

.field public final D:Lz/h;

.field public final E:Lz/s1;

.field public final F:Ld6/h;

.field public final G:Lz/f;

.field public H:Lw7/a;

.field public I:Lz/j1;

.field public J:Lz/v0;

.field public z:Lx/h;


# direct methods
.method public constructor <init>(Lb0/k;Lx/h;Lz/h;Lz/w0;Lz/m1;ZZ)V
    .locals 10

    .line 1
    move/from16 v9, p6

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/gestures/a;->a:Lx7/h;

    .line 4
    .line 5
    invoke-direct {p0, v0, v9, p1, p4}, Lz/f0;-><init>(Lf9/k;ZLb0/k;Lz/w0;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lz/l1;->z:Lx/h;

    .line 9
    .line 10
    iput-object p3, p0, Lz/l1;->A:Lz/h;

    .line 11
    .line 12
    new-instance v6, Lj2/d;

    .line 13
    .line 14
    invoke-direct {v6}, Lj2/d;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v6, p0, Lz/l1;->B:Lj2/d;

    .line 18
    .line 19
    new-instance v0, Lz/d1;

    .line 20
    .line 21
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-boolean v9, v0, Lz/d1;->o:Z

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lz/l1;->C:Lz/d1;

    .line 30
    .line 31
    new-instance v0, Lz/h;

    .line 32
    .line 33
    new-instance v1, Lkb/a;

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/foundation/gestures/a;->d:Lz/g1;

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lkb/a;-><init>(Ln3/c;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lv/s;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Lv/s;-><init>(Lkb/a;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2}, Lz/h;-><init>(Lv/s;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lz/l1;->D:Lz/h;

    .line 49
    .line 50
    iget-object v2, p0, Lz/l1;->z:Lx/h;

    .line 51
    .line 52
    iget-object v1, p0, Lz/l1;->A:Lz/h;

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v3, v1

    .line 59
    :goto_0
    new-instance v0, Lz/s1;

    .line 60
    .line 61
    new-instance v8, Lv0/p;

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-direct {v8, v1, p0}, Lv0/p;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v7, p0

    .line 68
    move-object v4, p4

    .line 69
    move-object v1, p5

    .line 70
    move/from16 v5, p7

    .line 71
    .line 72
    invoke-direct/range {v0 .. v8}, Lz/s1;-><init>(Lz/m1;Lx/h;Lz/h;Lz/w0;ZLj2/d;Lz/l1;Lv0/p;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lz/l1;->E:Lz/s1;

    .line 76
    .line 77
    new-instance v1, Ld6/h;

    .line 78
    .line 79
    const/4 v2, 0x5

    .line 80
    invoke-direct {v1, v0, v2, v9}, Ld6/h;-><init>(Ljava/lang/Object;IZ)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lz/l1;->F:Ld6/h;

    .line 84
    .line 85
    new-instance v2, Lz/f;

    .line 86
    .line 87
    invoke-direct {v2, p4, v0, v5}, Lz/f;-><init>(Lz/w0;Lz/s1;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lz/l1;->G:Lz/f;

    .line 94
    .line 95
    new-instance v0, Lj2/g;

    .line 96
    .line 97
    invoke-direct {v0, v1, v6}, Lj2/g;-><init>(Lj2/a;Lj2/d;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 101
    .line 102
    .line 103
    new-instance v0, Lw1/s;

    .line 104
    .line 105
    const/4 v1, 0x4

    .line 106
    const/4 v3, 0x2

    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-direct {v0, v3, v4, v1}, Lw1/s;-><init>(ILf9/n;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 112
    .line 113
    .line 114
    new-instance v0, Li0/f;

    .line 115
    .line 116
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v2, v0, Li0/f;->o:Lz/f;

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 122
    .line 123
    .line 124
    new-instance v0, Lx/d0;

    .line 125
    .line 126
    new-instance v1, Ls0/d;

    .line 127
    .line 128
    const/16 v2, 0x9

    .line 129
    .line 130
    invoke-direct {v1, v2, p0}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v1, v0, Lx/d0;->o:Ls0/d;

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final H0(Lz/e0;Lz/e0;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lb1/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x12

    .line 5
    .line 6
    iget-object v3, p0, Lz/l1;->E:Lz/s1;

    .line 7
    .line 8
    invoke-direct {v0, p1, v3, v1, v2}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lx/v0;->b:Lx/v0;

    .line 12
    .line 13
    invoke-virtual {v3, p1, v0, p2}, Lz/s1;->f(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    return-object p1
.end method

.method public final I0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final J0(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz/l1;->B:Lj2/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj2/d;->c()Lac/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lz/j1;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v2, p0

    .line 12
    move-wide v3, p1

    .line 13
    invoke-direct/range {v1 .. v6}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-static {v0, v5, v1, p1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final K0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lz/l1;->E:Lz/s1;

    .line 2
    .line 3
    iget-object v1, v0, Lz/s1;->a:Lz/m1;

    .line 4
    .line 5
    invoke-interface {v1}, Lz/m1;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_8

    .line 10
    .line 11
    iget-object v0, v0, Lz/s1;->b:Lx/h;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    iget-object v0, v0, Lx/h;->c:Lx/b0;

    .line 16
    .line 17
    iget-object v1, v0, Lx/b0;->d:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    const/16 v2, 0x1f

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    if-lt v4, v2, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    cmpg-float v1, v1, v3

    .line 35
    .line 36
    if-nez v1, :cond_8

    .line 37
    .line 38
    :cond_1
    iget-object v1, v0, Lx/b0;->e:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    if-lt v4, v2, :cond_2

    .line 45
    .line 46
    invoke-static {v1}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_1
    cmpg-float v1, v1, v3

    .line 53
    .line 54
    if-nez v1, :cond_8

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Lx/b0;->f:Landroid/widget/EdgeEffect;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    if-lt v4, v2, :cond_4

    .line 63
    .line 64
    invoke-static {v1}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/4 v1, 0x0

    .line 70
    :goto_2
    cmpg-float v1, v1, v3

    .line 71
    .line 72
    if-nez v1, :cond_8

    .line 73
    .line 74
    :cond_5
    iget-object v0, v0, Lx/b0;->g:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    if-lt v1, v2, :cond_6

    .line 81
    .line 82
    invoke-static {v0}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    const/4 v0, 0x0

    .line 88
    :goto_3
    cmpg-float v0, v0, v3

    .line 89
    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    :cond_7
    const/4 v0, 0x0

    .line 93
    return v0

    .line 94
    :cond_8
    const/4 v0, 0x1

    .line 95
    return v0
.end method

.method public final M0(Lb0/k;Lx/h;Lz/h;Lz/w0;Lz/m1;ZZ)V
    .locals 11

    .line 1
    move-object/from16 v2, p5

    .line 2
    .line 3
    move/from16 v3, p6

    .line 4
    .line 5
    move/from16 v4, p7

    .line 6
    .line 7
    iget-boolean v5, p0, Lz/f0;->s:Z

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    if-eq v5, v3, :cond_0

    .line 12
    .line 13
    iget-object v5, p0, Lz/l1;->F:Ld6/h;

    .line 14
    .line 15
    iput-boolean v3, v5, Ld6/h;->b:Z

    .line 16
    .line 17
    iget-object v5, p0, Lz/l1;->C:Lz/d1;

    .line 18
    .line 19
    iput-boolean v3, v5, Lz/d1;->o:Z

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v8, 0x0

    .line 24
    :goto_0
    if-nez p3, :cond_1

    .line 25
    .line 26
    iget-object v5, p0, Lz/l1;->D:Lz/h;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v5, p3

    .line 30
    :goto_1
    iget-object v9, p0, Lz/l1;->E:Lz/s1;

    .line 31
    .line 32
    iget-object v10, v9, Lz/s1;->a:Lz/m1;

    .line 33
    .line 34
    invoke-static {v10, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    if-nez v10, :cond_2

    .line 39
    .line 40
    iput-object v2, v9, Lz/s1;->a:Lz/m1;

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    :cond_2
    iput-object p2, v9, Lz/s1;->b:Lx/h;

    .line 44
    .line 45
    iget-object v2, v9, Lz/s1;->d:Lz/w0;

    .line 46
    .line 47
    if-eq v2, p4, :cond_3

    .line 48
    .line 49
    iput-object p4, v9, Lz/s1;->d:Lz/w0;

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    :cond_3
    iget-boolean v2, v9, Lz/s1;->e:Z

    .line 53
    .line 54
    if-eq v2, v4, :cond_4

    .line 55
    .line 56
    iput-boolean v4, v9, Lz/s1;->e:Z

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move v6, v7

    .line 60
    :goto_2
    iput-object v5, v9, Lz/s1;->c:Lz/h;

    .line 61
    .line 62
    iget-object v2, p0, Lz/l1;->B:Lj2/d;

    .line 63
    .line 64
    iput-object v2, v9, Lz/s1;->f:Lj2/d;

    .line 65
    .line 66
    iget-object v2, p0, Lz/l1;->G:Lz/f;

    .line 67
    .line 68
    iput-object p4, v2, Lz/f;->o:Lz/w0;

    .line 69
    .line 70
    iput-boolean v4, v2, Lz/f;->q:Z

    .line 71
    .line 72
    iput-object p2, p0, Lz/l1;->z:Lx/h;

    .line 73
    .line 74
    iput-object p3, p0, Lz/l1;->A:Lz/h;

    .line 75
    .line 76
    iget-object p2, v9, Lz/s1;->d:Lz/w0;

    .line 77
    .line 78
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 79
    .line 80
    if-ne p2, v0, :cond_5

    .line 81
    .line 82
    :goto_3
    move-object v4, v0

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    sget-object v0, Lz/w0;->b:Lz/w0;

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :goto_4
    sget-object v1, Landroidx/compose/foundation/gestures/a;->a:Lx7/h;

    .line 88
    .line 89
    move-object v0, p0

    .line 90
    move v2, v3

    .line 91
    move v5, v6

    .line 92
    move-object v3, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Lz/f0;->L0(Lf9/k;ZLb0/k;Lz/w0;Z)V

    .line 94
    .line 95
    .line 96
    if-eqz v8, :cond_6

    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lz/l1;->H:Lw7/a;

    .line 100
    .line 101
    iput-object p1, p0, Lz/l1;->I:Lz/j1;

    .line 102
    .line 103
    invoke-static {p0}, Lq2/f;->n(Lq2/y1;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method public final Z(Ly2/j;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lz/f0;->s:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lz/l1;->H:Lw7/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lz/l1;->I:Lz/j1;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lw7/a;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-direct {v0, v2, p0}, Lw7/a;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lz/l1;->H:Lw7/a;

    .line 21
    .line 22
    new-instance v0, Lz/j1;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lz/j1;-><init>(Lz/l1;Lw8/c;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lz/l1;->I:Lz/j1;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lz/l1;->H:Lw7/a;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 34
    .line 35
    sget-object v2, Ly2/i;->d:Ly2/u;

    .line 36
    .line 37
    new-instance v3, Ly2/a;

    .line 38
    .line 39
    invoke-direct {v3, v1, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lz/l1;->I:Lz/j1;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 50
    .line 51
    sget-object v1, Ly2/i;->e:Ly2/u;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final i(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final l0(Lk2/o;Lk2/p;J)V
    .locals 17

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v0, v8, Lk2/o;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lk2/w;

    .line 22
    .line 23
    iget-object v5, v2, Lz/f0;->r:Lf9/k;

    .line 24
    .line 25
    invoke-interface {v5, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-super/range {p0 .. p4}, Lz/f0;->l0(Lk2/o;Lk2/p;J)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    iget-boolean v0, v2, Lz/f0;->s:Z

    .line 45
    .line 46
    if-eqz v0, :cond_c

    .line 47
    .line 48
    sget-object v0, Lk2/p;->a:Lk2/p;

    .line 49
    .line 50
    const/4 v11, 0x6

    .line 51
    if-ne v9, v0, :cond_3

    .line 52
    .line 53
    iget v0, v8, Lk2/o;->e:I

    .line 54
    .line 55
    if-ne v0, v11, :cond_3

    .line 56
    .line 57
    iget-object v0, v2, Lz/l1;->J:Lz/v0;

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    new-instance v12, Lz/v0;

    .line 62
    .line 63
    new-instance v13, Lv/a1;

    .line 64
    .line 65
    invoke-static {v2}, Lq2/f;->x(Lq2/l;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v13, v0}, Lv/a1;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ln1/b;

    .line 81
    .line 82
    const/4 v6, 0x4

    .line 83
    const/4 v7, 0x1

    .line 84
    const/4 v1, 0x2

    .line 85
    const-class v3, Lz/l1;

    .line 86
    .line 87
    const-string v4, "onWheelScrollStopped"

    .line 88
    .line 89
    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    .line 90
    .line 91
    invoke-direct/range {v0 .. v7}, Ln1/b;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 99
    .line 100
    iget-object v3, v2, Lz/l1;->E:Lz/s1;

    .line 101
    .line 102
    invoke-direct {v12, v3, v13, v0, v1}, Lz/v0;-><init>(Lz/s1;Lv/a1;Ln1/b;Ln3/c;)V

    .line 103
    .line 104
    .line 105
    iput-object v12, v2, Lz/l1;->J:Lz/v0;

    .line 106
    .line 107
    :cond_2
    iget-object v0, v2, Lz/l1;->J:Lz/v0;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v2}, Lr1/o;->m0()Lac/w;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v3, v0, Lz/v0;->g:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v3, Lac/j1;

    .line 118
    .line 119
    if-nez v3, :cond_3

    .line 120
    .line 121
    new-instance v3, Lb0/g;

    .line 122
    .line 123
    const/16 v4, 0x19

    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-direct {v3, v0, v5, v4}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 127
    .line 128
    .line 129
    const/4 v4, 0x3

    .line 130
    invoke-static {v1, v5, v3, v4}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, v0, Lz/v0;->g:Ljava/lang/Object;

    .line 135
    .line 136
    :cond_3
    iget-object v0, v2, Lz/l1;->J:Lz/v0;

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    sget-object v1, Lk2/p;->b:Lk2/p;

    .line 141
    .line 142
    if-ne v9, v1, :cond_c

    .line 143
    .line 144
    iget v1, v8, Lk2/o;->e:I

    .line 145
    .line 146
    iget-object v3, v8, Lk2/o;->a:Ljava/lang/Object;

    .line 147
    .line 148
    if-ne v1, v11, :cond_c

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/4 v4, 0x0

    .line 155
    :goto_2
    if-ge v4, v1, :cond_5

    .line 156
    .line 157
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lk2/w;

    .line 162
    .line 163
    invoke-virtual {v5}, Lk2/w;->b()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    goto/16 :goto_9

    .line 170
    .line 171
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    iget-object v1, v0, Lz/v0;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v1, Lv/a1;

    .line 177
    .line 178
    iget-object v4, v0, Lz/v0;->e:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v4, Ln3/c;

    .line 181
    .line 182
    iget-object v1, v1, Lv/a1;->a:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Landroid/view/ViewConfiguration;

    .line 185
    .line 186
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 187
    .line 188
    const/16 v6, 0x40

    .line 189
    .line 190
    const/16 v7, 0x1a

    .line 191
    .line 192
    if-le v5, v7, :cond_6

    .line 193
    .line 194
    invoke-static {v1}, Le4/k;->e(Landroid/view/ViewConfiguration;)F

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    goto :goto_3

    .line 199
    :cond_6
    int-to-float v8, v6

    .line 200
    invoke-interface {v4, v8}, Ln3/c;->S(F)F

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    :goto_3
    neg-float v8, v8

    .line 205
    if-le v5, v7, :cond_7

    .line 206
    .line 207
    invoke-static {v1}, Le4/k;->b(Landroid/view/ViewConfiguration;)F

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    goto :goto_4

    .line 212
    :cond_7
    int-to-float v1, v6

    .line 213
    invoke-interface {v4, v1}, Ln3/c;->S(F)F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    :goto_4
    neg-float v1, v1

    .line 218
    new-instance v4, Lx1/b;

    .line 219
    .line 220
    const-wide/16 v5, 0x0

    .line 221
    .line 222
    invoke-direct {v4, v5, v6}, Lx1/b;-><init>(J)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    const/4 v6, 0x0

    .line 230
    :goto_5
    iget-wide v11, v4, Lx1/b;->a:J

    .line 231
    .line 232
    if-ge v6, v5, :cond_8

    .line 233
    .line 234
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lk2/w;

    .line 239
    .line 240
    iget-wide v13, v4, Lk2/w;->j:J

    .line 241
    .line 242
    invoke-static {v11, v12, v13, v14}, Lx1/b;->h(JJ)J

    .line 243
    .line 244
    .line 245
    move-result-wide v11

    .line 246
    new-instance v4, Lx1/b;

    .line 247
    .line 248
    invoke-direct {v4, v11, v12}, Lx1/b;-><init>(J)V

    .line 249
    .line 250
    .line 251
    add-int/lit8 v6, v6, 0x1

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_8
    const/16 v4, 0x20

    .line 255
    .line 256
    shr-long v5, v11, v4

    .line 257
    .line 258
    long-to-int v6, v5

    .line 259
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    mul-float v5, v5, v1

    .line 264
    .line 265
    const-wide v6, 0xffffffffL

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    and-long/2addr v11, v6

    .line 271
    long-to-int v1, v11

    .line 272
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    mul-float v1, v1, v8

    .line 277
    .line 278
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    int-to-long v8, v5

    .line 283
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    int-to-long v11, v1

    .line 288
    shl-long v4, v8, v4

    .line 289
    .line 290
    and-long/2addr v6, v11

    .line 291
    or-long v12, v4, v6

    .line 292
    .line 293
    iget-object v1, v0, Lz/v0;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v1, Lz/s1;

    .line 296
    .line 297
    invoke-virtual {v1, v12, v13}, Lz/s1;->e(J)J

    .line 298
    .line 299
    .line 300
    move-result-wide v4

    .line 301
    invoke-virtual {v1, v4, v5}, Lz/s1;->g(J)F

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    const/4 v5, 0x0

    .line 306
    cmpg-float v6, v4, v5

    .line 307
    .line 308
    if-nez v6, :cond_9

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    goto :goto_6

    .line 312
    :cond_9
    cmpl-float v4, v4, v5

    .line 313
    .line 314
    if-lez v4, :cond_a

    .line 315
    .line 316
    iget-object v1, v1, Lz/s1;->a:Lz/m1;

    .line 317
    .line 318
    invoke-interface {v1}, Lz/m1;->c()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    goto :goto_6

    .line 323
    :cond_a
    iget-object v1, v1, Lz/s1;->a:Lz/m1;

    .line 324
    .line 325
    invoke-interface {v1}, Lz/m1;->b()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    :goto_6
    if-eqz v1, :cond_b

    .line 330
    .line 331
    iget-object v0, v0, Lz/v0;->f:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lcc/h;

    .line 334
    .line 335
    new-instance v11, Lz/q0;

    .line 336
    .line 337
    invoke-static {v3}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Lk2/w;

    .line 342
    .line 343
    iget-wide v14, v1, Lk2/w;->b:J

    .line 344
    .line 345
    const/16 v16, 0x0

    .line 346
    .line 347
    invoke-direct/range {v11 .. v16}, Lz/q0;-><init>(JJZ)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0, v11}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    instance-of v0, v0, Lcc/n;

    .line 355
    .line 356
    xor-int/lit8 v0, v0, 0x1

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_b
    iget-boolean v0, v0, Lz/v0;->a:Z

    .line 360
    .line 361
    :goto_7
    if-eqz v0, :cond_c

    .line 362
    .line 363
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    :goto_8
    if-ge v10, v0, :cond_c

    .line 368
    .line 369
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Lk2/w;

    .line 374
    .line 375
    invoke-virtual {v1}, Lk2/w;->a()V

    .line 376
    .line 377
    .line 378
    add-int/lit8 v10, v10, 0x1

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_c
    :goto_9
    return-void
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 11
    .line 12
    iget-object v1, p0, Lz/l1;->D:Lz/h;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lkb/a;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lkb/a;-><init>(Ln3/c;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lv/s;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lv/s;-><init>(Lkb/a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lz/h;->a:Lv/s;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lz/l1;->J:Lz/v0;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 38
    .line 39
    iput-object v1, v0, Lz/v0;->e:Ljava/lang/Object;

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final r0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz/f0;->x()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 14
    .line 15
    iget-object v1, p0, Lz/l1;->D:Lz/h;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lkb/a;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lkb/a;-><init>(Ln3/c;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lv/s;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Lv/s;-><init>(Lkb/a;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v1, Lz/h;->a:Lv/s;

    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lz/l1;->J:Lz/v0;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lq2/h0;->x:Ln3/c;

    .line 41
    .line 42
    iput-object v1, v0, Lz/v0;->e:Ljava/lang/Object;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final u(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lz/f0;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-static {p1}, Li2/c;->z(Landroid/view/KeyEvent;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Li2/a;->n:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, La/a;->d(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sget-wide v2, Li2/a;->m:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Li2/a;->a(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Li2/c;->E(Landroid/view/KeyEvent;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lz/l1;->E:Lz/s1;

    .line 47
    .line 48
    iget-object v0, v0, Lz/s1;->d:Lz/w0;

    .line 49
    .line 50
    sget-object v1, Lz/w0;->a:Lz/w0;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lz/l1;->G:Lz/f;

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    const-wide v5, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    if-ne v0, v1, :cond_2

    .line 63
    .line 64
    iget-wide v0, v3, Lz/f;->v:J

    .line 65
    .line 66
    and-long/2addr v0, v5

    .line 67
    long-to-int v1, v0

    .line 68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, La/a;->d(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    sget-wide v9, Li2/a;->m:J

    .line 77
    .line 78
    invoke-static {v7, v8, v9, v10}, Li2/a;->a(JJ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    int-to-float p1, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    int-to-float p1, v1

    .line 87
    neg-float p1, p1

    .line 88
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    int-to-long v0, v0

    .line 93
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    :goto_1
    int-to-long v2, p1

    .line 98
    shl-long/2addr v0, v4

    .line 99
    and-long/2addr v2, v5

    .line 100
    or-long/2addr v0, v2

    .line 101
    move-wide v4, v0

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    iget-wide v0, v3, Lz/f;->v:J

    .line 104
    .line 105
    shr-long/2addr v0, v4

    .line 106
    long-to-int v1, v0

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-static {p1}, La/a;->d(I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    sget-wide v9, Li2/a;->m:J

    .line 116
    .line 117
    invoke-static {v7, v8, v9, v10}, Li2/a;->a(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    int-to-float p1, v1

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    int-to-float p1, v1

    .line 126
    neg-float p1, p1

    .line 127
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    int-to-long v0, p1

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    goto :goto_1

    .line 137
    :goto_3
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v2, Lz/j1;

    .line 142
    .line 143
    const/4 v7, 0x1

    .line 144
    const/4 v6, 0x0

    .line 145
    move-object v3, p0

    .line 146
    invoke-direct/range {v2 .. v7}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x3

    .line 150
    invoke-static {p1, v6, v2, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x1

    .line 154
    return p1

    .line 155
    :cond_4
    const/4 p1, 0x0

    .line 156
    return p1
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
