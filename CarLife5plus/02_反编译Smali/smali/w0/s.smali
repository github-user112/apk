.class public final Lw0/s;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Ljc/c;

.field public f:Lw0/t;

.field public g:Ljava/lang/CharSequence;

.field public h:J

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/CharSequence;

.field public final synthetic l:J

.field public final synthetic m:Lw0/t;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;Lw0/t;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lw0/s;->k:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-wide p1, p0, Lw0/s;->l:J

    .line 4
    .line 5
    iput-object p4, p0, Lw0/s;->m:Lw0/t;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ls1/o;->j(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassifier;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lw0/s;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lw0/s;

    .line 12
    .line 13
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lw0/s;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 6

    .line 1
    new-instance v0, Lw0/s;

    .line 2
    .line 3
    iget-wide v1, p0, Lw0/s;->l:J

    .line 4
    .line 5
    iget-object v4, p0, Lw0/s;->m:Lw0/t;

    .line 6
    .line 7
    iget-object v3, p0, Lw0/s;->k:Ljava/lang/CharSequence;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lw0/s;-><init>(JLjava/lang/CharSequence;Lw0/t;Lw8/c;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lw0/s;->j:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lw0/s;->i:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lw0/s;->h:J

    .line 12
    .line 13
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    iget-wide v0, p0, Lw0/s;->h:J

    .line 27
    .line 28
    iget-object v2, p0, Lw0/s;->g:Ljava/lang/CharSequence;

    .line 29
    .line 30
    iget-object v3, p0, Lw0/s;->f:Lw0/t;

    .line 31
    .line 32
    iget-object v4, p0, Lw0/s;->e:Ljc/c;

    .line 33
    .line 34
    iget-object v5, p0, Lw0/s;->j:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v5}, Ls1/o;->k(Ljava/lang/Object;)Landroid/view/textclassifier/TextSelection;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lw0/s;->j:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p1}, Ls1/o;->j(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassifier;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {}, Ll8/e;->y()V

    .line 54
    .line 55
    .line 56
    iget-wide v3, p0, Lw0/s;->l:J

    .line 57
    .line 58
    invoke-static {v3, v4}, Lb3/n0;->f(J)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {v3, v4}, Lb3/n0;->e(J)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v3, p0, Lw0/s;->k:Ljava/lang/CharSequence;

    .line 67
    .line 68
    invoke-static {v3, p1, v0}, Ll8/e;->k(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextSelection$Request$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move-object v0, v3

    .line 73
    iget-object v3, p0, Lw0/s;->m:Lw0/t;

    .line 74
    .line 75
    invoke-virtual {v3}, Lw0/t;->b()Landroid/os/LocaleList;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {p1, v4}, Ll8/e;->j(Landroid/view/textclassifier/TextSelection$Request$Builder;Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    const/16 v5, 0x1f

    .line 86
    .line 87
    if-lt v4, v5, :cond_3

    .line 88
    .line 89
    invoke-static {p1}, Lc3/c;->A(Landroid/view/textclassifier/TextSelection$Request$Builder;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-static {p1}, Ll8/e;->l(Landroid/view/textclassifier/TextSelection$Request$Builder;)Landroid/view/textclassifier/TextSelection$Request;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v7, p1}, Ll8/e;->m(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Ls1/o;->b(Landroid/view/textclassifier/TextSelection;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {p1}, Ls1/o;->r(Landroid/view/textclassifier/TextSelection;)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    invoke-static {v6, v8}, Lb3/d0;->b(II)J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    sget-object v10, Lx8/a;->a:Lx8/a;

    .line 113
    .line 114
    if-lt v4, v5, :cond_5

    .line 115
    .line 116
    invoke-static {p1}, Lc3/c;->i(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    iget-object v4, v3, Lw0/t;->e:Ljc/c;

    .line 123
    .line 124
    iput-object p1, p0, Lw0/s;->j:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v4, p0, Lw0/s;->e:Ljc/c;

    .line 127
    .line 128
    iput-object v3, p0, Lw0/s;->f:Lw0/t;

    .line 129
    .line 130
    iput-object v0, p0, Lw0/s;->g:Ljava/lang/CharSequence;

    .line 131
    .line 132
    iput-wide v8, p0, Lw0/s;->h:J

    .line 133
    .line 134
    iput v2, p0, Lw0/s;->i:I

    .line 135
    .line 136
    invoke-virtual {v4, p0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-ne v1, v10, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    move-object v5, p1

    .line 144
    move-object v2, v0

    .line 145
    move-wide v0, v8

    .line 146
    :goto_0
    const/4 p1, 0x0

    .line 147
    :try_start_0
    new-instance v6, Lw0/g1;

    .line 148
    .line 149
    invoke-static {v5}, Lc3/c;->i(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v6, v2, v0, v1, v5}, Lw0/g1;-><init>(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, v3, Lw0/t;->g:Lf1/k1;

    .line 160
    .line 161
    invoke-virtual {v2, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, p1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    invoke-virtual {v4, p1}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_5
    iput-wide v8, p0, Lw0/s;->h:J

    .line 174
    .line 175
    iput v1, p0, Lw0/s;->i:I

    .line 176
    .line 177
    iget-object v4, p0, Lw0/s;->k:Ljava/lang/CharSequence;

    .line 178
    .line 179
    move-wide v5, v8

    .line 180
    move-object v8, p0

    .line 181
    invoke-static/range {v3 .. v8}, Lw0/t;->a(Lw0/t;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Ly8/c;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-ne p1, v10, :cond_6

    .line 186
    .line 187
    :goto_1
    return-object v10

    .line 188
    :cond_6
    move-wide v0, v5

    .line 189
    :goto_2
    new-instance p1, Lb3/n0;

    .line 190
    .line 191
    invoke-direct {p1, v0, v1}, Lb3/n0;-><init>(J)V

    .line 192
    .line 193
    .line 194
    return-object p1
.end method
