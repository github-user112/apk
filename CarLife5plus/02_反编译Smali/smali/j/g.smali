.class public final Lj/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lj/g;->a:I

    iput-object p3, p0, Lj/g;->c:Ljava/lang/Object;

    iput p1, p0, Lj/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILd6/i;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lj/g;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lj/g;->b:I

    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [Ld6/i;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lj/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[Ld6/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj/g;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lj/g;->b:I

    .line 13
    iput-object p2, p0, Lj/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lj/g;->a:I

    .line 14
    invoke-static {p1, v0}, Lj/h;->f(Landroid/content/Context;I)I

    move-result v0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Lj/d;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 17
    invoke-static {p1, v0}, Lj/h;->f(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lj/d;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 18
    iput v0, p0, Lj/g;->b:I

    return-void
.end method

.method public constructor <init>(Ld6/i;Ld6/i;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lj/g;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e

    .line 9
    iput v0, p0, Lj/g;->b:I

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Ld6/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lma/r;Lha/e;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lj/g;->a:I

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lj/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lj/g;Lr8/b;Ly8/a;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/e;

    .line 4
    .line 5
    instance-of v1, p2, Lpc/q;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Lpc/q;

    .line 11
    .line 12
    iget v2, v1, Lpc/q;->k:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lpc/q;->k:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lpc/q;

    .line 25
    .line 26
    invoke-direct {v1, p0, p2}, Lpc/q;-><init>(Lj/g;Ly8/a;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p2, v1, Lpc/q;->i:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lpc/q;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x6

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x7

    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x1

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-ne v2, v8, :cond_3

    .line 42
    .line 43
    iget p0, v1, Lpc/q;->h:I

    .line 44
    .line 45
    iget-object p1, v1, Lpc/q;->g:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v1, Lpc/q;->f:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    iget-object v2, v1, Lpc/q;->e:Lj/g;

    .line 50
    .line 51
    iget-object v9, v1, Lpc/q;->d:Lr8/b;

    .line 52
    .line 53
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast p2, Loc/j;

    .line 57
    .line 58
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, v2, Lj/g;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lha/e;

    .line 64
    .line 65
    invoke-virtual {p1}, Lha/e;->f()B

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v7, :cond_2

    .line 70
    .line 71
    if-ne p1, v6, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    iget-object p0, v2, Lj/g;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lha/e;

    .line 77
    .line 78
    const-string p1, "Expected end of the object or comma"

    .line 79
    .line 80
    invoke-static {p0, p1, v5, v3, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    throw v3

    .line 84
    :cond_2
    move v5, p0

    .line 85
    move-object p0, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_4
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Lha/e;->g(B)B

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {v0}, Lha/e;->q()B

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eq v2, v7, :cond_8

    .line 107
    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    move-object v9, p1

    .line 114
    move p1, p2

    .line 115
    :goto_1
    iget-object p2, p0, Lj/g;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p2, Lha/e;

    .line 118
    .line 119
    invoke-virtual {p2}, Lha/e;->c()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {p2}, Lha/e;->j()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v2, 0x5

    .line 130
    invoke-virtual {p2, v2}, Lha/e;->g(B)B

    .line 131
    .line 132
    .line 133
    iput-object v9, v1, Lpc/q;->d:Lr8/b;

    .line 134
    .line 135
    iput-object p0, v1, Lpc/q;->e:Lj/g;

    .line 136
    .line 137
    iput-object v0, v1, Lpc/q;->f:Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    iput-object p1, v1, Lpc/q;->g:Ljava/lang/String;

    .line 140
    .line 141
    iput v5, v1, Lpc/q;->h:I

    .line 142
    .line 143
    iput v8, v1, Lpc/q;->k:I

    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iput-object v1, v9, Lr8/b;->b:Lw8/c;

    .line 149
    .line 150
    sget-object p0, Lx8/a;->a:Lx8/a;

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_5
    move-object v2, p0

    .line 154
    :goto_2
    iget-object p0, v2, Lj/g;->c:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lha/e;

    .line 157
    .line 158
    if-ne p1, v4, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0, v6}, Lha/e;->g(B)B

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    if-eq p1, v7, :cond_7

    .line 165
    .line 166
    :goto_3
    new-instance p0, Loc/u;

    .line 167
    .line 168
    invoke-direct {p0, v0}, Loc/u;-><init>(Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_7
    const-string p1, "object"

    .line 173
    .line 174
    invoke-static {p0, p1}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v3

    .line 178
    :cond_8
    const-string p0, "Unexpected leading comma"

    .line 179
    .line 180
    invoke-static {v0, p0, v5, v3, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    throw v3
.end method


# virtual methods
.method public b(J)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/g;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lj/g;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    mul-int/lit8 v3, v3, 0x2

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "copyOf(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    aput-wide p1, v1, v0

    .line 37
    .line 38
    iget p1, p0, Lj/g;->b:I

    .line 39
    .line 40
    if-lt v0, p1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    iput v0, p0, Lj/g;->b:I

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public c(J)Z
    .locals 6

    .line 1
    iget v0, p0, Lj/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lj/g;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, [J

    .line 10
    .line 11
    aget-wide v4, v3, v2

    .line 12
    .line 13
    cmp-long v3, v4, p1

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1
.end method

.method public d()Lj/h;
    .locals 10

    .line 1
    new-instance v0, Lj/h;

    .line 2
    .line 3
    iget-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lj/d;

    .line 6
    .line 7
    iget-object v2, v1, Lj/d;->a:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget v3, p0, Lj/g;->b:I

    .line 10
    .line 11
    invoke-direct {v0, v2, v3}, Lj/h;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lj/d;->e:Landroid/view/View;

    .line 15
    .line 16
    iget-object v3, v0, Lj/h;->f:Lj/f;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iput-object v2, v3, Lj/f;->n:Landroid/view/View;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, v1, Lj/d;->d:Ljava/lang/CharSequence;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iput-object v2, v3, Lj/f;->d:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object v4, v3, Lj/f;->l:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, v1, Lj/d;->c:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iput-object v2, v3, Lj/f;->j:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    iget-object v4, v3, Lj/f;->k:Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v3, Lj/f;->k:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object v2, v1, Lj/d;->g:Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_7

    .line 60
    .line 61
    iget-object v2, v1, Lj/d;->b:Landroid/view/LayoutInflater;

    .line 62
    .line 63
    iget v6, v3, Lj/f;->r:I

    .line 64
    .line 65
    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 70
    .line 71
    iget-boolean v6, v1, Lj/d;->i:Z

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    iget v6, v3, Lj/f;->s:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget v6, v3, Lj/f;->t:I

    .line 79
    .line 80
    :goto_1
    iget-object v7, v1, Lj/d;->g:Ljava/lang/Object;

    .line 81
    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-instance v7, Lj/e;

    .line 86
    .line 87
    iget-object v8, v1, Lj/d;->a:Landroid/view/ContextThemeWrapper;

    .line 88
    .line 89
    const v9, 0x1020014

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v8, v6, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    iput-object v7, v3, Lj/f;->o:Landroid/widget/ListAdapter;

    .line 96
    .line 97
    iget v6, v1, Lj/d;->j:I

    .line 98
    .line 99
    iput v6, v3, Lj/f;->p:I

    .line 100
    .line 101
    iget-object v6, v1, Lj/d;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    new-instance v6, Lj/c;

    .line 106
    .line 107
    invoke-direct {v6, v1, v3}, Lj/c;-><init>(Lj/d;Lj/f;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-boolean v6, v1, Lj/d;->i:Z

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 118
    .line 119
    .line 120
    :cond_6
    iput-object v2, v3, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 121
    .line 122
    :cond_7
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v1, Lj/d;->f:Lo/n;

    .line 135
    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-object v0
.end method

.method public e(II)V
    .locals 2

    .line 1
    add-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, [C

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    if-gt v1, p2, :cond_1

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-ge p2, p1, :cond_0

    .line 12
    .line 13
    move p2, p1

    .line 14
    :cond_0
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "copyOf(...)"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public f()Loc/j;
    .locals 9

    .line 1
    iget-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lha/e;->q()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lj/g;->h(Z)Loc/y;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lj/g;->h(Z)Loc/y;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v4, 0x6

    .line 26
    const/4 v5, 0x0

    .line 27
    if-ne v1, v4, :cond_c

    .line 28
    .line 29
    iget v1, p0, Lj/g;->b:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, p0, Lj/g;->b:I

    .line 33
    .line 34
    const/16 v2, 0xc8

    .line 35
    .line 36
    if-ne v1, v2, :cond_5

    .line 37
    .line 38
    new-instance v0, Lpc/p;

    .line 39
    .line 40
    invoke-direct {v0, p0, v5}, Lpc/p;-><init>(Lj/g;Lw8/c;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lr8/b;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v1, Lr8/b;->a:Lpc/p;

    .line 49
    .line 50
    iput-object v1, v1, Lr8/b;->b:Lw8/c;

    .line 51
    .line 52
    sget-object v2, Lr8/a;->a:Lx8/a;

    .line 53
    .line 54
    iput-object v2, v1, Lr8/b;->c:Ljava/lang/Object;

    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v0, v1, Lr8/b;->c:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v3, v1, Lr8/b;->b:Lw8/c;

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Loc/j;

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    invoke-static {v2, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    :try_start_0
    iget-object v0, v1, Lr8/b;->a:Lpc/p;

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    invoke-static {v4, v0}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lpc/p;

    .line 82
    .line 83
    iget-object v0, v0, Lpc/p;->e:Lj/g;

    .line 84
    .line 85
    invoke-direct {v4, v0, v3}, Lpc/p;-><init>(Lj/g;Lw8/c;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, v4, Lpc/p;->d:Lr8/b;

    .line 89
    .line 90
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Lpc/p;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 97
    .line 98
    if-eq v0, v4, :cond_2

    .line 99
    .line 100
    invoke-interface {v3, v0}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v3, v0}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iput-object v2, v1, Lr8/b;->c:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-interface {v3, v0}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v0, v4}, Lha/e;->g(B)B

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0}, Lha/e;->q()B

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v6, 0x4

    .line 128
    if-eq v2, v6, :cond_b

    .line 129
    .line 130
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {v0}, Lha/e;->c()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    const/4 v8, 0x7

    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    invoke-virtual {v0}, Lha/e;->j()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/4 v7, 0x5

    .line 147
    invoke-virtual {v0, v7}, Lha/e;->g(B)B

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lj/g;->f()Loc/j;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lha/e;->f()B

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eq v1, v6, :cond_6

    .line 162
    .line 163
    if-ne v1, v8, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    const-string v1, "Expected end of the object or comma"

    .line 167
    .line 168
    invoke-static {v0, v1, v3, v5, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    throw v5

    .line 172
    :cond_8
    :goto_1
    if-ne v1, v4, :cond_9

    .line 173
    .line 174
    invoke-virtual {v0, v8}, Lha/e;->g(B)B

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_9
    if-eq v1, v6, :cond_a

    .line 179
    .line 180
    :goto_2
    new-instance v0, Loc/u;

    .line 181
    .line 182
    invoke-direct {v0, v2}, Loc/u;-><init>(Ljava/util/Map;)V

    .line 183
    .line 184
    .line 185
    :goto_3
    iget v1, p0, Lj/g;->b:I

    .line 186
    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 188
    .line 189
    iput v1, p0, Lj/g;->b:I

    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_a
    const-string v1, "object"

    .line 193
    .line 194
    invoke-static {v0, v1}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v5

    .line 198
    :cond_b
    const-string v1, "Unexpected leading comma"

    .line 199
    .line 200
    invoke-static {v0, v1, v3, v5, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    throw v5

    .line 204
    :cond_c
    const/16 v2, 0x8

    .line 205
    .line 206
    if-ne v1, v2, :cond_d

    .line 207
    .line 208
    invoke-virtual {p0}, Lj/g;->g()Loc/d;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    return-object v0

    .line 213
    :cond_d
    invoke-static {v1}, Lpc/j;->p(B)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v2, "Cannot read Json element because of unexpected "

    .line 218
    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v0, v1, v3, v5, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    throw v5
.end method

.method public g()Loc/d;
    .locals 8

    .line 1
    iget-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lha/e;->f()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lha/e;->q()B

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x4

    .line 16
    if-eq v2, v5, :cond_6

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lha/e;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v7, 0x9

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lj/g;->f()Loc/j;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lha/e;->f()B

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq v1, v5, :cond_0

    .line 43
    .line 44
    if-ne v1, v7, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v6, 0x0

    .line 49
    :goto_1
    iget v7, v0, Lha/e;->b:I

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string v1, "Expected end of the array or comma"

    .line 55
    .line 56
    invoke-static {v0, v1, v7, v4, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v4

    .line 60
    :cond_3
    const/16 v3, 0x8

    .line 61
    .line 62
    if-ne v1, v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Lha/e;->g(B)B

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    if-eq v1, v5, :cond_5

    .line 69
    .line 70
    :goto_2
    new-instance v0, Loc/d;

    .line 71
    .line 72
    invoke-direct {v0, v2}, Loc/d;-><init>(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_5
    const-string v1, "array"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lpc/j;->j(Lha/e;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v4

    .line 82
    :cond_6
    const-string v1, "Unexpected leading comma"

    .line 83
    .line 84
    const/4 v2, 0x6

    .line 85
    invoke-static {v0, v1, v3, v4, v2}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    throw v4
.end method

.method public h(Z)Loc/y;
    .locals 2

    .line 1
    iget-object v0, p0, Lj/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/e;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lha/e;->j()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string v1, "null"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p1, Loc/r;->INSTANCE:Loc/r;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v1, Loc/o;

    .line 30
    .line 31
    invoke-direct {v1, v0, p1}, Loc/o;-><init>(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public i()V
    .locals 5

    .line 1
    sget-object v0, Lpc/c;->c:Lpc/c;

    .line 2
    .line 3
    iget-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [C

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "array"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget v2, v0, Le4/s0;->a:I

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    add-int/2addr v3, v2

    .line 20
    sget v4, Lpc/b;->a:I

    .line 21
    .line 22
    if-ge v3, v4, :cond_0

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    add-int/2addr v2, v3

    .line 26
    iput v2, v0, Le4/s0;->a:I

    .line 27
    .line 28
    iget-object v2, v0, Le4/s0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ls8/k;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ls8/k;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    throw v1
.end method

.method public j(J)V
    .locals 5

    .line 1
    iget v0, p0, Lj/g;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lj/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, [J

    .line 9
    .line 10
    aget-wide v3, v2, v1

    .line 11
    .line 12
    cmp-long v2, p1, v3

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget p1, p0, Lj/g;->b:I

    .line 17
    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    :goto_1
    if-ge v1, p1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lj/g;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, [J

    .line 25
    .line 26
    add-int/lit8 v0, v1, 0x1

    .line 27
    .line 28
    aget-wide v2, p2, v0

    .line 29
    .line 30
    aput-wide v2, p2, v1

    .line 31
    .line 32
    move v1, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget p1, p0, Lj/g;->b:I

    .line 35
    .line 36
    add-int/lit8 p1, p1, -0x1

    .line 37
    .line 38
    iput p1, p0, Lj/g;->b:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v1, p0, Lj/g;->b:I

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lj/g;->e(II)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, [C

    .line 21
    .line 22
    iget v2, p0, Lj/g;->b:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {p1, v3, v4, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Lj/g;->b:I

    .line 33
    .line 34
    add-int/2addr p1, v0

    .line 35
    iput p1, p0, Lj/g;->b:I

    .line 36
    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lj/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lj/g;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lj/g;->b:I

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
