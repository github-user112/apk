.class public final Lq3/o;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw1/n;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public o:Landroid/view/View;

.field public p:Landroid/view/ViewTreeObserver;

.field public final q:Lq3/n;

.field public final r:Lq3/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq3/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lq3/n;-><init>(Lq3/o;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lq3/o;->q:Lq3/n;

    .line 11
    .line 12
    new-instance v0, Lq3/n;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lq3/n;-><init>(Lq3/o;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lq3/o;->r:Lq3/n;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final A0()Lw1/s;
    .locals 10

    .line 1
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 2
    .line 3
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "visitLocalDescendants called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lr1/o;->a:Lr1/o;

    .line 13
    .line 14
    iget v1, v0, Lr1/o;->d:I

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0x400

    .line 17
    .line 18
    if-eqz v1, :cond_a

    .line 19
    .line 20
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_a

    .line 25
    .line 26
    iget v3, v0, Lr1/o;->c:I

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0x400

    .line 29
    .line 30
    if-eqz v3, :cond_9

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v4, v0

    .line 34
    move-object v5, v3

    .line 35
    :goto_1
    if-eqz v4, :cond_9

    .line 36
    .line 37
    instance-of v6, v4, Lw1/s;

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    check-cast v4, Lw1/s;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    return-object v4

    .line 47
    :cond_1
    const/4 v2, 0x1

    .line 48
    goto :goto_4

    .line 49
    :cond_2
    iget v6, v4, Lr1/o;->c:I

    .line 50
    .line 51
    and-int/lit16 v6, v6, 0x400

    .line 52
    .line 53
    if-eqz v6, :cond_8

    .line 54
    .line 55
    instance-of v6, v4, Lq2/m;

    .line 56
    .line 57
    if-eqz v6, :cond_8

    .line 58
    .line 59
    move-object v6, v4

    .line 60
    check-cast v6, Lq2/m;

    .line 61
    .line 62
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    :goto_2
    if-eqz v6, :cond_7

    .line 66
    .line 67
    iget v9, v6, Lr1/o;->c:I

    .line 68
    .line 69
    and-int/lit16 v9, v9, 0x400

    .line 70
    .line 71
    if-eqz v9, :cond_6

    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    if-ne v8, v7, :cond_3

    .line 76
    .line 77
    move-object v4, v6

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    if-nez v5, :cond_4

    .line 80
    .line 81
    new-instance v5, Lh1/e;

    .line 82
    .line 83
    const/16 v9, 0x10

    .line 84
    .line 85
    new-array v9, v9, [Lr1/o;

    .line 86
    .line 87
    invoke-direct {v5, v9}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    if-eqz v4, :cond_5

    .line 91
    .line 92
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object v4, v3

    .line 96
    :cond_5
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    :goto_3
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    if-ne v8, v7, :cond_8

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_8
    :goto_4
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    goto :goto_1

    .line 110
    :cond_9
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "Could not find focus target of embedded view wrapper"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lq2/h0;->m:Lq2/q1;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-static {p0}, Lq3/j;->c(Lr1/o;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lr2/u;

    .line 19
    .line 20
    invoke-virtual {v1}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    invoke-static {v0, p1}, Lq3/j;->a(Landroid/view/View;Landroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_0
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-static {v0, p2}, Lq3/j;->a(Landroid/view/View;Landroid/view/View;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v3, 0x0

    .line 63
    :goto_1
    if-eqz p1, :cond_3

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iput-object p2, p0, Lq3/o;->o:Landroid/view/View;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    if-eqz v3, :cond_4

    .line 71
    .line 72
    iput-object p2, p0, Lq3/o;->o:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p0}, Lq3/o;->A0()Lw1/s;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lw1/s;->C0()Lw1/r;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lw1/r;->a()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_5

    .line 87
    .line 88
    invoke-static {p1}, Lw1/f;->v(Lw1/s;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    const/4 p2, 0x0

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iput-object p2, p0, Lq3/o;->o:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {p0}, Lq3/o;->A0()Lw1/s;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lw1/s;->C0()Lw1/r;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lw1/r;->b()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    const/16 p1, 0x8

    .line 112
    .line 113
    check-cast v1, Lw1/j;

    .line 114
    .line 115
    invoke-virtual {v1, p1, v4, v4}, Lw1/j;->b(IZZ)Z

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_2
    return-void

    .line 119
    :cond_6
    iput-object p2, p0, Lq3/o;->o:Landroid/view/View;

    .line 120
    .line 121
    return-void
.end method

.method public final q0()V
    .locals 1

    .line 1
    invoke-static {p0}, Lq2/f;->x(Lq2/l;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lq3/o;->p:Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final s(Lw1/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lw1/k;->c(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lq3/o;->q:Lq3/n;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lw1/k;->b(Lq3/n;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq3/o;->r:Lq3/n;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lw1/k;->d(Lq3/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/o;->p:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lq3/o;->p:Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    invoke-static {p0}, Lq2/f;->x(Lq2/l;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lq3/o;->o:Landroid/view/View;

    .line 29
    .line 30
    return-void
.end method
