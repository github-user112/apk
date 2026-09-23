.class public final Lb1/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c2;
.implements Lb1/j;
.implements Lx/o0;


# instance fields
.field public final a:Z

.field public final b:Lb1/q;

.field public final c:Z

.field public final d:F

.field public final e:Lf1/b1;

.field public final f:Lf1/b1;

.field public final g:Landroid/view/ViewGroup;

.field public h:Lb1/i;

.field public final i:Lf1/k1;

.field public final j:Lf1/k1;

.field public k:J

.field public l:I

.field public final m:Lb1/a;


# direct methods
.method public constructor <init>(ZFLf1/b1;Lf1/b1;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lb1/b;->a:Z

    .line 5
    .line 6
    new-instance v0, Lb1/q;

    .line 7
    .line 8
    new-instance v1, Lb1/a;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, v2, p4}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Lb1/q;-><init>(Lf9/a;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lb1/b;->b:Lb1/q;

    .line 18
    .line 19
    iput-boolean p1, p0, Lb1/b;->c:Z

    .line 20
    .line 21
    iput p2, p0, Lb1/b;->d:F

    .line 22
    .line 23
    iput-object p3, p0, Lb1/b;->e:Lf1/b1;

    .line 24
    .line 25
    iput-object p4, p0, Lb1/b;->f:Lf1/b1;

    .line 26
    .line 27
    iput-object p5, p0, Lb1/b;->g:Landroid/view/ViewGroup;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lb1/b;->i:Lf1/k1;

    .line 35
    .line 36
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lb1/b;->j:Lf1/k1;

    .line 43
    .line 44
    const-wide/16 p1, 0x0

    .line 45
    .line 46
    iput-wide p1, p0, Lb1/b;->k:J

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lb1/b;->l:I

    .line 50
    .line 51
    new-instance p1, Lb1/a;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-direct {p1, p2, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lb1/b;->m:Lb1/a;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb1/b;->i:Lf1/k1;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final a(Lq2/j0;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lq2/j0;->a:La2/c;

    .line 2
    .line 3
    iget-object v1, v0, La2/c;->b:La2/b;

    .line 4
    .line 5
    invoke-virtual {v1}, La2/b;->J()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, p0, Lb1/b;->k:J

    .line 10
    .line 11
    iget v1, p0, Lb1/b;->d:F

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, La2/c;->b:La2/b;

    .line 20
    .line 21
    invoke-virtual {v2}, La2/b;->J()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-boolean v4, p0, Lb1/b;->c:Z

    .line 26
    .line 27
    invoke-static {p1, v4, v2, v3}, Lb1/h;->a(Ln3/c;ZJ)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Li9/a;->N(F)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v1}, Lq2/j0;->b0(F)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_0
    iput v2, p0, Lb1/b;->l:I

    .line 41
    .line 42
    iget-object v2, p0, Lb1/b;->e:Lf1/b1;

    .line 43
    .line 44
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ly1/q;

    .line 49
    .line 50
    iget-wide v7, v2, Ly1/q;->a:J

    .line 51
    .line 52
    iget-object v2, p0, Lb1/b;->f:Lf1/b1;

    .line 53
    .line 54
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lb1/g;

    .line 59
    .line 60
    iget v9, v2, Lb1/g;->d:F

    .line 61
    .line 62
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-boolean v1, p0, Lb1/b;->a:Z

    .line 72
    .line 73
    invoke-virtual {p1}, Lq2/j0;->g()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-static {p1, v1, v2, v3}, Lb1/h;->a(Ln3/c;ZJ)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1, v1}, Lq2/j0;->S(F)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_1
    iget-object v2, p0, Lb1/b;->b:Lb1/q;

    .line 87
    .line 88
    invoke-virtual {v2, p1, v1, v7, v8}, Lb1/q;->c(Lq2/j0;FJ)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v0, La2/c;->b:La2/b;

    .line 92
    .line 93
    invoke-virtual {p1}, La2/b;->z()Ly1/o;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v1, p0, Lb1/b;->j:Lf1/k1;

    .line 98
    .line 99
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lb1/b;->i:Lf1/k1;

    .line 109
    .line 110
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v3, v1

    .line 115
    check-cast v3, Lb1/k;

    .line 116
    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 120
    .line 121
    invoke-virtual {v0}, La2/b;->J()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    iget v6, p0, Lb1/b;->l:I

    .line 126
    .line 127
    invoke-virtual/range {v3 .. v9}, Lb1/k;->e(JIJF)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v3, p1}, Lb1/k;->draw(Landroid/graphics/Canvas;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb1/b;->h:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lb1/b;->B()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lb1/i;->d:Lu0/j;

    .line 9
    .line 10
    iget-object v2, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lb1/k;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lb1/k;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lb1/k;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lb1/j;

    .line 46
    .line 47
    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lb1/i;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb1/b;->h:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lb1/b;->B()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lb1/i;->d:Lu0/j;

    .line 9
    .line 10
    iget-object v2, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lb1/k;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lb1/k;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lb1/k;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lb1/j;

    .line 46
    .line 47
    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lb1/i;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method
