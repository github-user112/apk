.class public Lkb/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkb/n;
.implements Ll4/i;
.implements Lv9/m0;
.implements Lv9/s;
.implements Lp/f2;
.implements Lo/x;
.implements Lo/k;
.implements Lp/y0;
.implements Lv9/m;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    const/16 v0, 0x1c

    iput v0, p0, Lkb/a;->a:I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lv/x;

    const v1, 0x3c23d70a    # 0.01f

    .line 51
    invoke-direct {v0, p1, p2, v1}, Lv/x;-><init>(FFF)V

    .line 52
    iput-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lkb/a;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 4
    iput-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void

    .line 5
    :sswitch_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void

    .line 8
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 9
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Lq2/z1;

    sget-object v0, Lq2/f;->a:Lq2/n1;

    .line 11
    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 12
    iput-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkb/a;->a:I

    iput-object p2, p0, Lkb/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkb/a;->a:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkb/a;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/support/v4/media/session/t;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/t;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkb/a;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ln4/g;

    invoke-direct {v0, p1}, Ln4/g;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lib/d;Landroid/app/Activity;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    const/16 p1, 0xa

    iput p1, p0, Lkb/a;->a:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln3/c;)V
    .locals 2

    const/16 v0, 0x15

    iput v0, p0, Lkb/a;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lu/e;

    .line 15
    sget v1, Lu/h;->a:F

    .line 16
    invoke-direct {v0, v1, p1}, Lu/e;-><init>(FLn3/c;)V

    iput-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv/p;FF)V
    .locals 5

    const/16 v0, 0x1b

    iput v0, p0, Lkb/a;->a:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lv/p;->b()I

    move-result v0

    new-array v1, v0, [Lv/x;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    new-instance v3, Lv/x;

    invoke-virtual {p1, v2}, Lv/p;->a(I)F

    move-result v4

    invoke-direct {v3, p2, p3, v4}, Lv/x;-><init>(FFF)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iput-object v1, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 5

    const/16 v0, 0xe

    iput v0, p0, Lkb/a;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 22
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 23
    new-instance v0, Ls/z;

    array-length v1, p1

    invoke-direct {v0, v1}, Ls/z;-><init>(I)V

    .line 24
    iget v1, v0, Ls/z;->b:I

    if-ltz v1, :cond_3

    .line 25
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 27
    iget-object v3, v0, Ls/z;->a:[J

    .line 28
    array-length v4, v3

    if-ge v4, v2, :cond_1

    .line 29
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 30
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Ls/z;->a:[J

    .line 31
    :cond_1
    iget-object v2, v0, Ls/z;->a:[J

    .line 32
    iget v3, v0, Ls/z;->b:I

    if-eq v1, v3, :cond_2

    .line 33
    array-length v4, p1

    add-int/2addr v4, v1

    .line 34
    invoke-static {v2, v2, v4, v1, v3}, Ls8/l;->O([J[JIII)V

    :cond_2
    const/4 v3, 0x0

    .line 35
    array-length v4, p1

    .line 36
    invoke-static {p1, v2, v1, v3, v4}, Ls8/l;->O([J[JIII)V

    .line 37
    iget v1, v0, Ls/z;->b:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Ls/z;->b:I

    goto :goto_0

    .line 38
    :cond_3
    const-string p1, ""

    invoke-static {p1}, Lt/a;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 39
    :cond_4
    new-instance v0, Ls/z;

    const/16 p1, 0x10

    .line 40
    invoke-direct {v0, p1}, Ls/z;-><init>(I)V

    .line 41
    :goto_0
    iput-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public C()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public D(Lv9/k;)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public E(Lw9/h;)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "additionalAnnotations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public F(Ly9/c0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public G(Ly9/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public H(Ljava/lang/Object;Ly9/a0;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public I(Lo/m;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/k;

    .line 4
    .line 5
    iget-object v1, v0, Lp/k;->c:Lo/m;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    move-object v1, p1

    .line 12
    check-cast v1, Lo/e0;

    .line 13
    .line 14
    iget-object v1, v1, Lo/e0;->A:Lo/o;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lp/k;->e:Lo/x;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lo/x;->I(Lo/m;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    return v2
.end method

.method public J(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public K(Ly9/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public L(Ly9/v;)Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public M(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public N(Lo/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Lp/w2;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lp/w2;->N(Lo/m;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public O()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public P(Lq2/h0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "DepthSortedSet.add called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lq2/z1;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public Q([II)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lu5/a;

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    if-eqz v4, :cond_1b

    .line 13
    .line 14
    array-length v4, v0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    if-le v4, v6, :cond_2

    .line 18
    .line 19
    aget v7, v0, v5

    .line 20
    .line 21
    if-nez v7, :cond_2

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    :goto_0
    if-ge v7, v4, :cond_0

    .line 25
    .line 26
    aget v8, v0, v7

    .line 27
    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    add-int/lit8 v7, v7, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-ne v7, v4, :cond_1

    .line 34
    .line 35
    filled-new-array {v5}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sub-int/2addr v4, v7

    .line 41
    new-array v8, v4, [I

    .line 42
    .line 43
    invoke-static {v0, v7, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    move-object v4, v8

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v4, v0

    .line 49
    :goto_1
    new-array v7, v2, [I

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x1

    .line 53
    :goto_2
    if-ge v8, v2, :cond_7

    .line 54
    .line 55
    iget v10, v3, Lu5/a;->g:I

    .line 56
    .line 57
    add-int/2addr v10, v8

    .line 58
    iget-object v11, v3, Lu5/a;->a:[I

    .line 59
    .line 60
    aget v10, v11, v10

    .line 61
    .line 62
    if-nez v10, :cond_3

    .line 63
    .line 64
    array-length v10, v4

    .line 65
    sub-int/2addr v10, v6

    .line 66
    aget v10, v4, v10

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_3
    if-ne v10, v6, :cond_5

    .line 70
    .line 71
    array-length v10, v4

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    :goto_3
    if-ge v12, v10, :cond_4

    .line 75
    .line 76
    aget v13, v4, v12

    .line 77
    .line 78
    sget-object v14, Lu5/a;->h:Lu5/a;

    .line 79
    .line 80
    xor-int/2addr v11, v13

    .line 81
    add-int/lit8 v12, v12, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v10, v11

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    aget v11, v4, v5

    .line 87
    .line 88
    array-length v12, v4

    .line 89
    const/4 v13, 0x1

    .line 90
    :goto_4
    if-ge v13, v12, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3, v10, v11}, Lu5/a;->c(II)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    aget v14, v4, v13

    .line 97
    .line 98
    xor-int/2addr v11, v14

    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_5
    add-int/lit8 v11, v2, -0x1

    .line 103
    .line 104
    sub-int/2addr v11, v8

    .line 105
    aput v10, v7, v11

    .line 106
    .line 107
    if-eqz v10, :cond_6

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    if-eqz v9, :cond_8

    .line 114
    .line 115
    goto/16 :goto_f

    .line 116
    .line 117
    :cond_8
    new-instance v4, Lu5/b;

    .line 118
    .line 119
    invoke-direct {v4, v3, v7}, Lu5/b;-><init>(Lu5/a;[I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2, v6}, Lu5/a;->a(II)Lu5/b;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object v8, v3, Lu5/a;->c:Lu5/b;

    .line 127
    .line 128
    invoke-virtual {v7}, Lu5/b;->d()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-ge v9, v10, :cond_9

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_9
    move-object/from16 v16, v7

    .line 140
    .line 141
    move-object v7, v4

    .line 142
    move-object/from16 v4, v16

    .line 143
    .line 144
    :goto_6
    iget-object v9, v3, Lu5/a;->d:Lu5/b;

    .line 145
    .line 146
    move-object v10, v7

    .line 147
    move-object v7, v4

    .line 148
    move-object v4, v10

    .line 149
    move-object v10, v8

    .line 150
    :goto_7
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    const/4 v12, 0x2

    .line 155
    div-int/lit8 v13, v2, 0x2

    .line 156
    .line 157
    if-lt v11, v13, :cond_d

    .line 158
    .line 159
    invoke-virtual {v4}, Lu5/b;->e()Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v11, :cond_c

    .line 164
    .line 165
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    invoke-virtual {v4, v11}, Lu5/b;->c(I)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-virtual {v3, v11}, Lu5/a;->b(I)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    move-object v12, v8

    .line 178
    :goto_8
    invoke-virtual {v7}, Lu5/b;->d()I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    if-lt v13, v14, :cond_a

    .line 187
    .line 188
    invoke-virtual {v7}, Lu5/b;->e()Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-nez v13, :cond_a

    .line 193
    .line 194
    invoke-virtual {v7}, Lu5/b;->d()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    sub-int/2addr v13, v14

    .line 203
    invoke-virtual {v7}, Lu5/b;->d()I

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    invoke-virtual {v7, v14}, Lu5/b;->c(I)I

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    invoke-virtual {v3, v14, v11}, Lu5/a;->c(II)I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    invoke-virtual {v3, v13, v14}, Lu5/a;->a(II)Lu5/b;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    invoke-virtual {v12, v15}, Lu5/b;->a(Lu5/b;)Lu5/b;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-virtual {v4, v13, v14}, Lu5/b;->h(II)Lu5/b;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-virtual {v7, v13}, Lu5/b;->a(Lu5/b;)Lu5/b;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    goto :goto_8

    .line 232
    :cond_a
    invoke-virtual {v12, v9}, Lu5/b;->g(Lu5/b;)Lu5/b;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-virtual {v11, v10}, Lu5/b;->a(Lu5/b;)Lu5/b;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v7}, Lu5/b;->d()I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    invoke-virtual {v4}, Lu5/b;->d()I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-ge v11, v12, :cond_b

    .line 249
    .line 250
    move-object/from16 v16, v7

    .line 251
    .line 252
    move-object v7, v4

    .line 253
    move-object/from16 v4, v16

    .line 254
    .line 255
    move-object/from16 v16, v10

    .line 256
    .line 257
    move-object v10, v9

    .line 258
    move-object/from16 v9, v16

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    const-string v2, "Division algorithm failed to reduce polynomial?"

    .line 264
    .line 265
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :cond_c
    new-instance v0, Lu5/c;

    .line 270
    .line 271
    const-string v2, "r_{i-1} was zero"

    .line 272
    .line 273
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_d
    invoke-virtual {v9, v5}, Lu5/b;->c(I)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_1a

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Lu5/a;->b(I)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    invoke-virtual {v9, v2}, Lu5/b;->f(I)Lu5/b;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v4, v2}, Lu5/b;->f(I)Lu5/b;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    new-array v4, v12, [Lu5/b;

    .line 296
    .line 297
    aput-object v7, v4, v5

    .line 298
    .line 299
    aput-object v2, v4, v6

    .line 300
    .line 301
    aget-object v2, v4, v5

    .line 302
    .line 303
    aget-object v4, v4, v6

    .line 304
    .line 305
    invoke-virtual {v2}, Lu5/b;->d()I

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-ne v7, v6, :cond_e

    .line 310
    .line 311
    invoke-virtual {v2, v6}, Lu5/b;->c(I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    filled-new-array {v2}, [I

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    goto :goto_a

    .line 320
    :cond_e
    new-array v8, v7, [I

    .line 321
    .line 322
    const/4 v9, 0x1

    .line 323
    const/4 v10, 0x0

    .line 324
    :goto_9
    iget v11, v3, Lu5/a;->e:I

    .line 325
    .line 326
    if-ge v9, v11, :cond_10

    .line 327
    .line 328
    if-ge v10, v7, :cond_10

    .line 329
    .line 330
    invoke-virtual {v2, v9}, Lu5/b;->b(I)I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    if-nez v11, :cond_f

    .line 335
    .line 336
    invoke-virtual {v3, v9}, Lu5/a;->b(I)I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    aput v11, v8, v10

    .line 341
    .line 342
    add-int/lit8 v10, v10, 0x1

    .line 343
    .line 344
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_10
    if-ne v10, v7, :cond_19

    .line 348
    .line 349
    move-object v2, v8

    .line 350
    :goto_a
    array-length v7, v2

    .line 351
    new-array v8, v7, [I

    .line 352
    .line 353
    const/4 v9, 0x0

    .line 354
    :goto_b
    if-ge v9, v7, :cond_15

    .line 355
    .line 356
    aget v10, v2, v9

    .line 357
    .line 358
    invoke-virtual {v3, v10}, Lu5/a;->b(I)I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    const/4 v11, 0x0

    .line 363
    const/4 v12, 0x1

    .line 364
    :goto_c
    if-ge v11, v7, :cond_13

    .line 365
    .line 366
    if-eq v9, v11, :cond_12

    .line 367
    .line 368
    aget v13, v2, v11

    .line 369
    .line 370
    invoke-virtual {v3, v13, v10}, Lu5/a;->c(II)I

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    and-int/lit8 v14, v13, 0x1

    .line 375
    .line 376
    if-nez v14, :cond_11

    .line 377
    .line 378
    or-int/lit8 v13, v13, 0x1

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_11
    and-int/lit8 v13, v13, -0x2

    .line 382
    .line 383
    :goto_d
    invoke-virtual {v3, v12, v13}, Lu5/a;->c(II)I

    .line 384
    .line 385
    .line 386
    move-result v12

    .line 387
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_13
    invoke-virtual {v4, v10}, Lu5/b;->b(I)I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    invoke-virtual {v3, v12}, Lu5/a;->b(I)I

    .line 395
    .line 396
    .line 397
    move-result v12

    .line 398
    invoke-virtual {v3, v11, v12}, Lu5/a;->c(II)I

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    aput v11, v8, v9

    .line 403
    .line 404
    iget v12, v3, Lu5/a;->g:I

    .line 405
    .line 406
    if-eqz v12, :cond_14

    .line 407
    .line 408
    invoke-virtual {v3, v11, v10}, Lu5/a;->c(II)I

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    aput v10, v8, v9

    .line 413
    .line 414
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :cond_15
    :goto_e
    array-length v4, v2

    .line 418
    if-ge v5, v4, :cond_18

    .line 419
    .line 420
    array-length v4, v0

    .line 421
    sub-int/2addr v4, v6

    .line 422
    aget v7, v2, v5

    .line 423
    .line 424
    if-eqz v7, :cond_17

    .line 425
    .line 426
    iget-object v9, v3, Lu5/a;->b:[I

    .line 427
    .line 428
    aget v7, v9, v7

    .line 429
    .line 430
    sub-int/2addr v4, v7

    .line 431
    if-ltz v4, :cond_16

    .line 432
    .line 433
    aget v7, v0, v4

    .line 434
    .line 435
    aget v9, v8, v5

    .line 436
    .line 437
    xor-int/2addr v7, v9

    .line 438
    aput v7, v0, v4

    .line 439
    .line 440
    add-int/lit8 v5, v5, 0x1

    .line 441
    .line 442
    goto :goto_e

    .line 443
    :cond_16
    new-instance v0, Lu5/c;

    .line 444
    .line 445
    const-string v2, "Bad error location"

    .line 446
    .line 447
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 452
    .line 453
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :cond_18
    :goto_f
    return-void

    .line 458
    :cond_19
    new-instance v0, Lu5/c;

    .line 459
    .line 460
    const-string v2, "Error locator degree does not match number of roots"

    .line 461
    .line 462
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_1a
    new-instance v0, Lu5/c;

    .line 467
    .line 468
    const-string v2, "sigmaTilde(0) was zero"

    .line 469
    .line 470
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 477
    .line 478
    .line 479
    throw v0
.end method

.method public R(Llc/e;Lpc/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Map;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p1, v0

    .line 25
    :goto_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    return-object p1
.end method

.method public S(I)Lv/w;
    .locals 1

    .line 1
    iget v0, p0, Lkb/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lv/w;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    iget-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lv/x;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, [Lv/x;

    .line 19
    .line 20
    aget-object p1, v0, p1

    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/m;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp4/x;->J()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public U(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 10
    .line 11
    invoke-static {v0, p1, p2, p3}, Ls1/h;->a(Landroid/view/autofill/AutofillManager;Landroid/view/View;IZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public V(Lq2/h0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "DepthSortedSet.remove called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lq2/z1;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public W()V
    .locals 7

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr0/f;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Lr1/o;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lr0/f;->u:Lac/j1;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lac/c1;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Ls0/g;->b:Lf1/c0;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ls0/f;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lr1/o;->m0()Lac/w;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Lb1/f;

    .line 39
    .line 40
    const/16 v5, 0x9

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-direct {v4, v0, v1, v6, v5}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v6, v4, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lr0/f;->u:Lac/j1;

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void

    .line 53
    :cond_3
    const-string v0, "ToolbarRequester is not initialized."

    .line 54
    .line 55
    invoke-static {v0}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lac/p;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public a(Llb/w;)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(Lo/m;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lo/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lo/e0;

    .line 7
    .line 8
    iget-object v0, v0, Lo/e0;->z:Lo/m;

    .line 9
    .line 10
    invoke-virtual {v0}, Lo/m;->k()Lo/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lo/m;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lp/k;

    .line 21
    .line 22
    iget-object v0, v0, Lp/k;->e:Lo/x;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lo/x;->b(Lo/m;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public build()Lv9/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnb/c;

    .line 4
    .line 5
    return-object v0
.end method

.method public c(Ly9/k0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkb/a;->v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lo/m;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lo/g;

    .line 4
    .line 5
    iget-object p2, p2, Lo/g;->f:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Ljava/util/List;)Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 5

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu9/m;

    .line 4
    .line 5
    check-cast p1, Lv9/e;

    .line 6
    .line 7
    invoke-interface {p1}, Lv9/h;->t()Llb/k0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Llb/k0;->l()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "getSupertypes(...)"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Llb/w;

    .line 42
    .line 43
    invoke-virtual {v2}, Llb/w;->D0()Llb/k0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Llb/k0;->k()Lv9/h;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v2}, Lv9/h;->a()Lv9/h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v2, v3

    .line 60
    :goto_1
    instance-of v4, v2, Lv9/e;

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    check-cast v2, Lv9/e;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-object v2, v3

    .line 68
    :goto_2
    if-nez v2, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {v0, v2}, Lu9/m;->f(Lv9/e;)Lia/j;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move-object v3, v2

    .line 79
    :goto_3
    if-eqz v3, :cond_0

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    return-object v1
.end method

.method public g(Lea/o;)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "visibility"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(Ly9/z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public i(Lg5/a;)V
    .locals 8

    .line 1
    new-instance v7, Ll4/a;

    .line 2
    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 4
    .line 5
    invoke-direct {v7, v0}, Ll4/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 13
    .line 14
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    const-wide/16 v3, 0xf

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lb8/a;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1, v0, v2}, Lb8/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public j(Lua/e;)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k(I)Lv9/s;
    .locals 1

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p1, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l(Ly9/i0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Lr8/z;

    .line 2
    .line 3
    iget-object p2, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Lp9/h0;

    .line 6
    .line 7
    const-string v0, "descriptor"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Ly9/i0;->t:Ly9/v;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v3, p1, Ly9/i0;->u:Ly9/v;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    add-int/2addr v0, v1

    .line 27
    iget-boolean v1, p1, Ly9/i0;->f:Z

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    if-ne v0, v3, :cond_5

    .line 37
    .line 38
    new-instance v0, Lp9/p0;

    .line 39
    .line 40
    invoke-direct {v0, p2, p1}, Lp9/p0;-><init>(Lp9/h0;Lv9/k0;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    new-instance v0, Lp9/n0;

    .line 45
    .line 46
    invoke-direct {v0, p2, p1}, Lp9/n0;-><init>(Lp9/h0;Lv9/k0;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_3
    new-instance v0, Lp9/l0;

    .line 51
    .line 52
    invoke-direct {v0, p2, p1}, Lp9/l0;-><init>(Lp9/h0;Lv9/k0;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    if-eqz v0, :cond_7

    .line 57
    .line 58
    if-eq v0, v2, :cond_6

    .line 59
    .line 60
    if-ne v0, v3, :cond_5

    .line 61
    .line 62
    new-instance v0, Lp9/h1;

    .line 63
    .line 64
    invoke-direct {v0, p2, p1}, Lp9/h1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_5
    new-instance p2, Lac/y;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Unsupported property: "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x2

    .line 85
    invoke-direct {p2, v0, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_6
    new-instance v0, Lp9/e1;

    .line 90
    .line 91
    invoke-direct {v0, p2, p1}, Lp9/e1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_7
    new-instance v0, Lp9/b1;

    .line 96
    .line 97
    invoke-direct {v0, p2, p1}, Lp9/b1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public lock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public m(Ly9/j0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkb/a;->v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public o(Lo/m;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->z:Lp/n;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lp/w2;

    .line 10
    .line 11
    iget-object p1, p1, Lp/w2;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->G:La2/b;

    .line 14
    .line 15
    iget-object p1, p1, La2/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lp4/t;

    .line 34
    .line 35
    iget-object p2, p2, Lp4/t;->a:Lp4/x;

    .line 36
    .line 37
    invoke-virtual {p2}, Lp4/x;->o()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public p(Lv9/x;)Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public q()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public r()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public s(Ly9/x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public t(Ly9/r0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lkb/a;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lq2/z1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lia/q;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ": "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lia/q;->i:Lkb/j;

    .line 38
    .line 39
    sget-object v2, Lia/q;->m:[Lm9/u;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aget-object v2, v2, v3

    .line 43
    .line 44
    invoke-static {v1, v2}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public u()Lv9/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public unlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Lr8/z;

    .line 2
    .line 3
    new-instance p2, Lp9/j0;

    .line 4
    .line 5
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lp9/h0;

    .line 8
    .line 9
    invoke-direct {p2, v0, p1}, Lp9/j0;-><init>(Lp9/h0;Lv9/t;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public w(Lo/m;Lo/o;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lkb/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/g;

    .line 4
    .line 5
    iget-object v1, v0, Lo/g;->f:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lo/g;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lo/f;

    .line 26
    .line 27
    iget-object v6, v6, Lo/f;->b:Lo/m;

    .line 28
    .line 29
    if-ne p1, v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, -0x1

    .line 36
    :goto_1
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Lo/f;

    .line 53
    .line 54
    :cond_3
    new-instance v0, Le4/u0;

    .line 55
    .line 56
    invoke-direct {v0, p0, v2, p2, p1}, Le4/u0;-><init>(Lkb/a;Lo/f;Lo/o;Lo/m;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    const-wide/16 v4, 0xc8

    .line 64
    .line 65
    add-long/2addr v2, v4

    .line 66
    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public y(Ly9/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkb/a;->v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z(Ly9/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
