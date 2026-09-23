.class public final Lta/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lva/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lva/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lsa/k;->a:Lva/m;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lsa/k;->b:Lva/m;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lsa/k;->c:Lva/m;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lsa/k;->d:Lva/m;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lsa/k;->e:Lva/m;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lsa/k;->f:Lva/m;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lsa/k;->g:Lva/m;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lsa/k;->h:Lva/m;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lsa/k;->i:Lva/m;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lsa/k;->j:Lva/m;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lsa/k;->k:Lva/m;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lsa/k;->l:Lva/m;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lsa/k;->m:Lva/m;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lsa/k;->n:Lva/m;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lva/g;->a(Lva/m;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lta/g;->a:Lva/g;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Lpa/n;Lra/f;Lra/g;)Lta/e;
    .locals 8

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lsa/k;->a:Lva/m;

    .line 17
    .line 18
    const-string v1, "constructorSignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lsa/c;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v1, v0, Lsa/c;->b:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    and-int/2addr v1, v2

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    iget v1, v0, Lsa/c;->c:I

    .line 38
    .line 39
    invoke-interface {p1, v1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, "<init>"

    .line 45
    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget v2, v0, Lsa/c;->b:I

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    and-int/2addr v2, v3

    .line 52
    if-ne v2, v3, :cond_1

    .line 53
    .line 54
    iget p0, v0, Lsa/c;->d:I

    .line 55
    .line 56
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object p0, p0, Lpa/n;->e:Ljava/util/List;

    .line 62
    .line 63
    const-string v0, "getValueParameterList(...)"

    .line 64
    .line 65
    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    const/16 v0, 0xa

    .line 71
    .line 72
    invoke-static {p0, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lpa/a1;

    .line 94
    .line 95
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p2}, Lp4/e;->G(Lpa/a1;Lra/g;)Lpa/s0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0, p1}, Lta/g;->e(Lpa/s0;Lra/f;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    return-object p0

    .line 110
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const/4 v6, 0x0

    .line 115
    const/16 v7, 0x38

    .line 116
    .line 117
    const-string v3, ""

    .line 118
    .line 119
    const-string v4, "("

    .line 120
    .line 121
    const-string v5, ")V"

    .line 122
    .line 123
    invoke-static/range {v2 .. v7}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_2
    new-instance p1, Lta/e;

    .line 128
    .line 129
    invoke-direct {p1, v1, p0}, Lta/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object p1
.end method

.method public static b(Lpa/i0;Lra/f;Lra/g;Z)Lta/d;
    .locals 4

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lsa/k;->d:Lva/m;

    .line 17
    .line 18
    const-string v1, "propertySignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lsa/e;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget v2, v0, Lsa/e;->b:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    and-int/2addr v2, v3

    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lsa/e;->c:Lsa/b;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v0, v1

    .line 43
    :goto_0
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget p3, v0, Lsa/b;->b:I

    .line 51
    .line 52
    and-int/2addr p3, v3

    .line 53
    if-ne p3, v3, :cond_3

    .line 54
    .line 55
    iget p3, v0, Lsa/b;->c:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget p3, p0, Lpa/i0;->f:I

    .line 59
    .line 60
    :goto_1
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget v2, v0, Lsa/b;->b:I

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    and-int/2addr v2, v3

    .line 66
    if-ne v2, v3, :cond_4

    .line 67
    .line 68
    iget p0, v0, Lsa/b;->d:I

    .line 69
    .line 70
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-static {p0, p2}, Lp4/e;->x(Lpa/i0;Lra/g;)Lpa/s0;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0, p1}, Lta/g;->e(Lpa/s0;Lra/f;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    :goto_2
    return-object v1

    .line 86
    :cond_5
    :goto_3
    new-instance p2, Lta/d;

    .line 87
    .line 88
    invoke-interface {p1, p3}, Lra/f;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1, p0}, Lta/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p2
.end method

.method public static c(Lpa/a0;Lra/f;Lra/g;)Lta/e;
    .locals 11

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lsa/k;->b:Lva/m;

    .line 17
    .line 18
    const-string v1, "methodSignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lsa/c;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget v1, v0, Lsa/c;->b:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    and-int/2addr v1, v2

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    iget v1, v0, Lsa/c;->c:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v1, p0, Lpa/a0;->f:I

    .line 41
    .line 42
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget v2, v0, Lsa/c;->b:I

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    and-int/2addr v2, v3

    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    iget p0, v0, Lsa/c;->d:I

    .line 51
    .line 52
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    invoke-static {p0, p2}, Lp4/e;->v(Lpa/a0;Lra/g;)Lpa/s0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v2, p0, Lpa/a0;->o:Ljava/util/List;

    .line 67
    .line 68
    const-string v3, "getValueParameterList(...)"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/16 v4, 0xa

    .line 76
    .line 77
    invoke-static {v2, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lpa/a1;

    .line 99
    .line 100
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v5, p2}, Lp4/e;->G(Lpa/a1;Lra/g;)Lpa/s0;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-static {v3, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-static {v0, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lpa/s0;

    .line 139
    .line 140
    invoke-static {v2, p1}, Lta/g;->e(Lpa/s0;Lra/f;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-static {p0, p2}, Lp4/e;->w(Lpa/a0;Lra/g;)Lpa/s0;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0, p1}, Lta/g;->e(Lpa/s0;Lra/f;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-nez p0, :cond_5

    .line 160
    .line 161
    :goto_3
    const/4 p0, 0x0

    .line 162
    return-object p0

    .line 163
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const/4 v9, 0x0

    .line 169
    const/16 v10, 0x38

    .line 170
    .line 171
    const-string v6, ""

    .line 172
    .line 173
    const-string v7, "("

    .line 174
    .line 175
    const-string v8, ")"

    .line 176
    .line 177
    invoke-static/range {v5 .. v10}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {p2, v0, p0}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    :goto_4
    new-instance p2, Lta/e;

    .line 186
    .line 187
    invoke-interface {p1, v1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p2, p1, p0}, Lta/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object p2
.end method

.method public static final d(Lpa/i0;)Z
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lta/c;->a:Lra/b;

    .line 7
    .line 8
    sget-object v1, Lsa/k;->e:Lva/m;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "getExtension(...)"

    .line 15
    .line 16
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static e(Lpa/s0;Lra/f;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lpa/s0;->c:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget p0, p0, Lpa/s0;->i:I

    .line 9
    .line 10
    invoke-interface {p1, p0}, Lra/f;->b(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lta/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static final f([Ljava/lang/String;[Ljava/lang/String;)Lr8/j;
    .locals 3

    .line 1
    const-string v0, "strings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lta/a;->a([Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lr8/j;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lta/g;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lta/f;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v1, Lpa/k;->L:Lpa/a;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lva/e;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lva/e;-><init>(Ljava/io/InputStream;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lta/g;->a:Lva/g;

    .line 32
    .line 33
    invoke-interface {v1, v2, v0}, Lva/v;->a(Lva/e;Lva/g;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lva/a;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-virtual {v2, v1}, Lva/e;->a(I)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lva/b;->b(Lva/a;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Lpa/k;

    .line 47
    .line 48
    invoke-direct {p0, p1, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    iput-object v0, p0, Lva/q;->a:Lva/a;

    .line 54
    .line 55
    throw p0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lta/f;
    .locals 3

    .line 1
    new-instance v0, Lta/f;

    .line 2
    .line 3
    sget-object v1, Lta/g;->a:Lva/g;

    .line 4
    .line 5
    sget-object v2, Lsa/j;->h:Lpa/a;

    .line 6
    .line 7
    invoke-virtual {v2, p0, v1}, Lva/b;->c(Ljava/io/ByteArrayInputStream;Lva/g;)Lva/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lsa/j;

    .line 12
    .line 13
    const-string v1, "parseDelimitedFrom(...)"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lta/f;-><init>(Lsa/j;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final h([Ljava/lang/String;[Ljava/lang/String;)Lr8/j;
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "strings"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lta/a;->a([Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lr8/j;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lta/g;->g(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lta/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v1, Lpa/e0;->l:Lpa/a;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Lva/e;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lva/e;-><init>(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lta/g;->a:Lva/g;

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, Lva/v;->a(Lva/e;Lva/g;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lva/a;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-virtual {v2, v1}, Lva/e;->a(I)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lva/b;->b(Lva/a;)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Lpa/e0;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    iput-object v0, p0, Lva/q;->a:Lva/a;

    .line 59
    .line 60
    throw p0
.end method
