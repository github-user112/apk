.class public final Lp/h3;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lna/m;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lp/h3;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lp/h3;->e:Ljava/lang/Object;

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lp/h3;->f:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 21
    new-array v2, v1, [I

    iput-object v2, p0, Lp/h3;->g:Ljava/lang/Object;

    .line 22
    new-array v1, v1, [I

    iput-object v1, p0, Lp/h3;->h:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lp/h3;->c:Ljava/lang/Object;

    const v2, 0x7f080074

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lp/h3;->d:Ljava/lang/Object;

    .line 26
    const-class v1, Lp/h3;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    .line 28
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    .line 29
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    .line 31
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f0f0004

    .line 32
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    .line 33
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public constructor <init>(Lhb/k;Lp/h3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lp/h3;->a:I

    const-string v0, "typeParameterProtos"

    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lp/h3;->d:Ljava/lang/Object;

    .line 5
    iput-object p5, p0, Lp/h3;->e:Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 7
    iget-object p2, p1, Lhb/i;->a:Lkb/l;

    .line 8
    new-instance p4, Lhb/a0;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lhb/a0;-><init>(Lp/h3;I)V

    invoke-virtual {p2, p4}, Lkb/l;->c(Lf9/k;)Lf1/e;

    move-result-object p2

    iput-object p2, p0, Lp/h3;->f:Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 10
    new-instance p2, Lhb/a0;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lhb/a0;-><init>(Lp/h3;I)V

    invoke-virtual {p1, p2}, Lkb/l;->c(Lf9/k;)Lf1/e;

    move-result-object p1

    iput-object p1, p0, Lp/h3;->g:Ljava/lang/Object;

    .line 11
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Ls8/x;->a:Ls8/x;

    goto :goto_1

    .line 13
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpa/x0;

    .line 15
    iget v0, p5, Lpa/x0;->d:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljb/v;

    iget-object v2, p0, Lp/h3;->b:Ljava/lang/Object;

    check-cast v2, Lhb/k;

    invoke-direct {v1, v2, p5, p3}, Ljb/v;-><init>(Lhb/k;Lpa/x0;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    iput-object p1, p0, Lp/h3;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lna/d;Lv9/e;Lua/b;Ljava/util/List;Lv9/m0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lp/h3;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lp/h3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lp/h3;->e:Ljava/lang/Object;

    iput-object p3, p0, Lp/h3;->f:Ljava/lang/Object;

    iput-object p4, p0, Lp/h3;->g:Ljava/lang/Object;

    iput-object p5, p0, Lp/h3;->h:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp/h3;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Llb/a0;Llb/w;)Llb/a0;
    .locals 7

    .line 1
    invoke-static {p0}, Lp4/o;->E(Llb/w;)Ls9/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Llb/w;->getAnnotations()Lw9/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p0}, Lp9/q;->C(Llb/w;)Llb/w;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0}, Lp9/q;->A(Llb/w;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {p0}, Lp9/q;->D(Llb/w;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Ls8/p;->a0(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v5, v4

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    invoke-static {v5, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Llb/n0;

    .line 52
    .line 53
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v6, 0x1

    .line 62
    move-object v5, p1

    .line 63
    invoke-static/range {v0 .. v6}, Lp9/q;->u(Ls9/i;Lw9/h;Llb/w;Ljava/util/List;Ljava/util/ArrayList;Llb/w;Z)Llb/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Llb/w;->E0()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p1, p0}, Llb/a0;->K0(Z)Llb/a0;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public static final j(Lpa/s0;Lp/h3;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lpa/s0;->d:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "getArgumentList(...)"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lp/h3;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lhb/k;

    .line 11
    .line 12
    iget-object v1, v1, Lhb/k;->d:Lra/g;

    .line 13
    .line 14
    invoke-static {p0, v1}, Lp4/e;->s(Lpa/s0;Lra/g;)Lpa/s0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p1}, Lp/h3;->j(Lpa/s0;Lp/h3;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, v0}, Ls8/p;->p0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static k(Ljava/util/List;Lw9/h;Llb/k0;Lv9/k;)Llb/h0;
    .locals 1

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 p3, 0xa

    .line 4
    .line 5
    invoke-static {p0, p3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Llb/k;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lw9/h;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    sget-object p3, Llb/h0;->b:Lu0/j;

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object p3, Llb/h0;->c:Llb/h0;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object p3, Llb/h0;->b:Lu0/j;

    .line 46
    .line 47
    new-instance v0, Llb/g;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Llb/g;-><init>(Lw9/h;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lu0/j;->i(Ljava/util/List;)Llb/h0;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/lang/Iterable;

    .line 87
    .line 88
    invoke-static {p2, p0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    sget-object p1, Llb/h0;->b:Lu0/j;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lu0/j;->i(Ljava/util/List;)Llb/h0;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public static final n(Lp/h3;Lpa/s0;I)Lv9/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhb/k;

    .line 4
    .line 5
    iget-object v1, v0, Lhb/k;->b:Lra/f;

    .line 6
    .line 7
    invoke-static {v1, p2}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v1, Lhb/a0;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p0, v2}, Lhb/a0;-><init>(Lp/h3;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object p1, Lhb/b0;->b:Lhb/b0;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lwb/l;->N(Lwb/j;Lf9/k;)Lwb/p;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lwb/p;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    move-object v1, p0

    .line 37
    check-cast v1, Lwb/o;

    .line 38
    .line 39
    invoke-virtual {v1}, Lwb/o;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lwb/o;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object p0, Lhb/c0;->h:Lhb/c0;

    .line 54
    .line 55
    invoke-static {p2, p0}, Lwb/l;->M(Ljava/lang/Object;Lf9/k;)Lwb/j;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lwb/l;->J(Lwb/j;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ge v1, p0, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object p0, v0, Lhb/k;->a:Lhb/i;

    .line 79
    .line 80
    iget-object p0, p0, Lhb/i;->l:Lba/a;

    .line 81
    .line 82
    invoke-virtual {p0, p2, p1}, Lba/a;->x(Lua/b;Ljava/util/List;)Lv9/e;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp/h3;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lna/d;

    .line 4
    .line 5
    iget-object v1, p0, Lp/h3;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lua/b;

    .line 8
    .line 9
    iget-object v2, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v3, "arguments"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lr9/a;->b:Lua/b;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string v3, "value"

    .line 29
    .line 30
    invoke-static {v3}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v5, v3, Lza/s;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    check-cast v3, Lza/s;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v3, v6

    .line 47
    :goto_0
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v3, v3, Lza/g;->a:Ljava/lang/Object;

    .line 51
    .line 52
    instance-of v5, v3, Lza/q;

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    move-object v6, v3

    .line 57
    check-cast v6, Lza/q;

    .line 58
    .line 59
    :cond_3
    if-nez v6, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v3, v6, Lza/q;->a:Lza/f;

    .line 63
    .line 64
    iget-object v3, v3, Lza/f;->a:Lua/b;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lna/d;->j(Lua/b;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    :goto_1
    if-eqz v4, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {v0, v1}, Lna/d;->j(Lua/b;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    :goto_2
    return-void

    .line 80
    :cond_6
    iget-object v0, p0, Lp/h3;->g:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/util/List;

    .line 83
    .line 84
    new-instance v1, Lw9/c;

    .line 85
    .line 86
    iget-object v3, p0, Lp/h3;->e:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Lv9/e;

    .line 89
    .line 90
    invoke-interface {v3}, Lv9/e;->n()Llb/a0;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, p0, Lp/h3;->h:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v4, Lv9/m0;

    .line 97
    .line 98
    invoke-direct {v1, v3, v2, v4}, Lw9/c;-><init>(Llb/a0;Ljava/util/Map;Lv9/m0;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public c(Lua/e;)Lna/n;
    .locals 2

    .line 1
    new-instance v0, Lba/a;

    .line 2
    .line 3
    iget-object v1, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lna/d;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p0}, Lba/a;-><init>(Lna/d;Lua/e;Lp/h3;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public d(Lua/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lna/d;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lna/d;->a(Lna/d;Lua/e;Ljava/lang/Object;)Lza/g;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Lua/e;Lza/f;)V
    .locals 2

    .line 1
    new-instance v0, Lza/s;

    .line 2
    .line 3
    new-instance v1, Lza/q;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lza/q;-><init>(Lza/f;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public f(Lua/e;Lua/b;Lua/e;)V
    .locals 1

    .line 1
    new-instance v0, Lza/i;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/h3;->h:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public h(I)Lv9/q0;
    .locals 2

    .line 1
    iget-object v0, p0, Lp/h3;->h:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv9/q0;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lp/h3;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lp/h3;->h(I)Lv9/q0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1
    return-object v0
.end method

.method public i(Lpa/s0;Z)Llb/a0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lp/h3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lhb/k;

    .line 8
    .line 9
    iget-object v3, v2, Lhb/k;->d:Lra/g;

    .line 10
    .line 11
    iget-object v4, v2, Lhb/k;->a:Lhb/i;

    .line 12
    .line 13
    iget-object v5, v2, Lhb/k;->c:Lv9/k;

    .line 14
    .line 15
    const-string v6, "proto"

    .line 16
    .line 17
    invoke-static {v1, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v6, v1, Lpa/s0;->c:I

    .line 21
    .line 22
    and-int/lit8 v7, v6, 0x10

    .line 23
    .line 24
    const/16 v8, 0x80

    .line 25
    .line 26
    const/16 v9, 0x10

    .line 27
    .line 28
    if-ne v7, v9, :cond_0

    .line 29
    .line 30
    iget v6, v1, Lpa/s0;->i:I

    .line 31
    .line 32
    iget-object v7, v2, Lhb/k;->b:Lra/f;

    .line 33
    .line 34
    invoke-static {v7, v6}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-boolean v6, v6, Lua/b;->c:Z

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    iget-object v6, v2, Lhb/k;->a:Lhb/i;

    .line 43
    .line 44
    iget-object v6, v6, Lhb/i;->g:Lhb/j;

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    and-int/2addr v6, v8

    .line 51
    if-ne v6, v8, :cond_1

    .line 52
    .line 53
    iget v6, v1, Lpa/s0;->l:I

    .line 54
    .line 55
    iget-object v7, v2, Lhb/k;->b:Lra/f;

    .line 56
    .line 57
    invoke-static {v7, v6}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-boolean v6, v6, Lua/b;->c:Z

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    iget-object v6, v2, Lhb/k;->a:Lhb/i;

    .line 66
    .line 67
    iget-object v6, v6, Lhb/i;->g:Lhb/j;

    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    iget v6, v1, Lpa/s0;->c:I

    .line 73
    .line 74
    and-int/lit8 v7, v6, 0x10

    .line 75
    .line 76
    const-string v10, "getTypeConstructor(...)"

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    if-ne v7, v9, :cond_2

    .line 80
    .line 81
    iget-object v2, v0, Lp/h3;->f:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lf1/e;

    .line 84
    .line 85
    iget v6, v1, Lpa/s0;->i:I

    .line 86
    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v2, v6}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lv9/h;

    .line 96
    .line 97
    if-nez v2, :cond_8

    .line 98
    .line 99
    iget v2, v1, Lpa/s0;->i:I

    .line 100
    .line 101
    invoke-static {v0, v1, v2}, Lp/h3;->n(Lp/h3;Lpa/s0;I)Lv9/e;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :cond_2
    and-int/lit8 v7, v6, 0x20

    .line 108
    .line 109
    const/16 v9, 0x20

    .line 110
    .line 111
    if-ne v7, v9, :cond_3

    .line 112
    .line 113
    iget v2, v1, Lpa/s0;->j:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lp/h3;->h(I)Lv9/q0;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-nez v2, :cond_8

    .line 120
    .line 121
    sget-object v2, Lnb/l;->a:Lnb/l;

    .line 122
    .line 123
    iget v2, v1, Lpa/s0;->j:I

    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v6, v0, Lp/h3;->e:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v6, Ljava/lang/String;

    .line 132
    .line 133
    filled-new-array {v2, v6}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    sget-object v6, Lnb/k;->o:Lnb/k;

    .line 138
    .line 139
    invoke-static {v6, v2}, Lnb/l;->d(Lnb/k;[Ljava/lang/String;)Lnb/j;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_3
    and-int/lit8 v7, v6, 0x40

    .line 146
    .line 147
    const/16 v9, 0x40

    .line 148
    .line 149
    if-ne v7, v9, :cond_7

    .line 150
    .line 151
    iget-object v2, v2, Lhb/k;->b:Lra/f;

    .line 152
    .line 153
    iget v6, v1, Lpa/s0;->k:I

    .line 154
    .line 155
    invoke-interface {v2, v6}, Lra/f;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0}, Lp/h3;->g()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_5

    .line 172
    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    move-object v8, v7

    .line 178
    check-cast v8, Lv9/q0;

    .line 179
    .line 180
    invoke-interface {v8}, Lv9/k;->getName()Lua/e;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-virtual {v8}, Lua/e;->b()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-static {v8, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_4

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    const/4 v7, 0x0

    .line 196
    :goto_1
    move-object v6, v7

    .line 197
    check-cast v6, Lv9/q0;

    .line 198
    .line 199
    if-nez v6, :cond_6

    .line 200
    .line 201
    sget-object v6, Lnb/l;->a:Lnb/l;

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    filled-new-array {v2, v6}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    sget-object v6, Lnb/k;->p:Lnb/k;

    .line 212
    .line 213
    invoke-static {v6, v2}, Lnb/l;->d(Lnb/k;[Ljava/lang/String;)Lnb/j;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    goto :goto_3

    .line 218
    :cond_6
    move-object v2, v6

    .line 219
    goto :goto_2

    .line 220
    :cond_7
    and-int/lit16 v2, v6, 0x80

    .line 221
    .line 222
    if-ne v2, v8, :cond_9

    .line 223
    .line 224
    iget-object v2, v0, Lp/h3;->g:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Lf1/e;

    .line 227
    .line 228
    iget v6, v1, Lpa/s0;->l:I

    .line 229
    .line 230
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v2, v6}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Lv9/h;

    .line 239
    .line 240
    if-nez v2, :cond_8

    .line 241
    .line 242
    iget v2, v1, Lpa/s0;->l:I

    .line 243
    .line 244
    invoke-static {v0, v1, v2}, Lp/h3;->n(Lp/h3;Lpa/s0;I)Lv9/e;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :cond_8
    :goto_2
    invoke-interface {v2}, Lv9/h;->t()Llb/k0;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v2, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    sget-object v2, Lnb/l;->a:Lnb/l;

    .line 257
    .line 258
    sget-object v2, Lnb/k;->r:Lnb/k;

    .line 259
    .line 260
    new-array v6, v11, [Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v2, v6}, Lnb/l;->d(Lnb/k;[Ljava/lang/String;)Lnb/j;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    :goto_3
    invoke-interface {v2}, Llb/k0;->k()Lv9/h;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-static {v6}, Lnb/l;->f(Lv9/k;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    const/4 v7, 0x1

    .line 275
    if-eqz v6, :cond_a

    .line 276
    .line 277
    sget-object v1, Lnb/l;->a:Lnb/l;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    filled-new-array {v1}, [Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, [Ljava/lang/String;

    .line 292
    .line 293
    sget-object v3, Lnb/k;->w:Lnb/k;

    .line 294
    .line 295
    sget-object v4, Ls8/w;->a:Ls8/w;

    .line 296
    .line 297
    invoke-static {v3, v4, v2, v1}, Lnb/l;->e(Lnb/k;Ljava/util/List;Llb/k0;[Ljava/lang/String;)Lnb/i;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    return-object v1

    .line 302
    :cond_a
    new-instance v6, Ljb/a;

    .line 303
    .line 304
    iget-object v8, v4, Lhb/i;->a:Lkb/l;

    .line 305
    .line 306
    new-instance v9, La8/f0;

    .line 307
    .line 308
    const/4 v12, 0x5

    .line 309
    invoke-direct {v9, v12, v0, v1}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-direct {v6, v8, v9}, Ljb/a;-><init>(Lkb/o;Lf9/a;)V

    .line 313
    .line 314
    .line 315
    iget-object v8, v4, Lhb/i;->r:Ljava/util/List;

    .line 316
    .line 317
    invoke-static {v8, v6, v2, v5}, Lp/h3;->k(Ljava/util/List;Lw9/h;Llb/k0;Lv9/k;)Llb/h0;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-static {v1, v0}, Lp/h3;->j(Lpa/s0;Lp/h3;)Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    new-instance v12, Ljava/util/ArrayList;

    .line 326
    .line 327
    const/16 v14, 0xa

    .line 328
    .line 329
    invoke-static {v9, v14}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    const/4 v15, 0x0

    .line 341
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v16

    .line 345
    if-eqz v16, :cond_15

    .line 346
    .line 347
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v16

    .line 351
    add-int/lit8 v17, v15, 0x1

    .line 352
    .line 353
    const/16 v18, 0x0

    .line 354
    .line 355
    if-ltz v15, :cond_14

    .line 356
    .line 357
    move-object/from16 v13, v16

    .line 358
    .line 359
    check-cast v13, Lpa/q0;

    .line 360
    .line 361
    invoke-interface {v2}, Llb/k0;->m()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    const-string v14, "getParameters(...)"

    .line 366
    .line 367
    invoke-static {v11, v14}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v15, v11}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    check-cast v11, Lv9/q0;

    .line 375
    .line 376
    iget-object v14, v13, Lpa/q0;->c:Lpa/p0;

    .line 377
    .line 378
    sget-object v15, Lpa/p0;->e:Lpa/p0;

    .line 379
    .line 380
    if-ne v14, v15, :cond_c

    .line 381
    .line 382
    if-nez v11, :cond_b

    .line 383
    .line 384
    new-instance v11, Llb/e0;

    .line 385
    .line 386
    iget-object v13, v4, Lhb/i;->b:Lv9/y;

    .line 387
    .line 388
    invoke-interface {v13}, Lv9/y;->j()Ls9/i;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    invoke-direct {v11, v13}, Llb/e0;-><init>(Ls9/i;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_8

    .line 396
    .line 397
    :cond_b
    new-instance v13, Llb/f0;

    .line 398
    .line 399
    invoke-direct {v13, v11}, Llb/f0;-><init>(Lv9/q0;)V

    .line 400
    .line 401
    .line 402
    :goto_5
    move-object v11, v13

    .line 403
    goto/16 :goto_8

    .line 404
    .line 405
    :cond_c
    const-string v11, "getProjection(...)"

    .line 406
    .line 407
    invoke-static {v14, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    const/4 v15, 0x2

    .line 415
    if-eqz v11, :cond_10

    .line 416
    .line 417
    if-eq v11, v7, :cond_f

    .line 418
    .line 419
    if-eq v11, v15, :cond_e

    .line 420
    .line 421
    const/4 v1, 0x3

    .line 422
    if-eq v11, v1, :cond_d

    .line 423
    .line 424
    new-instance v1, Lac/p;

    .line 425
    .line 426
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 427
    .line 428
    .line 429
    throw v1

    .line 430
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 431
    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v3, "Only IN, OUT and INV are supported. Actual argument: "

    .line 435
    .line 436
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v1

    .line 450
    :cond_e
    sget-object v11, Llb/y0;->c:Llb/y0;

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_f
    sget-object v11, Llb/y0;->e:Llb/y0;

    .line 454
    .line 455
    goto :goto_6

    .line 456
    :cond_10
    sget-object v11, Llb/y0;->d:Llb/y0;

    .line 457
    .line 458
    :goto_6
    iget v14, v13, Lpa/q0;->b:I

    .line 459
    .line 460
    and-int/lit8 v7, v14, 0x2

    .line 461
    .line 462
    if-ne v7, v15, :cond_11

    .line 463
    .line 464
    iget-object v7, v13, Lpa/q0;->d:Lpa/s0;

    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_11
    and-int/lit8 v7, v14, 0x4

    .line 468
    .line 469
    const/4 v14, 0x4

    .line 470
    if-ne v7, v14, :cond_12

    .line 471
    .line 472
    iget v7, v13, Lpa/q0;->e:I

    .line 473
    .line 474
    invoke-virtual {v3, v7}, Lra/g;->a(I)Lpa/s0;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    goto :goto_7

    .line 479
    :cond_12
    move-object/from16 v7, v18

    .line 480
    .line 481
    :goto_7
    if-nez v7, :cond_13

    .line 482
    .line 483
    new-instance v11, Llb/f0;

    .line 484
    .line 485
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    filled-new-array {v7}, [Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    sget-object v13, Lnb/k;->B:Lnb/k;

    .line 494
    .line 495
    invoke-static {v13, v7}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    invoke-direct {v11, v7}, Llb/f0;-><init>(Llb/w;)V

    .line 500
    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_13
    new-instance v13, Llb/f0;

    .line 504
    .line 505
    invoke-virtual {v0, v7}, Lp/h3;->m(Lpa/s0;)Llb/w;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-direct {v13, v7, v11}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 510
    .line 511
    .line 512
    goto :goto_5

    .line 513
    :goto_8
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move/from16 v15, v17

    .line 517
    .line 518
    const/4 v7, 0x1

    .line 519
    const/4 v11, 0x0

    .line 520
    const/16 v14, 0xa

    .line 521
    .line 522
    goto/16 :goto_4

    .line 523
    .line 524
    :cond_14
    invoke-static {}, Lp9/x1;->L()V

    .line 525
    .line 526
    .line 527
    throw v18

    .line 528
    :cond_15
    const/16 v18, 0x0

    .line 529
    .line 530
    invoke-static {v12}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v15

    .line 534
    invoke-interface {v2}, Llb/k0;->k()Lv9/h;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    if-eqz p2, :cond_1a

    .line 539
    .line 540
    instance-of v9, v7, Lv9/p0;

    .line 541
    .line 542
    if-eqz v9, :cond_1a

    .line 543
    .line 544
    move-object v14, v7

    .line 545
    check-cast v14, Lv9/p0;

    .line 546
    .line 547
    new-instance v7, Llb/d;

    .line 548
    .line 549
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 550
    .line 551
    .line 552
    move-object v8, v14

    .line 553
    check-cast v8, Ly9/f;

    .line 554
    .line 555
    iget-object v8, v8, Ly9/f;->h:Ly9/e;

    .line 556
    .line 557
    invoke-virtual {v8}, Ly9/e;->m()Ljava/util/List;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    new-instance v9, Ljava/util/ArrayList;

    .line 562
    .line 563
    const/16 v10, 0xa

    .line 564
    .line 565
    invoke-static {v8, v10}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 566
    .line 567
    .line 568
    move-result v10

    .line 569
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 573
    .line 574
    .line 575
    move-result-object v8

    .line 576
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    if-eqz v10, :cond_16

    .line 581
    .line 582
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v10

    .line 586
    check-cast v10, Lv9/q0;

    .line 587
    .line 588
    invoke-interface {v10}, Lv9/q0;->a()Lv9/q0;

    .line 589
    .line 590
    .line 591
    move-result-object v10

    .line 592
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_9

    .line 596
    :cond_16
    invoke-static {v9, v15}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    invoke-static {v8}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 601
    .line 602
    .line 603
    move-result-object v16

    .line 604
    new-instance v8, Lba/a;

    .line 605
    .line 606
    const/16 v17, 0x6

    .line 607
    .line 608
    move-object v12, v8

    .line 609
    move-object/from16 v13, v18

    .line 610
    .line 611
    invoke-direct/range {v12 .. v17}, Lba/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 612
    .line 613
    .line 614
    sget-object v9, Llb/h0;->b:Lu0/j;

    .line 615
    .line 616
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    sget-object v9, Llb/h0;->c:Llb/h0;

    .line 620
    .line 621
    const-string v10, "attributes"

    .line 622
    .line 623
    invoke-static {v9, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    const/4 v11, 0x0

    .line 627
    const/4 v12, 0x1

    .line 628
    const/4 v10, 0x0

    .line 629
    invoke-virtual/range {v7 .. v12}, Llb/d;->i(Lba/a;Llb/h0;ZIZ)Llb/a0;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    iget-object v4, v4, Lhb/i;->r:Ljava/util/List;

    .line 634
    .line 635
    invoke-virtual {v7}, Llb/w;->getAnnotations()Lw9/h;

    .line 636
    .line 637
    .line 638
    move-result-object v8

    .line 639
    invoke-static {v6, v8}, Ls8/p;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    if-eqz v8, :cond_17

    .line 648
    .line 649
    sget-object v6, Lw9/g;->a:Lw9/f;

    .line 650
    .line 651
    goto :goto_a

    .line 652
    :cond_17
    new-instance v8, Lw9/i;

    .line 653
    .line 654
    const/4 v9, 0x0

    .line 655
    invoke-direct {v8, v9, v6}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 656
    .line 657
    .line 658
    move-object v6, v8

    .line 659
    :goto_a
    invoke-static {v4, v6, v2, v5}, Lp/h3;->k(Ljava/util/List;Lw9/h;Llb/k0;Lv9/k;)Llb/h0;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    invoke-static {v7}, Llb/v0;->e(Llb/w;)Z

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-nez v4, :cond_19

    .line 668
    .line 669
    iget-boolean v4, v1, Lpa/s0;->e:Z

    .line 670
    .line 671
    if-eqz v4, :cond_18

    .line 672
    .line 673
    goto :goto_b

    .line 674
    :cond_18
    const/4 v4, 0x0

    .line 675
    goto :goto_c

    .line 676
    :cond_19
    :goto_b
    const/4 v4, 0x1

    .line 677
    :goto_c
    invoke-virtual {v7, v4}, Llb/a0;->K0(Z)Llb/a0;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v4, v2}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    goto/16 :goto_14

    .line 686
    .line 687
    :cond_1a
    move-object/from16 v13, v18

    .line 688
    .line 689
    sget-object v4, Lra/d;->a:Lra/b;

    .line 690
    .line 691
    iget v6, v1, Lpa/s0;->q:I

    .line 692
    .line 693
    invoke-virtual {v4, v6}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-eqz v4, :cond_28

    .line 702
    .line 703
    iget-boolean v4, v1, Lpa/s0;->e:Z

    .line 704
    .line 705
    invoke-interface {v2}, Llb/k0;->m()Ljava/util/List;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 714
    .line 715
    .line 716
    move-result v7

    .line 717
    sub-int/2addr v6, v7

    .line 718
    if-eqz v6, :cond_1d

    .line 719
    .line 720
    const/4 v7, 0x1

    .line 721
    if-eq v6, v7, :cond_1c

    .line 722
    .line 723
    :cond_1b
    :goto_d
    move-object v4, v13

    .line 724
    goto/16 :goto_12

    .line 725
    .line 726
    :cond_1c
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    sub-int/2addr v5, v7

    .line 731
    if-ltz v5, :cond_1b

    .line 732
    .line 733
    invoke-interface {v2}, Llb/k0;->j()Ls9/i;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v6, v5}, Ls9/i;->w(I)Lv9/e;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    invoke-interface {v5}, Lv9/h;->t()Llb/k0;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    invoke-static {v5, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-static {v15, v8, v5, v4}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    goto/16 :goto_12

    .line 753
    .line 754
    :cond_1d
    invoke-static {v15, v8, v2, v4}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 755
    .line 756
    .line 757
    move-result-object v4

    .line 758
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-interface {v6}, Llb/k0;->k()Lv9/h;

    .line 763
    .line 764
    .line 765
    move-result-object v6

    .line 766
    if-eqz v6, :cond_1e

    .line 767
    .line 768
    invoke-static {v6}, Lp9/q;->B(Lv9/h;)Lt9/k;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    goto :goto_e

    .line 773
    :cond_1e
    move-object v6, v13

    .line 774
    :goto_e
    sget-object v7, Lt9/g;->c:Lt9/g;

    .line 775
    .line 776
    invoke-static {v6, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-nez v6, :cond_1f

    .line 781
    .line 782
    goto :goto_d

    .line 783
    :cond_1f
    invoke-static {v4}, Lp9/q;->D(Llb/w;)Ljava/util/List;

    .line 784
    .line 785
    .line 786
    move-result-object v6

    .line 787
    invoke-static {v6}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v6

    .line 791
    check-cast v6, Llb/n0;

    .line 792
    .line 793
    if-eqz v6, :cond_1b

    .line 794
    .line 795
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    if-nez v6, :cond_20

    .line 800
    .line 801
    goto :goto_d

    .line 802
    :cond_20
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    invoke-interface {v7}, Llb/k0;->k()Lv9/h;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    if-eqz v7, :cond_21

    .line 811
    .line 812
    invoke-static {v7}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 813
    .line 814
    .line 815
    move-result-object v7

    .line 816
    goto :goto_f

    .line 817
    :cond_21
    move-object v7, v13

    .line 818
    :goto_f
    invoke-virtual {v6}, Llb/w;->B0()Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v8

    .line 822
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 823
    .line 824
    .line 825
    move-result v8

    .line 826
    const/4 v9, 0x1

    .line 827
    if-ne v8, v9, :cond_26

    .line 828
    .line 829
    sget-object v8, Ls9/p;->g:Lua/c;

    .line 830
    .line 831
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v8

    .line 835
    if-nez v8, :cond_22

    .line 836
    .line 837
    sget-object v8, Lhb/d0;->a:Lua/c;

    .line 838
    .line 839
    invoke-static {v7, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v7

    .line 843
    if-nez v7, :cond_22

    .line 844
    .line 845
    goto :goto_12

    .line 846
    :cond_22
    invoke-virtual {v6}, Llb/w;->B0()Ljava/util/List;

    .line 847
    .line 848
    .line 849
    move-result-object v6

    .line 850
    invoke-static {v6}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v6

    .line 854
    check-cast v6, Llb/n0;

    .line 855
    .line 856
    invoke-virtual {v6}, Llb/n0;->b()Llb/w;

    .line 857
    .line 858
    .line 859
    move-result-object v6

    .line 860
    const-string v7, "getType(...)"

    .line 861
    .line 862
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    instance-of v7, v5, Lv9/b;

    .line 866
    .line 867
    if-eqz v7, :cond_23

    .line 868
    .line 869
    check-cast v5, Lv9/b;

    .line 870
    .line 871
    goto :goto_10

    .line 872
    :cond_23
    move-object v5, v13

    .line 873
    :goto_10
    if-eqz v5, :cond_24

    .line 874
    .line 875
    invoke-static {v5}, Lbb/e;->c(Lv9/l;)Lua/c;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    goto :goto_11

    .line 880
    :cond_24
    move-object v5, v13

    .line 881
    :goto_11
    sget-object v7, Lhb/z;->a:Lua/c;

    .line 882
    .line 883
    invoke-static {v5, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v5

    .line 887
    if-eqz v5, :cond_25

    .line 888
    .line 889
    invoke-static {v4, v6}, Lp/h3;->a(Llb/a0;Llb/w;)Llb/a0;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    goto :goto_12

    .line 894
    :cond_25
    invoke-static {v4, v6}, Lp/h3;->a(Llb/a0;Llb/w;)Llb/a0;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    :cond_26
    :goto_12
    if-nez v4, :cond_27

    .line 899
    .line 900
    sget-object v4, Lnb/l;->a:Lnb/l;

    .line 901
    .line 902
    sget-object v4, Lnb/k;->q:Lnb/k;

    .line 903
    .line 904
    const/4 v9, 0x0

    .line 905
    new-array v5, v9, [Ljava/lang/String;

    .line 906
    .line 907
    invoke-static {v4, v15, v2, v5}, Lnb/l;->e(Lnb/k;Ljava/util/List;Llb/k0;[Ljava/lang/String;)Lnb/i;

    .line 908
    .line 909
    .line 910
    move-result-object v2

    .line 911
    goto :goto_14

    .line 912
    :cond_27
    :goto_13
    move-object v2, v4

    .line 913
    goto :goto_14

    .line 914
    :cond_28
    iget-boolean v4, v1, Lpa/s0;->e:Z

    .line 915
    .line 916
    invoke-static {v15, v8, v2, v4}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 917
    .line 918
    .line 919
    move-result-object v2

    .line 920
    sget-object v4, Lra/d;->b:Lra/b;

    .line 921
    .line 922
    iget v5, v1, Lpa/s0;->q:I

    .line 923
    .line 924
    invoke-virtual {v4, v5}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 929
    .line 930
    .line 931
    move-result v4

    .line 932
    if-eqz v4, :cond_2a

    .line 933
    .line 934
    const/4 v7, 0x1

    .line 935
    invoke-static {v2, v7}, Llb/d;->p(Llb/x0;Z)Llb/l;

    .line 936
    .line 937
    .line 938
    move-result-object v4

    .line 939
    if-eqz v4, :cond_29

    .line 940
    .line 941
    goto :goto_13

    .line 942
    :cond_29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 943
    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    .line 945
    .line 946
    const-string v4, "null DefinitelyNotNullType for \'"

    .line 947
    .line 948
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    const/16 v2, 0x27

    .line 955
    .line 956
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v1

    .line 971
    :cond_2a
    :goto_14
    iget v4, v1, Lpa/s0;->c:I

    .line 972
    .line 973
    and-int/lit16 v5, v4, 0x400

    .line 974
    .line 975
    const/16 v6, 0x400

    .line 976
    .line 977
    if-ne v5, v6, :cond_2b

    .line 978
    .line 979
    iget-object v13, v1, Lpa/s0;->o:Lpa/s0;

    .line 980
    .line 981
    goto :goto_15

    .line 982
    :cond_2b
    const/16 v5, 0x800

    .line 983
    .line 984
    and-int/2addr v4, v5

    .line 985
    if-ne v4, v5, :cond_2c

    .line 986
    .line 987
    iget v1, v1, Lpa/s0;->p:I

    .line 988
    .line 989
    invoke-virtual {v3, v1}, Lra/g;->a(I)Lpa/s0;

    .line 990
    .line 991
    .line 992
    move-result-object v13

    .line 993
    :cond_2c
    :goto_15
    if-eqz v13, :cond_2d

    .line 994
    .line 995
    const/4 v9, 0x0

    .line 996
    invoke-virtual {v0, v13, v9}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-static {v2, v1}, Llb/c;->E(Llb/a0;Llb/a0;)Llb/a0;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    return-object v1

    .line 1005
    :cond_2d
    return-object v2
.end method

.method public l(Lua/b;Lua/e;)Lna/m;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lna/d;

    .line 9
    .line 10
    sget-object v2, Lv9/m0;->e0:Lv9/n0;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2, v0}, Lna/d;->k(Lua/b;Lv9/m0;Ljava/util/List;)Lp/h3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lb3/q;

    .line 17
    .line 18
    invoke-direct {v1, p1, p0, p2, v0}, Lb3/q;-><init>(Lp/h3;Lp/h3;Lua/e;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public m(Lpa/s0;)Llb/w;
    .locals 8

    .line 1
    iget-object v0, p0, Lp/h3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhb/k;

    .line 4
    .line 5
    const-string v1, "proto"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p1, Lpa/s0;->c:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    and-int/2addr v1, v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lhb/k;->b:Lra/f;

    .line 18
    .line 19
    iget v2, p1, Lpa/s0;->f:I

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, p1, v3}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v4, v0, Lhb/k;->d:Lra/g;

    .line 30
    .line 31
    iget v5, p1, Lpa/s0;->c:I

    .line 32
    .line 33
    and-int/lit8 v6, v5, 0x4

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    if-ne v6, v7, :cond_0

    .line 37
    .line 38
    iget-object v4, p1, Lpa/s0;->g:Lpa/s0;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 v6, 0x8

    .line 42
    .line 43
    and-int/2addr v5, v6

    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    iget v5, p1, Lpa/s0;->h:I

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Lra/g;->a(I)Lpa/s0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v4, 0x0

    .line 54
    :goto_0
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4, v3}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 62
    .line 63
    iget-object v0, v0, Lhb/i;->j:Lhb/n;

    .line 64
    .line 65
    invoke-interface {v0, p1, v1, v2, v3}, Lhb/n;->a(Lpa/s0;Ljava/lang/String;Llb/a0;Llb/a0;)Llb/w;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_2
    invoke-virtual {p0, p1, v3}, Lp/h3;->i(Lpa/s0;Z)Llb/a0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lp/h3;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lp/h3;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lp/h3;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lp/h3;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, ". Child of "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lp/h3;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
