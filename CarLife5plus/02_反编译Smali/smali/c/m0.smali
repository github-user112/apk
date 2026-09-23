.class public final Lc/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ls8/k;

.field public c:Lc/n0;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc/m0;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Ls8/k;

    .line 7
    .line 8
    invoke-direct {p1}, Ls8/k;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lc/m0;->b:Ls8/k;

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v0, 0x21

    .line 16
    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Lc/f0;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p1, p0, v0}, Lc/f0;-><init>(Lc/m0;I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lc/f0;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, Lc/f0;-><init>(Lc/m0;I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lc/g0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lc/g0;-><init>(Lc/m0;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lc/g0;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, p0, v3}, Lc/g0;-><init>(Lc/m0;I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lc/i0;

    .line 48
    .line 49
    invoke-direct {v3, p1, v0, v1, v2}, Lc/i0;-><init>(Lc/f0;Lc/f0;Lc/g0;Lc/g0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lc/g0;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-direct {p1, p0, v0}, Lc/g0;-><init>(Lc/m0;I)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lc/h0;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {v3, v0, p1}, Lc/h0;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iput-object v3, p0, Lc/m0;->d:Landroid/window/OnBackInvokedCallback;

    .line 66
    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Lc/n0;)V
    .locals 10

    .line 1
    const-string v0, "onBackPressedCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 11
    .line 12
    sget-object v1, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lc/j0;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lc/j0;-><init>(Lc/m0;Landroidx/lifecycle/v;Lc/n0;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p2, Lc/n0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lc/m0;->e()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lc/l0;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const-class v4, Lc/m0;

    .line 36
    .line 37
    const-string v5, "updateEnabledCallbacks"

    .line 38
    .line 39
    const-string v6, "updateEnabledCallbacks()V"

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v3, p0

    .line 43
    invoke-direct/range {v1 .. v9}, Lc/l0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p2, Lc/n0;->c:Lg9/j;

    .line 47
    .line 48
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/m0;->c:Lc/n0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lc/m0;->b:Ls8/k;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lc/n0;

    .line 28
    .line 29
    iget-boolean v3, v3, Lc/n0;->a:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_0
    check-cast v2, Lc/n0;

    .line 36
    .line 37
    :cond_2
    iput-object v1, p0, Lc/m0;->c:Lc/n0;

    .line 38
    .line 39
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/m0;->c:Lc/n0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lc/m0;->b:Ls8/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls8/k;->b()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lc/n0;

    .line 28
    .line 29
    iget-boolean v3, v3, Lc/n0;->a:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_0
    move-object v0, v2

    .line 36
    check-cast v0, Lc/n0;

    .line 37
    .line 38
    :cond_2
    iput-object v1, p0, Lc/m0;->c:Lc/n0;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget v1, v0, Lc/n0;->d:I

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lc/n0;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lp4/x;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lp4/x;->w(Z)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lp4/x;->h:Lc/n0;

    .line 56
    .line 57
    iget-boolean v1, v1, Lc/n0;->a:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lp4/x;->K()Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, v0, Lp4/x;->g:Lc/m0;

    .line 66
    .line 67
    invoke-virtual {v0}, Lc/m0;->c()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_0
    iget-object v1, v0, Lc/n0;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lr3/a;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lr3/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lc/m0;->a:Ljava/lang/Runnable;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/m0;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lc/m0;->d:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean v2, p0, Lc/m0;->f:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v1}, La4/a;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lc/m0;->f:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-boolean p1, p0, Lc/m0;->f:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {v0, v1}, La4/a;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lc/m0;->f:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/m0;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lc/m0;->b:Ls8/k;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ls8/k;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lc/n0;

    .line 30
    .line 31
    iget-boolean v3, v3, Lc/n0;->a:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lc/m0;->g:Z

    .line 37
    .line 38
    if-eq v1, v0, :cond_3

    .line 39
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x21

    .line 43
    .line 44
    if-lt v0, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lc/m0;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method
