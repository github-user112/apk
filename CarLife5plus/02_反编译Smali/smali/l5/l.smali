.class public final Ll5/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lac/w;

.field public b:J

.field public final c:Lf1/k1;

.field public final d:Lf1/k1;

.field public final e:Lf1/k1;

.field public final f:Lf1/k1;

.field public final g:Lf1/k1;

.field public final h:Lf1/g1;

.field public final i:Lf1/g1;

.field public final j:Ldc/l0;

.field public final k:Lf1/k1;

.field public final l:F

.field public final m:Ld7/q;

.field public final n:Lf1/k1;

.field public o:Z

.field public p:Z

.field public final q:Lf1/h1;

.field public final r:Ldc/l0;

.field public s:Lc8/s0;


# direct methods
.method public constructor <init>(Lac/w;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/l;->a:Lac/w;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Ll5/l;->b:J

    .line 9
    .line 10
    new-instance p1, Lx1/b;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lx1/b;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Ll5/l;->c:Lf1/k1;

    .line 20
    .line 21
    iput-object p1, p0, Ll5/l;->d:Lf1/k1;

    .line 22
    .line 23
    sget-wide v0, Ly1/q;->l:J

    .line 24
    .line 25
    new-instance p1, Ly1/q;

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Ly1/q;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Ll5/l;->e:Lf1/k1;

    .line 35
    .line 36
    iput-object p1, p0, Ll5/l;->f:Lf1/k1;

    .line 37
    .line 38
    new-instance p1, Ly1/q;

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Ly1/q;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Ll5/l;->g:Lf1/k1;

    .line 48
    .line 49
    new-instance p1, Lf1/g1;

    .line 50
    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-direct {p1, v0}, Lf1/g1;-><init>(F)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Ll5/l;->h:Lf1/g1;

    .line 57
    .line 58
    new-instance p1, Lf1/g1;

    .line 59
    .line 60
    invoke-direct {p1, v0}, Lf1/g1;-><init>(F)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Ll5/l;->i:Lf1/g1;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Ll5/l;->j:Ldc/l0;

    .line 71
    .line 72
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Ll5/l;->k:Lf1/k1;

    .line 77
    .line 78
    const/16 v0, 0xc

    .line 79
    .line 80
    int-to-float v0, v0

    .line 81
    iput v0, p0, Ll5/l;->l:F

    .line 82
    .line 83
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-wide v1, Ly1/q;->e:J

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ld7/q;->k(J)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Ll5/l;->m:Ld7/q;

    .line 93
    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Ll5/l;->n:Lf1/k1;

    .line 101
    .line 102
    new-instance v0, Lf1/h1;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-direct {v0, v1}, Lf1/h1;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Ll5/l;->q:Lf1/h1;

    .line 109
    .line 110
    invoke-static {p1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Ll5/l;->r:Ldc/l0;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Ll5/l;->e:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly1/q;

    .line 8
    .line 9
    iget-wide v0, v0, Ly1/q;->a:J

    .line 10
    .line 11
    new-instance v2, Ll5/k;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ly1/q;->d(J)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0xff

    .line 18
    .line 19
    int-to-float v4, v4

    .line 20
    mul-float v3, v3, v4

    .line 21
    .line 22
    float-to-int v3, v3

    .line 23
    invoke-static {v0, v1}, Ly1/q;->h(J)F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    mul-float v5, v5, v4

    .line 28
    .line 29
    float-to-int v5, v5

    .line 30
    invoke-static {v0, v1}, Ly1/q;->g(J)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    mul-float v6, v6, v4

    .line 35
    .line 36
    float-to-int v6, v6

    .line 37
    invoke-static {v0, v1}, Ly1/q;->e(J)F

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    mul-float v7, v7, v4

    .line 42
    .line 43
    float-to-int v4, v7

    .line 44
    invoke-static {v3}, Li2/c;->g(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v5}, Li2/c;->g(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v6}, Li2/c;->g(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v4}, Li2/c;->g(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {v2, v0, v1, v3, p1}, Ll5/k;-><init>(JLjava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Ll5/l;->r:Ldc/l0;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0, v2}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final b(JZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Ll5/l;->s:Lc8/s0;

    .line 2
    .line 3
    iget-object v1, p0, Ll5/l;->n:Lf1/k1;

    .line 4
    .line 5
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance v1, Lx1/b;

    .line 22
    .line 23
    invoke-direct {v1, p1, p2}, Lx1/b;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lc8/s0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lr8/j;

    .line 31
    .line 32
    iget-object p2, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Ly1/q;

    .line 35
    .line 36
    iget-wide v0, p2, Ly1/q;->a:J

    .line 37
    .line 38
    iget-object p1, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lx1/b;

    .line 41
    .line 42
    iget-wide p1, p1, Lx1/b;->a:J

    .line 43
    .line 44
    new-instance v2, Lx1/b;

    .line 45
    .line 46
    invoke-direct {v2, p1, p2}, Lx1/b;-><init>(J)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Ll5/l;->c:Lf1/k1;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Ll5/l;->g:Lf1/k1;

    .line 55
    .line 56
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Ly1/q;

    .line 61
    .line 62
    iget-wide v2, p2, Ly1/q;->a:J

    .line 63
    .line 64
    invoke-static {v2, v3, v0, v1}, Ly1/q;->c(JJ)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v0, v1}, Li2/c;->O(J)Lr8/p;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v2, p2, Lr8/p;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget-object v3, p2, Lr8/p;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v3, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iget-object p2, p2, Lr8/p;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p2, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iget-boolean v4, p0, Ll5/l;->p:Z

    .line 100
    .line 101
    if-eqz v4, :cond_2

    .line 102
    .line 103
    iget-object p2, p0, Ll5/l;->i:Lf1/g1;

    .line 104
    .line 105
    invoke-virtual {p2}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    :cond_2
    iget-boolean v4, p0, Ll5/l;->o:Z

    .line 116
    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    iget-object v4, p0, Ll5/l;->h:Lf1/g1;

    .line 120
    .line 121
    invoke-virtual {v4}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .line 133
    .line 134
    :goto_0
    const/16 v5, 0x10

    .line 135
    .line 136
    invoke-static {v2, v3, p2, v4, v5}, Ln6/a;->i(FFFFI)J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    new-instance p2, Ly1/q;

    .line 141
    .line 142
    invoke-direct {p2, v2, v3}, Ly1/q;-><init>(J)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Ll5/l;->e:Lf1/k1;

    .line 146
    .line 147
    invoke-virtual {v2, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    new-instance p2, Ly1/q;

    .line 151
    .line 152
    invoke-direct {p2, v0, v1}, Ly1/q;-><init>(J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p3}, Ll5/l;->a(Z)V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_1
    return-void
.end method
