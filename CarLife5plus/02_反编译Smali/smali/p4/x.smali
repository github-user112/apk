.class public final Lp4/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public A:La2/b;

.field public B:La2/b;

.field public C:Ljava/util/ArrayDeque;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Lp4/z;

.field public final M:Lcom/tencent/bugly/proguard/c0;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lba/a;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lp4/q;

.field public g:Lc/m0;

.field public final h:Lc/n0;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Landroid/support/v4/media/session/t;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Lp4/r;

.field public final o:Lp4/r;

.field public final p:Lp4/r;

.field public final q:Lp4/r;

.field public final r:Lp4/t;

.field public s:I

.field public t:Lp4/m;

.field public u:Lp4/o;

.field public v:Lp4/k;

.field public w:Lp4/k;

.field public final x:Lp4/u;

.field public final y:Ln6/a;

.field public z:La2/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lba/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lba/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lp4/x;->c:Lba/a;

    .line 17
    .line 18
    new-instance v0, Lp4/q;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lp4/q;-><init>(Lp4/x;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lp4/x;->f:Lp4/q;

    .line 24
    .line 25
    new-instance v0, Lc/n0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lc/n0;-><init>(Lp4/x;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lp4/x;->h:Lc/n0;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lp4/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lp4/x;->j:Ljava/util/Map;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lp4/x;->k:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/support/v4/media/session/t;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/t;-><init>(Lp4/x;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 75
    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lp4/x;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    new-instance v0, Lp4/r;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-direct {v0, p0, v1}, Lp4/r;-><init>(Lp4/x;I)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lp4/x;->n:Lp4/r;

    .line 90
    .line 91
    new-instance v0, Lp4/r;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {v0, p0, v1}, Lp4/r;-><init>(Lp4/x;I)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lp4/x;->o:Lp4/r;

    .line 98
    .line 99
    new-instance v0, Lp4/r;

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-direct {v0, p0, v1}, Lp4/r;-><init>(Lp4/x;I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lp4/x;->p:Lp4/r;

    .line 106
    .line 107
    new-instance v0, Lp4/r;

    .line 108
    .line 109
    const/4 v1, 0x3

    .line 110
    invoke-direct {v0, p0, v1}, Lp4/r;-><init>(Lp4/x;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lp4/x;->q:Lp4/r;

    .line 114
    .line 115
    new-instance v0, Lp4/t;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lp4/t;-><init>(Lp4/x;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lp4/x;->r:Lp4/t;

    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lp4/x;->s:I

    .line 124
    .line 125
    new-instance v0, Lp4/u;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lp4/u;-><init>(Lp4/x;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lp4/x;->x:Lp4/u;

    .line 131
    .line 132
    new-instance v0, Ln6/a;

    .line 133
    .line 134
    const/4 v1, 0x5

    .line 135
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lp4/x;->y:Ln6/a;

    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayDeque;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lp4/x;->C:Ljava/util/ArrayDeque;

    .line 146
    .line 147
    new-instance v0, Lcom/tencent/bugly/proguard/c0;

    .line 148
    .line 149
    const/4 v1, 0x7

    .line 150
    invoke-direct {v0, v1, p0}, Lcom/tencent/bugly/proguard/c0;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lp4/x;->M:Lcom/tencent/bugly/proguard/c0;

    .line 154
    .line 155
    return-void
.end method

.method public static D(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static E(Lp4/k;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lp4/k;->t:Lp4/x;

    .line 5
    .line 6
    iget-object p0, p0, Lp4/x;->c:Lba/a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lba/a;->w()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lp4/k;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Lp4/x;->E(Lp4/k;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    return v0
.end method

.method public static G(Lp4/k;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lp4/k;->C:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lp4/k;->r:Lp4/x;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lp4/k;->u:Lp4/k;

    .line 13
    .line 14
    invoke-static {p0}, Lp4/x;->G(Lp4/k;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static H(Lp4/k;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lp4/k;->r:Lp4/x;

    .line 5
    .line 6
    iget-object v1, v0, Lp4/x;->w:Lp4/k;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, v0, Lp4/x;->v:Lp4/k;

    .line 15
    .line 16
    invoke-static {p0}, Lp4/x;->H(Lp4/k;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static U(Lp4/k;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lp4/k;->y:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lp4/k;->y:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Lp4/k;->I:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Lp4/k;->I:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A()Lp4/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/x;->v:Lp4/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lp4/k;->r:Lp4/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp4/x;->A()Lp4/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lp4/x;->x:Lp4/u;

    .line 13
    .line 14
    return-object v0
.end method

.method public final B()Ln6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/x;->v:Lp4/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lp4/k;->r:Lp4/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp4/x;->B()Ln6/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lp4/x;->y:Ln6/a;

    .line 13
    .line 14
    return-object v0
.end method

.method public final C(Lp4/k;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Lp4/k;->y:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Lp4/k;->y:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Lp4/k;->I:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Lp4/k;->I:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lp4/x;->T(Lp4/k;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/x;->v:Lp4/k;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lp4/k;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lp4/x;->v:Lp4/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lp4/x;->F()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final I(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, Lp4/x;->s:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    iput p1, p0, Lp4/x;->s:I

    .line 25
    .line 26
    iget-object p1, p0, Lp4/x;->c:Lba/a;

    .line 27
    .line 28
    iget-object p2, p1, Lba/a;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Ljava/util/HashMap;

    .line 31
    .line 32
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lp4/k;

    .line 51
    .line 52
    iget-object v1, v1, Lp4/k;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lp4/c0;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lp4/c0;->j()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lp4/c0;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0}, Lp4/c0;->j()V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lp4/c0;->c:Lp4/k;

    .line 92
    .line 93
    iget-boolean v2, v1, Lp4/k;->l:Z

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Lp4/k;->n()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lba/a;->D(Lp4/c0;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {p0}, Lp4/x;->V()V

    .line 108
    .line 109
    .line 110
    iget-boolean p1, p0, Lp4/x;->D:Z

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget p2, p0, Lp4/x;->s:I

    .line 119
    .line 120
    const/4 v0, 0x7

    .line 121
    if-ne p2, v0, :cond_7

    .line 122
    .line 123
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 124
    .line 125
    invoke-virtual {p1}, Lj/j;->invalidateOptionsMenu()V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lp4/x;->D:Z

    .line 130
    .line 131
    :cond_7
    :goto_3
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lp4/x;->E:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lp4/x;->F:Z

    .line 10
    .line 11
    iget-object v1, p0, Lp4/x;->L:Lp4/z;

    .line 12
    .line 13
    iput-boolean v0, v1, Lp4/z;->g:Z

    .line 14
    .line 15
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lp4/k;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 40
    .line 41
    invoke-virtual {v1}, Lp4/x;->J()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final K()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lp4/x;->w(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Lp4/x;->v(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lp4/x;->w:Lp4/k;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lp4/k;->h()Lp4/x;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lp4/x;->K()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v2, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v4, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sub-int/2addr v4, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    const/4 v4, -0x1

    .line 48
    :goto_1
    if-gez v4, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    iget-object v5, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sub-int/2addr v5, v1

    .line 59
    :goto_2
    if-lt v5, v4, :cond_4

    .line 60
    .line 61
    iget-object v6, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lp4/a;

    .line 68
    .line 69
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v5, v5, -0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const/4 v2, 0x1

    .line 81
    :goto_3
    if-eqz v2, :cond_5

    .line 82
    .line 83
    iput-boolean v1, p0, Lp4/x;->b:Z

    .line 84
    .line 85
    :try_start_0
    iget-object v1, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v3, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p0, v1, v3}, Lp4/x;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lp4/x;->d()V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    invoke-virtual {p0}, Lp4/x;->d()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lp4/x;->X()V

    .line 102
    .line 103
    .line 104
    iget-boolean v1, p0, Lp4/x;->H:Z

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    iput-boolean v0, p0, Lp4/x;->H:Z

    .line 109
    .line 110
    invoke-virtual {p0}, Lp4/x;->V()V

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 114
    .line 115
    iget-object v0, v0, Lba/a;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    return v2
.end method

.method public final L(Lp4/k;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, Lp4/k;->q:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lp4/k;->n()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-boolean v1, p1, Lp4/k;->z:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 50
    .line 51
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p1, Lp4/k;->k:Z

    .line 66
    .line 67
    invoke-static {p1}, Lp4/x;->E(Lp4/k;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iput-boolean v1, p0, Lp4/x;->D:Z

    .line 75
    .line 76
    :cond_3
    iput-boolean v1, p1, Lp4/k;->l:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lp4/x;->T(Lp4/k;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method

.method public final M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lp4/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Lp4/a;->o:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Lp4/x;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lp4/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Lp4/a;->o:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lp4/x;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Lp4/x;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final N(Landroid/os/Parcelable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    const-string v4, "result_"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v5, v0, Lp4/x;->t:Lp4/m;

    .line 42
    .line 43
    iget-object v5, v5, Lp4/m;->c:Lj/j;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x7

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v5, v0, Lp4/x;->k:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const-string v5, "state"

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    const-string v6, "fragment_"

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    iget-object v6, v0, Lp4/x;->t:Lp4/m;

    .line 105
    .line 106
    iget-object v6, v6, Lp4/m;->c:Lj/j;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lp4/b0;

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v3, v0, Lp4/x;->c:Lba/a;

    .line 126
    .line 127
    iget-object v4, v3, Lba/a;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Ljava/util/HashMap;

    .line 130
    .line 131
    iget-object v6, v3, Lba/a;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v6, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_4

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Lp4/b0;

    .line 153
    .line 154
    iget-object v8, v7, Lp4/b0;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lp4/y;

    .line 165
    .line 166
    if-nez v1, :cond_5

    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v1, Lp4/y;->a:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    iget-object v5, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 183
    .line 184
    const-string v7, "): "

    .line 185
    .line 186
    const/4 v8, 0x2

    .line 187
    const-string v9, "FragmentManager"

    .line 188
    .line 189
    if-eqz v4, :cond_a

    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Ljava/lang/String;

    .line 196
    .line 197
    iget-object v10, v3, Lba/a;->d:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v10, Ljava/util/HashMap;

    .line 200
    .line 201
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    move-object v15, v4

    .line 206
    check-cast v15, Lp4/b0;

    .line 207
    .line 208
    if-eqz v15, :cond_6

    .line 209
    .line 210
    iget-object v4, v0, Lp4/x;->L:Lp4/z;

    .line 211
    .line 212
    iget-object v10, v15, Lp4/b0;->b:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v4, v4, Lp4/z;->b:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lp4/k;

    .line 221
    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    invoke-static {v8}, Lp4/x;->D(I)Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_7

    .line 229
    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v11, "restoreSaveState: re-attaching retained "

    .line 233
    .line 234
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :cond_7
    new-instance v10, Lp4/c0;

    .line 248
    .line 249
    invoke-direct {v10, v5, v3, v4, v15}, Lp4/c0;-><init>(Landroid/support/v4/media/session/t;Lba/a;Lp4/k;Lp4/b0;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    new-instance v10, Lp4/c0;

    .line 254
    .line 255
    iget-object v4, v0, Lp4/x;->t:Lp4/m;

    .line 256
    .line 257
    iget-object v4, v4, Lp4/m;->c:Lj/j;

    .line 258
    .line 259
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    invoke-virtual {v0}, Lp4/x;->A()Lp4/u;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    iget-object v11, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 268
    .line 269
    iget-object v12, v0, Lp4/x;->c:Lba/a;

    .line 270
    .line 271
    invoke-direct/range {v10 .. v15}, Lp4/c0;-><init>(Landroid/support/v4/media/session/t;Lba/a;Ljava/lang/ClassLoader;Lp4/u;Lp4/b0;)V

    .line 272
    .line 273
    .line 274
    :goto_4
    iget-object v4, v10, Lp4/c0;->c:Lp4/k;

    .line 275
    .line 276
    iput-object v0, v4, Lp4/k;->r:Lp4/x;

    .line 277
    .line 278
    invoke-static {v8}, Lp4/x;->D(I)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_9

    .line 283
    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v8, "restoreSaveState: active ("

    .line 287
    .line 288
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v8, v4, Lp4/k;->e:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :cond_9
    iget-object v4, v0, Lp4/x;->t:Lp4/m;

    .line 310
    .line 311
    iget-object v4, v4, Lp4/m;->c:Lj/j;

    .line 312
    .line 313
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v10, v4}, Lp4/c0;->l(Ljava/lang/ClassLoader;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v10}, Lba/a;->C(Lp4/c0;)V

    .line 321
    .line 322
    .line 323
    iget v4, v0, Lp4/x;->s:I

    .line 324
    .line 325
    iput v4, v10, Lp4/c0;->e:I

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :cond_a
    iget-object v2, v0, Lp4/x;->L:Lp4/z;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v4, Ljava/util/ArrayList;

    .line 335
    .line 336
    iget-object v2, v2, Lp4/z;->b:Ljava/util/HashMap;

    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    const/4 v10, 0x1

    .line 354
    if-eqz v4, :cond_d

    .line 355
    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    check-cast v4, Lp4/k;

    .line 361
    .line 362
    iget-object v11, v4, Lp4/k;->e:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    if-eqz v11, :cond_b

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_b
    invoke-static {v8}, Lp4/x;->D(I)Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-eqz v11, :cond_c

    .line 376
    .line 377
    new-instance v11, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v12, "Discarding retained Fragment "

    .line 380
    .line 381
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v12, " that was not found in the set of active Fragments "

    .line 388
    .line 389
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v12, v1, Lp4/y;->a:Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v11

    .line 401
    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :cond_c
    iget-object v11, v0, Lp4/x;->L:Lp4/z;

    .line 405
    .line 406
    invoke-virtual {v11, v4}, Lp4/z;->f(Lp4/k;)V

    .line 407
    .line 408
    .line 409
    iput-object v0, v4, Lp4/k;->r:Lp4/x;

    .line 410
    .line 411
    new-instance v11, Lp4/c0;

    .line 412
    .line 413
    invoke-direct {v11, v5, v3, v4}, Lp4/c0;-><init>(Landroid/support/v4/media/session/t;Lba/a;Lp4/k;)V

    .line 414
    .line 415
    .line 416
    iput v10, v11, Lp4/c0;->e:I

    .line 417
    .line 418
    invoke-virtual {v11}, Lp4/c0;->j()V

    .line 419
    .line 420
    .line 421
    iput-boolean v10, v4, Lp4/k;->l:Z

    .line 422
    .line 423
    invoke-virtual {v11}, Lp4/c0;->j()V

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_d
    iget-object v2, v1, Lp4/y;->b:Ljava/util/ArrayList;

    .line 428
    .line 429
    iget-object v4, v3, Lba/a;->b:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v4, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 434
    .line 435
    .line 436
    if-eqz v2, :cond_10

    .line 437
    .line 438
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_10

    .line 447
    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v3, v4}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    if-eqz v5, :cond_f

    .line 459
    .line 460
    invoke-static {v8}, Lp4/x;->D(I)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_e

    .line 465
    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v11, "restoreSaveState: added ("

    .line 469
    .line 470
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    :cond_e
    invoke-virtual {v3, v5}, Lba/a;->q(Lp4/k;)V

    .line 490
    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 494
    .line 495
    const-string v2, "No instantiated fragment for ("

    .line 496
    .line 497
    const-string v3, ")"

    .line 498
    .line 499
    invoke-static {v2, v4, v3}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw v1

    .line 507
    :cond_10
    iget-object v2, v1, Lp4/y;->c:[Lp4/b;

    .line 508
    .line 509
    if-eqz v2, :cond_18

    .line 510
    .line 511
    new-instance v2, Ljava/util/ArrayList;

    .line 512
    .line 513
    iget-object v5, v1, Lp4/y;->c:[Lp4/b;

    .line 514
    .line 515
    array-length v5, v5

    .line 516
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 517
    .line 518
    .line 519
    iput-object v2, v0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 520
    .line 521
    const/4 v2, 0x0

    .line 522
    :goto_7
    iget-object v5, v1, Lp4/y;->c:[Lp4/b;

    .line 523
    .line 524
    array-length v6, v5

    .line 525
    if-ge v2, v6, :cond_17

    .line 526
    .line 527
    aget-object v5, v5, v2

    .line 528
    .line 529
    iget-object v6, v5, Lp4/b;->b:Ljava/util/ArrayList;

    .line 530
    .line 531
    new-instance v11, Lp4/a;

    .line 532
    .line 533
    invoke-direct {v11, v0}, Lp4/a;-><init>(Lp4/x;)V

    .line 534
    .line 535
    .line 536
    iget-object v12, v5, Lp4/b;->a:[I

    .line 537
    .line 538
    const/4 v13, 0x0

    .line 539
    const/4 v14, 0x0

    .line 540
    :goto_8
    array-length v15, v12

    .line 541
    if-ge v13, v15, :cond_13

    .line 542
    .line 543
    new-instance v15, Lp4/d0;

    .line 544
    .line 545
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 546
    .line 547
    .line 548
    add-int/lit8 v16, v13, 0x1

    .line 549
    .line 550
    const/16 p1, 0x2

    .line 551
    .line 552
    aget v8, v12, v13

    .line 553
    .line 554
    iput v8, v15, Lp4/d0;->a:I

    .line 555
    .line 556
    invoke-static/range {p1 .. p1}, Lp4/x;->D(I)Z

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    if-eqz v8, :cond_11

    .line 561
    .line 562
    new-instance v8, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    const-string v4, "Instantiate "

    .line 565
    .line 566
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v4, " op #"

    .line 573
    .line 574
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v4, " base fragment #"

    .line 581
    .line 582
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    aget v4, v12, v16

    .line 586
    .line 587
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    :cond_11
    invoke-static {}, Landroidx/lifecycle/o;->values()[Landroidx/lifecycle/o;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    iget-object v8, v5, Lp4/b;->c:[I

    .line 602
    .line 603
    aget v8, v8, v14

    .line 604
    .line 605
    aget-object v4, v4, v8

    .line 606
    .line 607
    iput-object v4, v15, Lp4/d0;->h:Landroidx/lifecycle/o;

    .line 608
    .line 609
    invoke-static {}, Landroidx/lifecycle/o;->values()[Landroidx/lifecycle/o;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    iget-object v8, v5, Lp4/b;->d:[I

    .line 614
    .line 615
    aget v8, v8, v14

    .line 616
    .line 617
    aget-object v4, v4, v8

    .line 618
    .line 619
    iput-object v4, v15, Lp4/d0;->i:Landroidx/lifecycle/o;

    .line 620
    .line 621
    add-int/lit8 v4, v13, 0x2

    .line 622
    .line 623
    aget v8, v12, v16

    .line 624
    .line 625
    if-eqz v8, :cond_12

    .line 626
    .line 627
    const/4 v8, 0x1

    .line 628
    goto :goto_9

    .line 629
    :cond_12
    const/4 v8, 0x0

    .line 630
    :goto_9
    iput-boolean v8, v15, Lp4/d0;->c:Z

    .line 631
    .line 632
    add-int/lit8 v8, v13, 0x3

    .line 633
    .line 634
    aget v4, v12, v4

    .line 635
    .line 636
    iput v4, v15, Lp4/d0;->d:I

    .line 637
    .line 638
    add-int/lit8 v16, v13, 0x4

    .line 639
    .line 640
    aget v8, v12, v8

    .line 641
    .line 642
    iput v8, v15, Lp4/d0;->e:I

    .line 643
    .line 644
    add-int/lit8 v17, v13, 0x5

    .line 645
    .line 646
    aget v10, v12, v16

    .line 647
    .line 648
    iput v10, v15, Lp4/d0;->f:I

    .line 649
    .line 650
    add-int/lit8 v13, v13, 0x6

    .line 651
    .line 652
    move-object/from16 v16, v12

    .line 653
    .line 654
    aget v12, v16, v17

    .line 655
    .line 656
    iput v12, v15, Lp4/d0;->g:I

    .line 657
    .line 658
    iput v4, v11, Lp4/a;->b:I

    .line 659
    .line 660
    iput v8, v11, Lp4/a;->c:I

    .line 661
    .line 662
    iput v10, v11, Lp4/a;->d:I

    .line 663
    .line 664
    iput v12, v11, Lp4/a;->e:I

    .line 665
    .line 666
    invoke-virtual {v11, v15}, Lp4/a;->a(Lp4/d0;)V

    .line 667
    .line 668
    .line 669
    add-int/lit8 v14, v14, 0x1

    .line 670
    .line 671
    move-object/from16 v12, v16

    .line 672
    .line 673
    const/4 v8, 0x2

    .line 674
    const/4 v10, 0x1

    .line 675
    goto/16 :goto_8

    .line 676
    .line 677
    :cond_13
    const/16 p1, 0x2

    .line 678
    .line 679
    iget v4, v5, Lp4/b;->e:I

    .line 680
    .line 681
    iput v4, v11, Lp4/a;->f:I

    .line 682
    .line 683
    iget-object v4, v5, Lp4/b;->f:Ljava/lang/String;

    .line 684
    .line 685
    iput-object v4, v11, Lp4/a;->h:Ljava/lang/String;

    .line 686
    .line 687
    const/4 v4, 0x1

    .line 688
    iput-boolean v4, v11, Lp4/a;->g:Z

    .line 689
    .line 690
    iget v4, v5, Lp4/b;->h:I

    .line 691
    .line 692
    iput v4, v11, Lp4/a;->i:I

    .line 693
    .line 694
    iget-object v4, v5, Lp4/b;->i:Ljava/lang/CharSequence;

    .line 695
    .line 696
    iput-object v4, v11, Lp4/a;->j:Ljava/lang/CharSequence;

    .line 697
    .line 698
    iget v4, v5, Lp4/b;->j:I

    .line 699
    .line 700
    iput v4, v11, Lp4/a;->k:I

    .line 701
    .line 702
    iget-object v4, v5, Lp4/b;->k:Ljava/lang/CharSequence;

    .line 703
    .line 704
    iput-object v4, v11, Lp4/a;->l:Ljava/lang/CharSequence;

    .line 705
    .line 706
    iget-object v4, v5, Lp4/b;->l:Ljava/util/ArrayList;

    .line 707
    .line 708
    iput-object v4, v11, Lp4/a;->m:Ljava/util/ArrayList;

    .line 709
    .line 710
    iget-object v4, v5, Lp4/b;->m:Ljava/util/ArrayList;

    .line 711
    .line 712
    iput-object v4, v11, Lp4/a;->n:Ljava/util/ArrayList;

    .line 713
    .line 714
    iget-boolean v4, v5, Lp4/b;->n:Z

    .line 715
    .line 716
    iput-boolean v4, v11, Lp4/a;->o:Z

    .line 717
    .line 718
    iget v4, v5, Lp4/b;->g:I

    .line 719
    .line 720
    iput v4, v11, Lp4/a;->r:I

    .line 721
    .line 722
    const/4 v4, 0x0

    .line 723
    :goto_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    if-ge v4, v5, :cond_15

    .line 728
    .line 729
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    check-cast v5, Ljava/lang/String;

    .line 734
    .line 735
    if-eqz v5, :cond_14

    .line 736
    .line 737
    iget-object v8, v11, Lp4/a;->a:Ljava/util/ArrayList;

    .line 738
    .line 739
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v8

    .line 743
    check-cast v8, Lp4/d0;

    .line 744
    .line 745
    invoke-virtual {v3, v5}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    iput-object v5, v8, Lp4/d0;->b:Lp4/k;

    .line 750
    .line 751
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 752
    .line 753
    goto :goto_a

    .line 754
    :cond_15
    const/4 v4, 0x1

    .line 755
    invoke-virtual {v11, v4}, Lp4/a;->b(I)V

    .line 756
    .line 757
    .line 758
    invoke-static/range {p1 .. p1}, Lp4/x;->D(I)Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_16

    .line 763
    .line 764
    const-string v5, "restoreAllState: back stack #"

    .line 765
    .line 766
    const-string v6, " (index "

    .line 767
    .line 768
    invoke-static {v5, v6, v2}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    iget v6, v11, Lp4/a;->r:I

    .line 773
    .line 774
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .line 789
    .line 790
    new-instance v5, Lp4/f0;

    .line 791
    .line 792
    invoke-direct {v5}, Lp4/f0;-><init>()V

    .line 793
    .line 794
    .line 795
    new-instance v6, Ljava/io/PrintWriter;

    .line 796
    .line 797
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 798
    .line 799
    .line 800
    const-string v5, "  "

    .line 801
    .line 802
    const/4 v8, 0x0

    .line 803
    invoke-virtual {v11, v5, v6, v8}, Lp4/a;->e(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 807
    .line 808
    .line 809
    goto :goto_b

    .line 810
    :cond_16
    const/4 v8, 0x0

    .line 811
    :goto_b
    iget-object v5, v0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 812
    .line 813
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    add-int/lit8 v2, v2, 0x1

    .line 817
    .line 818
    const/4 v8, 0x2

    .line 819
    const/4 v10, 0x1

    .line 820
    goto/16 :goto_7

    .line 821
    .line 822
    :cond_17
    const/4 v8, 0x0

    .line 823
    goto :goto_c

    .line 824
    :cond_18
    const/4 v8, 0x0

    .line 825
    const/4 v2, 0x0

    .line 826
    iput-object v2, v0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 827
    .line 828
    :goto_c
    iget-object v2, v0, Lp4/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 829
    .line 830
    iget v4, v1, Lp4/y;->d:I

    .line 831
    .line 832
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 833
    .line 834
    .line 835
    iget-object v2, v1, Lp4/y;->e:Ljava/lang/String;

    .line 836
    .line 837
    if-eqz v2, :cond_19

    .line 838
    .line 839
    invoke-virtual {v3, v2}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    iput-object v2, v0, Lp4/x;->w:Lp4/k;

    .line 844
    .line 845
    invoke-virtual {v0, v2}, Lp4/x;->q(Lp4/k;)V

    .line 846
    .line 847
    .line 848
    :cond_19
    iget-object v2, v1, Lp4/y;->f:Ljava/util/ArrayList;

    .line 849
    .line 850
    if-eqz v2, :cond_1a

    .line 851
    .line 852
    const/4 v4, 0x0

    .line 853
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-ge v4, v3, :cond_1a

    .line 858
    .line 859
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    check-cast v3, Ljava/lang/String;

    .line 864
    .line 865
    iget-object v5, v1, Lp4/y;->g:Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v5

    .line 871
    check-cast v5, Lp4/c;

    .line 872
    .line 873
    iget-object v6, v0, Lp4/x;->j:Ljava/util/Map;

    .line 874
    .line 875
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    add-int/lit8 v4, v4, 0x1

    .line 879
    .line 880
    goto :goto_d

    .line 881
    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    .line 882
    .line 883
    iget-object v1, v1, Lp4/y;->h:Ljava/util/ArrayList;

    .line 884
    .line 885
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 886
    .line 887
    .line 888
    iput-object v2, v0, Lp4/x;->C:Ljava/util/ArrayDeque;

    .line 889
    .line 890
    return-void
.end method

.method public final O()Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lp4/x;->e()Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lp4/g;

    .line 27
    .line 28
    iget-boolean v5, v2, Lp4/g;->e:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-static {v4}, Lp4/x;->D(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const-string v4, "FragmentManager"

    .line 39
    .line 40
    const-string v5, "SpecialEffectsController: Forcing postponed operations"

    .line 41
    .line 42
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-boolean v3, v2, Lp4/g;->e:Z

    .line 46
    .line 47
    invoke-virtual {v2}, Lp4/g;->b()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lp4/x;->e()Ljava/util/HashSet;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lp4/g;

    .line 70
    .line 71
    invoke-virtual {v2}, Lp4/g;->c()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Lp4/x;->w(Z)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lp4/x;->E:Z

    .line 80
    .line 81
    iget-object v2, p0, Lp4/x;->L:Lp4/z;

    .line 82
    .line 83
    iput-boolean v1, v2, Lp4/z;->g:Z

    .line 84
    .line 85
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v1, v1, Lba/a;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x0

    .line 116
    if-eqz v5, :cond_f

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lp4/c0;

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    iget-object v7, v5, Lp4/c0;->c:Lp4/k;

    .line 127
    .line 128
    new-instance v8, Lp4/b0;

    .line 129
    .line 130
    invoke-direct {v8, v7}, Lp4/b0;-><init>(Lp4/k;)V

    .line 131
    .line 132
    .line 133
    iget v9, v7, Lp4/k;->a:I

    .line 134
    .line 135
    const/4 v10, -0x1

    .line 136
    if-le v9, v10, :cond_d

    .line 137
    .line 138
    iget-object v9, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 139
    .line 140
    if-nez v9, :cond_d

    .line 141
    .line 142
    new-instance v9, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v10, v7, Lp4/k;->O:La5/f;

    .line 148
    .line 149
    invoke-virtual {v10, v9}, La5/f;->c(Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    iget-object v10, v7, Lp4/k;->t:Lp4/x;

    .line 153
    .line 154
    invoke-virtual {v10}, Lp4/x;->O()Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    const-string v11, "android:support:fragments"

    .line 159
    .line 160
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    .line 162
    .line 163
    iget-object v10, v5, Lp4/c0;->a:Landroid/support/v4/media/session/t;

    .line 164
    .line 165
    invoke-virtual {v10, v3}, Landroid/support/v4/media/session/t;->V0(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-eqz v10, :cond_5

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move-object v6, v9

    .line 176
    :goto_3
    iget-object v9, v7, Lp4/k;->c:Landroid/util/SparseArray;

    .line 177
    .line 178
    if-eqz v9, :cond_7

    .line 179
    .line 180
    if-nez v6, :cond_6

    .line 181
    .line 182
    new-instance v6, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    :cond_6
    const-string v9, "android:view_state"

    .line 188
    .line 189
    iget-object v10, v7, Lp4/k;->c:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    iget-object v9, v7, Lp4/k;->d:Landroid/os/Bundle;

    .line 195
    .line 196
    if-eqz v9, :cond_9

    .line 197
    .line 198
    if-nez v6, :cond_8

    .line 199
    .line 200
    new-instance v6, Landroid/os/Bundle;

    .line 201
    .line 202
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 203
    .line 204
    .line 205
    :cond_8
    const-string v9, "android:view_registry_state"

    .line 206
    .line 207
    iget-object v10, v7, Lp4/k;->d:Landroid/os/Bundle;

    .line 208
    .line 209
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    :cond_9
    iget-boolean v9, v7, Lp4/k;->G:Z

    .line 213
    .line 214
    if-nez v9, :cond_b

    .line 215
    .line 216
    if-nez v6, :cond_a

    .line 217
    .line 218
    new-instance v6, Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 221
    .line 222
    .line 223
    :cond_a
    const-string v9, "android:user_visible_hint"

    .line 224
    .line 225
    iget-boolean v10, v7, Lp4/k;->G:Z

    .line 226
    .line 227
    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    :cond_b
    iput-object v6, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 231
    .line 232
    iget-object v9, v7, Lp4/k;->h:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v9, :cond_e

    .line 235
    .line 236
    if-nez v6, :cond_c

    .line 237
    .line 238
    new-instance v6, Landroid/os/Bundle;

    .line 239
    .line 240
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v6, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 244
    .line 245
    :cond_c
    iget-object v6, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 246
    .line 247
    const-string v9, "android:target_state"

    .line 248
    .line 249
    iget-object v10, v7, Lp4/k;->h:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget v6, v7, Lp4/k;->i:I

    .line 255
    .line 256
    if-eqz v6, :cond_e

    .line 257
    .line 258
    iget-object v9, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 259
    .line 260
    const-string v10, "android:target_req_state"

    .line 261
    .line 262
    invoke-virtual {v9, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_d
    iget-object v6, v7, Lp4/k;->b:Landroid/os/Bundle;

    .line 267
    .line 268
    iput-object v6, v8, Lp4/b0;->m:Landroid/os/Bundle;

    .line 269
    .line 270
    :cond_e
    :goto_4
    iget-object v5, v5, Lp4/c0;->b:Lba/a;

    .line 271
    .line 272
    iget-object v6, v7, Lp4/k;->e:Ljava/lang/String;

    .line 273
    .line 274
    iget-object v5, v5, Lba/a;->d:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v5, Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    check-cast v5, Lp4/b0;

    .line 283
    .line 284
    iget-object v5, v7, Lp4/k;->e:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    invoke-static {v4}, Lp4/x;->D(I)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_4

    .line 294
    .line 295
    const-string v5, "FragmentManager"

    .line 296
    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v8, "Saved state of "

    .line 300
    .line 301
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v8, ": "

    .line 308
    .line 309
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v7, v7, Lp4/k;->b:Landroid/os/Bundle;

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_f
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    new-instance v5, Ljava/util/ArrayList;

    .line 332
    .line 333
    iget-object v1, v1, Lba/a;->d:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v1, Ljava/util/HashMap;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_10

    .line 349
    .line 350
    invoke-static {v4}, Lp4/x;->D(I)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_19

    .line 355
    .line 356
    const-string v1, "FragmentManager"

    .line 357
    .line 358
    const-string v2, "saveAllState: no fragments!"

    .line 359
    .line 360
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    return-object v0

    .line 364
    :cond_10
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 365
    .line 366
    iget-object v7, v1, Lba/a;->b:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v7, Ljava/util/ArrayList;

    .line 369
    .line 370
    monitor-enter v7

    .line 371
    :try_start_0
    iget-object v8, v1, Lba/a;->b:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v8, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-eqz v8, :cond_11

    .line 380
    .line 381
    monitor-exit v7

    .line 382
    move-object v8, v6

    .line 383
    goto :goto_6

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :cond_11
    new-instance v8, Ljava/util/ArrayList;

    .line 388
    .line 389
    iget-object v9, v1, Lba/a;->b:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v9, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 394
    .line 395
    .line 396
    move-result v9

    .line 397
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    :cond_12
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    if-eqz v9, :cond_13

    .line 413
    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    check-cast v9, Lp4/k;

    .line 419
    .line 420
    iget-object v10, v9, Lp4/k;->e:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    invoke-static {v4}, Lp4/x;->D(I)Z

    .line 426
    .line 427
    .line 428
    move-result v10

    .line 429
    if-eqz v10, :cond_12

    .line 430
    .line 431
    const-string v10, "FragmentManager"

    .line 432
    .line 433
    new-instance v11, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string v12, "saveAllState: adding fragment ("

    .line 439
    .line 440
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget-object v12, v9, Lp4/k;->e:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v12, "): "

    .line 449
    .line 450
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_13
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_6
    iget-object v1, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 466
    .line 467
    if-eqz v1, :cond_15

    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-lez v1, :cond_15

    .line 474
    .line 475
    new-array v7, v1, [Lp4/b;

    .line 476
    .line 477
    :goto_7
    if-ge v3, v1, :cond_16

    .line 478
    .line 479
    new-instance v9, Lp4/b;

    .line 480
    .line 481
    iget-object v10, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    check-cast v10, Lp4/a;

    .line 488
    .line 489
    invoke-direct {v9, v10}, Lp4/b;-><init>(Lp4/a;)V

    .line 490
    .line 491
    .line 492
    aput-object v9, v7, v3

    .line 493
    .line 494
    invoke-static {v4}, Lp4/x;->D(I)Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_14

    .line 499
    .line 500
    const-string v9, "FragmentManager"

    .line 501
    .line 502
    const-string v10, "saveAllState: adding back stack #"

    .line 503
    .line 504
    const-string v11, ": "

    .line 505
    .line 506
    invoke-static {v10, v11, v3}, Lp9/v;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    iget-object v11, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v11

    .line 516
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_15
    move-object v7, v6

    .line 530
    :cond_16
    new-instance v1, Lp4/y;

    .line 531
    .line 532
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 533
    .line 534
    .line 535
    iput-object v6, v1, Lp4/y;->e:Ljava/lang/String;

    .line 536
    .line 537
    new-instance v3, Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .line 541
    .line 542
    iput-object v3, v1, Lp4/y;->f:Ljava/util/ArrayList;

    .line 543
    .line 544
    new-instance v4, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    iput-object v4, v1, Lp4/y;->g:Ljava/util/ArrayList;

    .line 550
    .line 551
    iput-object v2, v1, Lp4/y;->a:Ljava/util/ArrayList;

    .line 552
    .line 553
    iput-object v8, v1, Lp4/y;->b:Ljava/util/ArrayList;

    .line 554
    .line 555
    iput-object v7, v1, Lp4/y;->c:[Lp4/b;

    .line 556
    .line 557
    iget-object v2, p0, Lp4/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    iput v2, v1, Lp4/y;->d:I

    .line 564
    .line 565
    iget-object v2, p0, Lp4/x;->w:Lp4/k;

    .line 566
    .line 567
    if-eqz v2, :cond_17

    .line 568
    .line 569
    iget-object v2, v2, Lp4/k;->e:Ljava/lang/String;

    .line 570
    .line 571
    iput-object v2, v1, Lp4/y;->e:Ljava/lang/String;

    .line 572
    .line 573
    :cond_17
    iget-object v2, p0, Lp4/x;->j:Ljava/util/Map;

    .line 574
    .line 575
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 580
    .line 581
    .line 582
    iget-object v2, p0, Lp4/x;->j:Ljava/util/Map;

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 589
    .line 590
    .line 591
    new-instance v2, Ljava/util/ArrayList;

    .line 592
    .line 593
    iget-object v3, p0, Lp4/x;->C:Ljava/util/ArrayDeque;

    .line 594
    .line 595
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    .line 597
    .line 598
    iput-object v2, v1, Lp4/y;->h:Ljava/util/ArrayList;

    .line 599
    .line 600
    const-string v2, "state"

    .line 601
    .line 602
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 603
    .line 604
    .line 605
    iget-object v1, p0, Lp4/x;->k:Ljava/util/Map;

    .line 606
    .line 607
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_18

    .line 620
    .line 621
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    check-cast v2, Ljava/lang/String;

    .line 626
    .line 627
    const-string v3, "result_"

    .line 628
    .line 629
    invoke-static {v3, v2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    iget-object v4, p0, Lp4/x;->k:Ljava/util/Map;

    .line 634
    .line 635
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    check-cast v2, Landroid/os/Bundle;

    .line 640
    .line 641
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 642
    .line 643
    .line 644
    goto :goto_8

    .line 645
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    if-eqz v2, :cond_19

    .line 654
    .line 655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    check-cast v2, Lp4/b0;

    .line 660
    .line 661
    new-instance v3, Landroid/os/Bundle;

    .line 662
    .line 663
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 664
    .line 665
    .line 666
    const-string v4, "state"

    .line 667
    .line 668
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    .line 670
    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string v5, "fragment_"

    .line 674
    .line 675
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object v2, v2, Lp4/b0;->b:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 688
    .line 689
    .line 690
    goto :goto_9

    .line 691
    :cond_19
    return-object v0

    .line 692
    :goto_a
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    throw v0
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 14
    .line 15
    iget-object v1, v1, Lp4/m;->d:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Lp4/x;->M:Lcom/tencent/bugly/proguard/c0;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 23
    .line 24
    iget-object v1, v1, Lp4/m;->d:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Lp4/x;->M:Lcom/tencent/bugly/proguard/c0;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lp4/x;->X()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final Q(Lp4/k;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lp4/x;->z(Lp4/k;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lp4/p;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lp4/p;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lp4/p;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final R(Lp4/k;Landroidx/lifecycle/o;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lp4/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lp4/k;->s:Lp4/m;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lp4/k;->r:Lp4/x;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, Lp4/k;->L:Landroidx/lifecycle/o;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final S(Lp4/k;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lp4/k;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lp4/k;->s:Lp4/m;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lp4/k;->r:Lp4/x;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lp4/x;->w:Lp4/k;

    .line 55
    .line 56
    iput-object p1, p0, Lp4/x;->w:Lp4/k;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lp4/x;->q(Lp4/k;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lp4/x;->w:Lp4/k;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lp4/x;->q(Lp4/k;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final T(Lp4/k;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lp4/x;->z(Lp4/k;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v1, p1, Lp4/k;->H:Lp4/j;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, Lp4/j;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, Lp4/j;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, v1, Lp4/j;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, Lp4/j;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_7

    .line 38
    .line 39
    const v1, 0x7f0800c6

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lp4/k;

    .line 56
    .line 57
    iget-object p1, p1, Lp4/k;->H:Lp4/j;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v2, p1, Lp4/j;->a:Z

    .line 63
    .line 64
    :goto_4
    iget-object p1, v0, Lp4/k;->H:Lp4/j;

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {v0}, Lp4/k;->c()Lp4/j;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-boolean v2, p1, Lp4/j;->a:Z

    .line 74
    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final V()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lba/a;->v()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lp4/c0;

    .line 22
    .line 23
    iget-object v2, v1, Lp4/c0;->c:Lp4/k;

    .line 24
    .line 25
    iget-boolean v3, v2, Lp4/k;->F:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Lp4/x;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lp4/x;->H:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, Lp4/k;->F:Z

    .line 39
    .line 40
    invoke-virtual {v1}, Lp4/c0;->j()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final W(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Lp4/f0;

    .line 16
    .line 17
    invoke-direct {v0}, Lp4/f0;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Lp4/m;->f:Lj/j;

    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, Lp4/n;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Lp4/x;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
.end method

.method public final X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lp4/x;->h:Lc/n0;

    .line 14
    .line 15
    iput-boolean v2, v1, Lc/n0;->a:Z

    .line 16
    .line 17
    iget-object v1, v1, Lc/n0;->c:Lg9/j;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Lp4/x;->h:Lc/n0;

    .line 30
    .line 31
    iget-object v1, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-lez v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lp4/x;->v:Lp4/k;

    .line 45
    .line 46
    invoke-static {v1}, Lp4/x;->H(Lp4/k;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    :goto_1
    iput-boolean v2, v0, Lc/n0;->a:Z

    .line 55
    .line 56
    iget-object v0, v0, Lc/n0;->c:Lg9/j;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v1
.end method

.method public final a(Lp4/k;)Lp4/c0;
    .locals 3

    .line 1
    iget-object v0, p1, Lp4/k;->K:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Lq4/c;->c(Lp4/k;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "add: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lp4/x;->f(Lp4/k;)Lp4/c0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, Lp4/k;->r:Lp4/x;

    .line 39
    .line 40
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lba/a;->C(Lp4/c0;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, Lp4/k;->z:Z

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lba/a;->q(Lp4/k;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, Lp4/k;->l:Z

    .line 54
    .line 55
    iput-boolean v1, p1, Lp4/k;->I:Z

    .line 56
    .line 57
    invoke-static {p1}, Lp4/x;->E(Lp4/k;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lp4/x;->D:Z

    .line 65
    .line 66
    :cond_2
    return-object v0
.end method

.method public final b(Lp4/m;Lp4/o;Lp4/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    iput-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 6
    .line 7
    iput-object p2, p0, Lp4/x;->u:Lp4/o;

    .line 8
    .line 9
    iput-object p3, p0, Lp4/x;->v:Lp4/k;

    .line 10
    .line 11
    iget-object p2, p0, Lp4/x;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Lp4/v;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Lp4/v;-><init>(Lp4/k;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Lp4/x;->v:Lp4/k;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lp4/x;->X()V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p2, p1, Lp4/m;->f:Lj/j;

    .line 39
    .line 40
    invoke-virtual {p2}, Lc/o;->i()Lc/m0;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lp4/x;->g:Lc/m0;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    move-object v0, p3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object v0, p1

    .line 51
    :goto_1
    iget-object v1, p0, Lp4/x;->h:Lc/n0;

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Lc/m0;->a(Landroidx/lifecycle/t;Lc/n0;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    if-eqz p3, :cond_6

    .line 58
    .line 59
    iget-object p1, p3, Lp4/k;->r:Lp4/x;

    .line 60
    .line 61
    iget-object p1, p1, Lp4/x;->L:Lp4/z;

    .line 62
    .line 63
    iget-object v0, p1, Lp4/z;->c:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v1, p3, Lp4/k;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lp4/z;

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    new-instance v1, Lp4/z;

    .line 76
    .line 77
    iget-boolean p1, p1, Lp4/z;->e:Z

    .line 78
    .line 79
    invoke-direct {v1, p1}, Lp4/z;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p3, Lp4/k;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_5
    iput-object v1, p0, Lp4/x;->L:Lp4/z;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    if-eqz p1, :cond_8

    .line 91
    .line 92
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 93
    .line 94
    invoke-virtual {p1}, Lc/o;->b()Landroidx/lifecycle/r0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v0, Lu4/a;->b:Lu4/a;

    .line 99
    .line 100
    const-string v1, "defaultCreationExtras"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lba/a;

    .line 106
    .line 107
    sget-object v2, Lp4/z;->h:Ln6/a;

    .line 108
    .line 109
    invoke-direct {v1, p1, v2, v0}, Lba/a;-><init>(Landroidx/lifecycle/r0;Landroidx/lifecycle/q0;Lu4/b;)V

    .line 110
    .line 111
    .line 112
    const-class p1, Lp4/z;

    .line 113
    .line 114
    invoke-static {p1}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Lm9/c;->j()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0, p1}, Lba/a;->A(Ljava/lang/String;Lm9/c;)Landroidx/lifecycle/o0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lp4/z;

    .line 135
    .line 136
    iput-object p1, p0, Lp4/x;->L:Lp4/z;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_8
    new-instance p1, Lp4/z;

    .line 148
    .line 149
    invoke-direct {p1, p2}, Lp4/z;-><init>(Z)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lp4/x;->L:Lp4/z;

    .line 153
    .line 154
    :goto_2
    iget-object p1, p0, Lp4/x;->L:Lp4/z;

    .line 155
    .line 156
    iget-boolean v0, p0, Lp4/x;->E:Z

    .line 157
    .line 158
    if-nez v0, :cond_9

    .line 159
    .line 160
    iget-boolean v0, p0, Lp4/x;->F:Z

    .line 161
    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    :cond_9
    const/4 p2, 0x1

    .line 165
    :cond_a
    iput-boolean p2, p1, Lp4/z;->g:Z

    .line 166
    .line 167
    iget-object p2, p0, Lp4/x;->c:Lba/a;

    .line 168
    .line 169
    iput-object p1, p2, Lba/a;->e:Ljava/lang/Object;

    .line 170
    .line 171
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 172
    .line 173
    if-eqz p1, :cond_b

    .line 174
    .line 175
    if-nez p3, :cond_b

    .line 176
    .line 177
    invoke-virtual {p1}, Lp4/m;->d()Landroid/support/v4/media/session/t;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-instance p2, Lc/f;

    .line 182
    .line 183
    const/4 v0, 0x2

    .line 184
    invoke-direct {p2, v0, p0}, Lc/f;-><init>(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "android:support:fragments"

    .line 188
    .line 189
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/session/t;->h1(Ljava/lang/String;La5/d;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/t;->L0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lp4/x;->N(Landroid/os/Parcelable;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 202
    .line 203
    if-eqz p1, :cond_d

    .line 204
    .line 205
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 206
    .line 207
    iget-object p1, p1, Lc/o;->h:Lc/l;

    .line 208
    .line 209
    if-eqz p3, :cond_c

    .line 210
    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    iget-object v0, p3, Lp4/k;->e:Ljava/lang/String;

    .line 217
    .line 218
    const-string v1, ":"

    .line 219
    .line 220
    invoke-static {p2, v0, v1}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    goto :goto_3

    .line 225
    :cond_c
    const-string p2, ""

    .line 226
    .line 227
    :goto_3
    const-string v0, "FragmentManager:"

    .line 228
    .line 229
    invoke-static {v0, p2}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const-string v0, "StartActivityForResult"

    .line 234
    .line 235
    invoke-static {p2, v0}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lg/a;

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    invoke-direct {v1, v2}, Lg/a;-><init>(I)V

    .line 243
    .line 244
    .line 245
    new-instance v2, Lp4/s;

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    invoke-direct {v2, p0, v3}, Lp4/s;-><init>(Lp4/x;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0, v1, v2}, Lc/l;->c(Ljava/lang/String;Lg5/a;Lp4/s;)La2/b;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, p0, Lp4/x;->z:La2/b;

    .line 256
    .line 257
    const-string v0, "StartIntentSenderForResult"

    .line 258
    .line 259
    invoke-static {p2, v0}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    new-instance v1, Lg/a;

    .line 264
    .line 265
    const/4 v2, 0x2

    .line 266
    invoke-direct {v1, v2}, Lg/a;-><init>(I)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lp4/s;

    .line 270
    .line 271
    const/4 v3, 0x2

    .line 272
    invoke-direct {v2, p0, v3}, Lp4/s;-><init>(Lp4/x;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0, v1, v2}, Lc/l;->c(Ljava/lang/String;Lg5/a;Lp4/s;)La2/b;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, p0, Lp4/x;->A:La2/b;

    .line 280
    .line 281
    const-string v0, "RequestPermissions"

    .line 282
    .line 283
    invoke-static {p2, v0}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    new-instance v0, Lg/a;

    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    invoke-direct {v0, v1}, Lg/a;-><init>(I)V

    .line 291
    .line 292
    .line 293
    new-instance v1, Lp4/s;

    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    invoke-direct {v1, p0, v2}, Lp4/s;-><init>(Lp4/x;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2, v0, v1}, Lc/l;->c(Ljava/lang/String;Lg5/a;Lp4/s;)La2/b;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iput-object p1, p0, Lp4/x;->B:La2/b;

    .line 304
    .line 305
    :cond_d
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 306
    .line 307
    if-eqz p1, :cond_e

    .line 308
    .line 309
    iget-object p2, p0, Lp4/x;->n:Lp4/r;

    .line 310
    .line 311
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Lc/o;->f(Ld4/a;)V

    .line 314
    .line 315
    .line 316
    :cond_e
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 317
    .line 318
    if-eqz p1, :cond_f

    .line 319
    .line 320
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    const-string p2, "listener"

    .line 326
    .line 327
    iget-object v0, p0, Lp4/x;->o:Lp4/r;

    .line 328
    .line 329
    invoke-static {v0, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p1, Lc/o;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_f
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 338
    .line 339
    if-eqz p1, :cond_10

    .line 340
    .line 341
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    const-string p2, "listener"

    .line 347
    .line 348
    iget-object v0, p0, Lp4/x;->p:Lp4/r;

    .line 349
    .line 350
    invoke-static {v0, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object p1, p1, Lc/o;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    :cond_10
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 359
    .line 360
    if-eqz p1, :cond_11

    .line 361
    .line 362
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 363
    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    const-string p2, "listener"

    .line 368
    .line 369
    iget-object v0, p0, Lp4/x;->q:Lp4/r;

    .line 370
    .line 371
    invoke-static {v0, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p1, Lc/o;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 375
    .line 376
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    :cond_11
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 380
    .line 381
    if-eqz p1, :cond_12

    .line 382
    .line 383
    if-nez p3, :cond_12

    .line 384
    .line 385
    iget-object p1, p1, Lp4/m;->f:Lj/j;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    const-string p2, "provider"

    .line 391
    .line 392
    iget-object p3, p0, Lp4/x;->r:Lp4/t;

    .line 393
    .line 394
    invoke-static {p3, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, p1, Lc/o;->c:La2/b;

    .line 398
    .line 399
    iget-object p2, p1, La2/b;->c:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 402
    .line 403
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    iget-object p1, p1, La2/b;->b:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast p1, Ljava/lang/Runnable;

    .line 409
    .line 410
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 411
    .line 412
    .line 413
    :cond_12
    return-void

    .line 414
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 415
    .line 416
    const-string p2, "Already attached"

    .line 417
    .line 418
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    throw p1
.end method

.method public final c(Lp4/k;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Lp4/k;->z:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Lp4/k;->z:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Lp4/k;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lba/a;->q(Lp4/k;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Lp4/x;->E(Lp4/k;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lp4/x;->D:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp4/x;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Lba/a;->v()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lp4/c0;

    .line 27
    .line 28
    iget-object v2, v2, Lp4/c0;->c:Lp4/k;

    .line 29
    .line 30
    iget-object v2, v2, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lp4/x;->B()Ln6/a;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Lp4/g;->d(Landroid/view/ViewGroup;Ln6/a;)Lp4/g;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(Lp4/k;)Lp4/c0;
    .locals 3

    .line 1
    iget-object v0, p1, Lp4/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 4
    .line 5
    iget-object v2, v1, Lba/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lp4/c0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lp4/c0;

    .line 19
    .line 20
    iget-object v2, p0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, Lp4/c0;-><init>(Landroid/support/v4/media/session/t;Lba/a;Lp4/k;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lp4/x;->t:Lp4/m;

    .line 26
    .line 27
    iget-object p1, p1, Lp4/m;->c:Lj/j;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lp4/c0;->l(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lp4/x;->s:I

    .line 37
    .line 38
    iput p1, v0, Lp4/c0;->e:I

    .line 39
    .line 40
    return-object v0
.end method

.method public final g(Lp4/k;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lp4/x;->D(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, Lp4/k;->z:Z

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Lp4/k;->z:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Lp4/k;->k:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v1}, Lp4/x;->D(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 62
    .line 63
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Lp4/k;->k:Z

    .line 78
    .line 79
    invoke-static {p1}, Lp4/x;->E(Lp4/k;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iput-boolean v2, p0, Lp4/x;->D:Z

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lp4/x;->T(Lp4/k;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p1

    .line 94
    :cond_3
    return-void
.end method

.method public final h(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lp4/x;->W(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lp4/k;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lp4/x;->h(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget v0, p0, Lp4/x;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lp4/k;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Lp4/k;->y:Z

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget-object v3, v3, Lp4/k;->t:Lp4/x;

    .line 37
    .line 38
    invoke-virtual {v3}, Lp4/x;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final j()Z
    .locals 7

    .line 1
    iget v0, p0, Lp4/x;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lp4/k;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Lp4/x;->G(Lp4/k;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Lp4/k;->y:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, v5, Lp4/k;->t:Lp4/x;

    .line 45
    .line 46
    invoke-virtual {v6}, Lp4/x;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v6, 0x0

    .line 52
    :goto_1
    if-eqz v6, :cond_1

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :goto_2
    iget-object v0, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lp4/k;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iput-object v3, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    return v4
.end method

.method public final k()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp4/x;->G:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lp4/x;->w(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lp4/x;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lp4/g;

    .line 26
    .line 27
    invoke-virtual {v2}, Lp4/g;->c()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 32
    .line 33
    iget-object v2, p0, Lp4/x;->c:Lba/a;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v2, Lba/a;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lp4/z;

    .line 40
    .line 41
    iget-boolean v1, v1, Lp4/z;->f:Z

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, v1, Lp4/m;->c:Lj/j;

    .line 45
    .line 46
    invoke-static {v1}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    xor-int/2addr v1, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v1, 0x1

    .line 59
    :goto_1
    if-eqz v1, :cond_5

    .line 60
    .line 61
    iget-object v1, p0, Lp4/x;->j:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lp4/c;

    .line 82
    .line 83
    iget-object v3, v3, Lp4/c;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v5, v2, Lba/a;->e:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Lp4/z;

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x3

    .line 109
    invoke-static {v6}, Lp4/x;->D(I)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v7, "Clearing non-config state for saved state of Fragment "

    .line 118
    .line 119
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const-string v7, "FragmentManager"

    .line 130
    .line 131
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {v5, v4}, Lp4/z;->e(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v1, -0x1

    .line 139
    invoke-virtual {p0, v1}, Lp4/x;->t(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    const/4 v3, 0x0

    .line 150
    :goto_3
    if-eqz v3, :cond_7

    .line 151
    .line 152
    iget-object v1, v1, Lp4/m;->f:Lj/j;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const-string v3, "listener"

    .line 158
    .line 159
    iget-object v4, p0, Lp4/x;->o:Lp4/r;

    .line 160
    .line 161
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v1, Lc/o;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    :cond_7
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 170
    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    const/4 v3, 0x1

    .line 174
    goto :goto_4

    .line 175
    :cond_8
    const/4 v3, 0x0

    .line 176
    :goto_4
    if-eqz v3, :cond_9

    .line 177
    .line 178
    iget-object v1, v1, Lp4/m;->f:Lj/j;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v3, "listener"

    .line 184
    .line 185
    iget-object v4, p0, Lp4/x;->n:Lp4/r;

    .line 186
    .line 187
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v1, Lc/o;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    .line 192
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :cond_9
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 196
    .line 197
    if-eqz v1, :cond_a

    .line 198
    .line 199
    const/4 v3, 0x1

    .line 200
    goto :goto_5

    .line 201
    :cond_a
    const/4 v3, 0x0

    .line 202
    :goto_5
    if-eqz v3, :cond_b

    .line 203
    .line 204
    iget-object v1, v1, Lp4/m;->f:Lj/j;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const-string v3, "listener"

    .line 210
    .line 211
    iget-object v4, p0, Lp4/x;->p:Lp4/r;

    .line 212
    .line 213
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v1, Lc/o;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :cond_b
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 222
    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    const/4 v3, 0x1

    .line 226
    goto :goto_6

    .line 227
    :cond_c
    const/4 v3, 0x0

    .line 228
    :goto_6
    if-eqz v3, :cond_d

    .line 229
    .line 230
    iget-object v1, v1, Lp4/m;->f:Lj/j;

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    const-string v3, "listener"

    .line 236
    .line 237
    iget-object v4, p0, Lp4/x;->q:Lp4/r;

    .line 238
    .line 239
    invoke-static {v4, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v1, Lc/o;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    .line 244
    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_d
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 248
    .line 249
    if-eqz v1, :cond_e

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_e
    const/4 v0, 0x0

    .line 253
    :goto_7
    if-eqz v0, :cond_10

    .line 254
    .line 255
    iget-object v0, v1, Lp4/m;->f:Lj/j;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const-string v1, "provider"

    .line 261
    .line 262
    iget-object v2, p0, Lp4/x;->r:Lp4/t;

    .line 263
    .line 264
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v0, Lc/o;->c:La2/b;

    .line 268
    .line 269
    iget-object v1, v0, La2/b;->c:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, La2/b;->d:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v1, Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-nez v1, :cond_f

    .line 285
    .line 286
    iget-object v0, v0, La2/b;->b:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Ljava/lang/Runnable;

    .line 289
    .line 290
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_10
    :goto_8
    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 302
    .line 303
    iput-object v0, p0, Lp4/x;->u:Lp4/o;

    .line 304
    .line 305
    iput-object v0, p0, Lp4/x;->v:Lp4/k;

    .line 306
    .line 307
    iget-object v1, p0, Lp4/x;->g:Lc/m0;

    .line 308
    .line 309
    if-eqz v1, :cond_12

    .line 310
    .line 311
    iget-object v1, p0, Lp4/x;->h:Lc/n0;

    .line 312
    .line 313
    iget-object v1, v1, Lc/n0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_11

    .line 324
    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Lc/c;

    .line 330
    .line 331
    invoke-interface {v2}, Lc/c;->cancel()V

    .line 332
    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_11
    iput-object v0, p0, Lp4/x;->g:Lc/m0;

    .line 336
    .line 337
    :cond_12
    iget-object v0, p0, Lp4/x;->z:La2/b;

    .line 338
    .line 339
    if-eqz v0, :cond_13

    .line 340
    .line 341
    invoke-virtual {v0}, La2/b;->f0()V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lp4/x;->A:La2/b;

    .line 345
    .line 346
    invoke-virtual {v0}, La2/b;->f0()V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lp4/x;->B:La2/b;

    .line 350
    .line 351
    invoke-virtual {v0}, La2/b;->f0()V

    .line 352
    .line 353
    .line 354
    :cond_13
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lp4/x;->W(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lp4/k;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Lp4/k;->D:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lp4/x;->l(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final m(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lp4/x;->W(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lp4/k;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lp4/x;->m(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lba/a;->w()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lp4/k;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lp4/k;->m()Z

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 29
    .line 30
    invoke-virtual {v1}, Lp4/x;->n()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 5

    .line 1
    iget v0, p0, Lp4/x;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lp4/k;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, Lp4/k;->y:Z

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget-object v3, v3, Lp4/k;->t:Lp4/x;

    .line 37
    .line 38
    invoke-virtual {v3}, Lp4/x;->o()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Lp4/x;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lp4/k;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-boolean v2, v1, Lp4/k;->y:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 36
    .line 37
    invoke-virtual {v1}, Lp4/x;->p()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public final q(Lp4/k;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lp4/k;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lp4/k;->r:Lp4/x;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lp4/x;->H(Lp4/k;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, Lp4/k;->j:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, Lp4/k;->j:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget-object p1, p1, Lp4/k;->t:Lp4/x;

    .line 43
    .line 44
    invoke-virtual {p1}, Lp4/x;->X()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lp4/x;->w:Lp4/k;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lp4/x;->q(Lp4/k;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final r(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lp4/x;->W(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lp4/k;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lp4/x;->r(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public final s()Z
    .locals 6

    .line 1
    iget v0, p0, Lp4/x;->s:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lba/a;->y()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lp4/k;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-static {v4}, Lp4/x;->G(Lp4/k;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-boolean v5, v4, Lp4/k;->y:Z

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    iget-object v4, v4, Lp4/k;->t:Lp4/x;

    .line 44
    .line 45
    invoke-virtual {v4}, Lp4/x;->s()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    :goto_1
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v3
.end method

.method public final t(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lp4/x;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lp4/x;->c:Lba/a;

    .line 6
    .line 7
    iget-object v2, v2, Lba/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lp4/c0;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput p1, v3, Lp4/c0;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, Lp4/x;->I(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lp4/x;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lp4/g;

    .line 58
    .line 59
    invoke-virtual {v2}, Lp4/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, Lp4/x;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lp4/x;->w(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, Lp4/x;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lp4/x;->v:Lp4/k;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lp4/x;->v:Lp4/k;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lp4/x;->c:Lba/a;

    .line 8
    .line 9
    iget-object v2, v1, Lba/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v3, "    "

    .line 14
    .line 15
    invoke-static {p1, v3}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v1, v1, Lba/a;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-nez v4, :cond_1e

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "Active Fragments:"

    .line 34
    .line 35
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1e

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lp4/c0;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz v4, :cond_1d

    .line 62
    .line 63
    iget-object v4, v4, Lp4/c0;->c:Lp4/k;

    .line 64
    .line 65
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v6, "mFragmentId=#"

    .line 75
    .line 76
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v6, v4, Lp4/k;->v:I

    .line 80
    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v6, " mContainerId=#"

    .line 89
    .line 90
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v6, v4, Lp4/k;->w:I

    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v6, " mTag="

    .line 103
    .line 104
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v6, v4, Lp4/k;->x:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v6, "mState="

    .line 116
    .line 117
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v6, v4, Lp4/k;->a:I

    .line 121
    .line 122
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 123
    .line 124
    .line 125
    const-string v6, " mWho="

    .line 126
    .line 127
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v4, Lp4/k;->e:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v6, " mBackStackNesting="

    .line 136
    .line 137
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget v6, v4, Lp4/k;->q:I

    .line 141
    .line 142
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v6, "mAdded="

    .line 149
    .line 150
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v6, v4, Lp4/k;->k:Z

    .line 154
    .line 155
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    .line 157
    .line 158
    const-string v6, " mRemoving="

    .line 159
    .line 160
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-boolean v6, v4, Lp4/k;->l:Z

    .line 164
    .line 165
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    .line 167
    .line 168
    const-string v6, " mFromLayout="

    .line 169
    .line 170
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-boolean v6, v4, Lp4/k;->m:Z

    .line 174
    .line 175
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 176
    .line 177
    .line 178
    const-string v6, " mInLayout="

    .line 179
    .line 180
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-boolean v6, v4, Lp4/k;->n:Z

    .line 184
    .line 185
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v6, "mHidden="

    .line 192
    .line 193
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-boolean v6, v4, Lp4/k;->y:Z

    .line 197
    .line 198
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 199
    .line 200
    .line 201
    const-string v6, " mDetached="

    .line 202
    .line 203
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-boolean v6, v4, Lp4/k;->z:Z

    .line 207
    .line 208
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 209
    .line 210
    .line 211
    const-string v6, " mMenuVisible="

    .line 212
    .line 213
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-boolean v6, v4, Lp4/k;->C:Z

    .line 217
    .line 218
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 219
    .line 220
    .line 221
    const-string v6, " mHasMenu="

    .line 222
    .line 223
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v6, "mRetainInstance="

    .line 233
    .line 234
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-boolean v6, v4, Lp4/k;->A:Z

    .line 238
    .line 239
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    .line 241
    .line 242
    const-string v6, " mUserVisibleHint="

    .line 243
    .line 244
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-boolean v6, v4, Lp4/k;->G:Z

    .line 248
    .line 249
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 250
    .line 251
    .line 252
    iget-object v6, v4, Lp4/k;->r:Lp4/x;

    .line 253
    .line 254
    if-eqz v6, :cond_0

    .line 255
    .line 256
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v6, "mFragmentManager="

    .line 260
    .line 261
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v6, v4, Lp4/k;->r:Lp4/x;

    .line 265
    .line 266
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_0
    iget-object v6, v4, Lp4/k;->s:Lp4/m;

    .line 270
    .line 271
    if-eqz v6, :cond_1

    .line 272
    .line 273
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v6, "mHost="

    .line 277
    .line 278
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v6, v4, Lp4/k;->s:Lp4/m;

    .line 282
    .line 283
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_1
    iget-object v6, v4, Lp4/k;->u:Lp4/k;

    .line 287
    .line 288
    if-eqz v6, :cond_2

    .line 289
    .line 290
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v6, "mParentFragment="

    .line 294
    .line 295
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v6, v4, Lp4/k;->u:Lp4/k;

    .line 299
    .line 300
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_2
    iget-object v6, v4, Lp4/k;->f:Landroid/os/Bundle;

    .line 304
    .line 305
    if-eqz v6, :cond_3

    .line 306
    .line 307
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "mArguments="

    .line 311
    .line 312
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v6, v4, Lp4/k;->f:Landroid/os/Bundle;

    .line 316
    .line 317
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_3
    iget-object v6, v4, Lp4/k;->b:Landroid/os/Bundle;

    .line 321
    .line 322
    if-eqz v6, :cond_4

    .line 323
    .line 324
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v6, "mSavedFragmentState="

    .line 328
    .line 329
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v6, v4, Lp4/k;->b:Landroid/os/Bundle;

    .line 333
    .line 334
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_4
    iget-object v6, v4, Lp4/k;->c:Landroid/util/SparseArray;

    .line 338
    .line 339
    if-eqz v6, :cond_5

    .line 340
    .line 341
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v6, "mSavedViewState="

    .line 345
    .line 346
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v6, v4, Lp4/k;->c:Landroid/util/SparseArray;

    .line 350
    .line 351
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_5
    iget-object v6, v4, Lp4/k;->d:Landroid/os/Bundle;

    .line 355
    .line 356
    if-eqz v6, :cond_6

    .line 357
    .line 358
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v6, "mSavedViewRegistryState="

    .line 362
    .line 363
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v6, v4, Lp4/k;->d:Landroid/os/Bundle;

    .line 367
    .line 368
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_6
    iget-object v6, v4, Lp4/k;->g:Lp4/k;

    .line 372
    .line 373
    const/4 v7, 0x0

    .line 374
    if-eqz v6, :cond_7

    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_7
    iget-object v6, v4, Lp4/k;->r:Lp4/x;

    .line 378
    .line 379
    if-eqz v6, :cond_8

    .line 380
    .line 381
    iget-object v8, v4, Lp4/k;->h:Ljava/lang/String;

    .line 382
    .line 383
    if-eqz v8, :cond_8

    .line 384
    .line 385
    iget-object v6, v6, Lp4/x;->c:Lba/a;

    .line 386
    .line 387
    invoke-virtual {v6, v8}, Lba/a;->s(Ljava/lang/String;)Lp4/k;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    goto :goto_1

    .line 392
    :cond_8
    move-object v6, v7

    .line 393
    :goto_1
    if-eqz v6, :cond_9

    .line 394
    .line 395
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const-string v8, "mTarget="

    .line 399
    .line 400
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    const-string v6, " mTargetRequestCode="

    .line 407
    .line 408
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget v6, v4, Lp4/k;->i:I

    .line 412
    .line 413
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 414
    .line 415
    .line 416
    :cond_9
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v6, "mPopDirection="

    .line 420
    .line 421
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 425
    .line 426
    if-nez v6, :cond_a

    .line 427
    .line 428
    const/4 v6, 0x0

    .line 429
    goto :goto_2

    .line 430
    :cond_a
    iget-boolean v6, v6, Lp4/j;->a:Z

    .line 431
    .line 432
    :goto_2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 433
    .line 434
    .line 435
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 436
    .line 437
    if-nez v6, :cond_b

    .line 438
    .line 439
    const/4 v6, 0x0

    .line 440
    goto :goto_3

    .line 441
    :cond_b
    iget v6, v6, Lp4/j;->b:I

    .line 442
    .line 443
    :goto_3
    if-eqz v6, :cond_d

    .line 444
    .line 445
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v6, "getEnterAnim="

    .line 449
    .line 450
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 454
    .line 455
    if-nez v6, :cond_c

    .line 456
    .line 457
    const/4 v6, 0x0

    .line 458
    goto :goto_4

    .line 459
    :cond_c
    iget v6, v6, Lp4/j;->b:I

    .line 460
    .line 461
    :goto_4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 462
    .line 463
    .line 464
    :cond_d
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 465
    .line 466
    if-nez v6, :cond_e

    .line 467
    .line 468
    const/4 v6, 0x0

    .line 469
    goto :goto_5

    .line 470
    :cond_e
    iget v6, v6, Lp4/j;->c:I

    .line 471
    .line 472
    :goto_5
    if-eqz v6, :cond_10

    .line 473
    .line 474
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v6, "getExitAnim="

    .line 478
    .line 479
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 483
    .line 484
    if-nez v6, :cond_f

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    goto :goto_6

    .line 488
    :cond_f
    iget v6, v6, Lp4/j;->c:I

    .line 489
    .line 490
    :goto_6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 491
    .line 492
    .line 493
    :cond_10
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 494
    .line 495
    if-nez v6, :cond_11

    .line 496
    .line 497
    const/4 v6, 0x0

    .line 498
    goto :goto_7

    .line 499
    :cond_11
    iget v6, v6, Lp4/j;->d:I

    .line 500
    .line 501
    :goto_7
    if-eqz v6, :cond_13

    .line 502
    .line 503
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string v6, "getPopEnterAnim="

    .line 507
    .line 508
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 512
    .line 513
    if-nez v6, :cond_12

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    goto :goto_8

    .line 517
    :cond_12
    iget v6, v6, Lp4/j;->d:I

    .line 518
    .line 519
    :goto_8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 520
    .line 521
    .line 522
    :cond_13
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 523
    .line 524
    if-nez v6, :cond_14

    .line 525
    .line 526
    const/4 v6, 0x0

    .line 527
    goto :goto_9

    .line 528
    :cond_14
    iget v6, v6, Lp4/j;->e:I

    .line 529
    .line 530
    :goto_9
    if-eqz v6, :cond_16

    .line 531
    .line 532
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    const-string v6, "getPopExitAnim="

    .line 536
    .line 537
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object v6, v4, Lp4/k;->H:Lp4/j;

    .line 541
    .line 542
    if-nez v6, :cond_15

    .line 543
    .line 544
    const/4 v6, 0x0

    .line 545
    goto :goto_a

    .line 546
    :cond_15
    iget v6, v6, Lp4/j;->e:I

    .line 547
    .line 548
    :goto_a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 549
    .line 550
    .line 551
    :cond_16
    iget-object v6, v4, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 552
    .line 553
    if-eqz v6, :cond_17

    .line 554
    .line 555
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const-string v6, "mContainer="

    .line 559
    .line 560
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v6, v4, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 564
    .line 565
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    :cond_17
    iget-object v6, v4, Lp4/k;->s:Lp4/m;

    .line 569
    .line 570
    if-nez v6, :cond_18

    .line 571
    .line 572
    move-object v6, v7

    .line 573
    goto :goto_b

    .line 574
    :cond_18
    iget-object v6, v6, Lp4/m;->c:Lj/j;

    .line 575
    .line 576
    :goto_b
    if-eqz v6, :cond_1c

    .line 577
    .line 578
    invoke-interface {v4}, Landroidx/lifecycle/s0;->b()Landroidx/lifecycle/r0;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    sget-object v8, Lw4/a;->c:Ln6/a;

    .line 583
    .line 584
    const-string v9, "store"

    .line 585
    .line 586
    invoke-static {v6, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    sget-object v9, Lu4/a;->b:Lu4/a;

    .line 590
    .line 591
    const-string v10, "defaultCreationExtras"

    .line 592
    .line 593
    invoke-static {v9, v10}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    new-instance v10, Lba/a;

    .line 597
    .line 598
    invoke-direct {v10, v6, v8, v9}, Lba/a;-><init>(Landroidx/lifecycle/r0;Landroidx/lifecycle/q0;Lu4/b;)V

    .line 599
    .line 600
    .line 601
    const-class v6, Lw4/a;

    .line 602
    .line 603
    invoke-static {v6}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-interface {v6}, Lm9/c;->j()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    if-eqz v8, :cond_1b

    .line 612
    .line 613
    const-string v9, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 614
    .line 615
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    invoke-virtual {v10, v8, v6}, Lba/a;->A(Ljava/lang/String;Lm9/c;)Landroidx/lifecycle/o0;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    check-cast v6, Lw4/a;

    .line 624
    .line 625
    iget-object v6, v6, Lw4/a;->b:Ls/r0;

    .line 626
    .line 627
    iget v8, v6, Ls/r0;->c:I

    .line 628
    .line 629
    if-lez v8, :cond_1c

    .line 630
    .line 631
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    const-string v8, "Loaders:"

    .line 635
    .line 636
    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget v8, v6, Ls/r0;->c:I

    .line 640
    .line 641
    if-gtz v8, :cond_19

    .line 642
    .line 643
    goto :goto_c

    .line 644
    :cond_19
    invoke-virtual {v6, v5}, Ls/r0;->f(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    if-nez p1, :cond_1a

    .line 649
    .line 650
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    const-string p1, "  #"

    .line 654
    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-object p1, v6, Ls/r0;->a:[I

    .line 659
    .line 660
    aget p1, p1, v5

    .line 661
    .line 662
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 663
    .line 664
    .line 665
    const-string p1, ": "

    .line 666
    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    throw v7

    .line 671
    :cond_1a
    new-instance p1, Ljava/lang/ClassCastException;

    .line 672
    .line 673
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 674
    .line 675
    .line 676
    throw p1

    .line 677
    :cond_1b
    const-string p1, "Local and anonymous classes can not be ViewModels"

    .line 678
    .line 679
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 680
    .line 681
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    throw p2

    .line 685
    :cond_1c
    :goto_c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    const-string v7, "Child "

    .line 691
    .line 692
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-object v7, v4, Lp4/k;->t:Lp4/x;

    .line 696
    .line 697
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v7, ":"

    .line 701
    .line 702
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    iget-object v4, v4, Lp4/k;->t:Lp4/x;

    .line 713
    .line 714
    const-string v6, "  "

    .line 715
    .line 716
    invoke-static {v3, v6}, Lp9/v;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    invoke-virtual {v4, v6, p2, p3, p4}, Lp4/x;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_1d
    const-string v4, "null"

    .line 726
    .line 727
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 733
    .line 734
    .line 735
    move-result p2

    .line 736
    if-lez p2, :cond_1f

    .line 737
    .line 738
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    const-string p4, "Added Fragments:"

    .line 742
    .line 743
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    const/4 p4, 0x0

    .line 747
    :goto_d
    if-ge p4, p2, :cond_1f

    .line 748
    .line 749
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    check-cast v1, Lp4/k;

    .line 754
    .line 755
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    const-string v3, "  #"

    .line 759
    .line 760
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 764
    .line 765
    .line 766
    const-string v3, ": "

    .line 767
    .line 768
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1}, Lp4/k;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    add-int/lit8 p4, p4, 0x1

    .line 779
    .line 780
    goto :goto_d

    .line 781
    :cond_1f
    iget-object p2, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 782
    .line 783
    if-eqz p2, :cond_20

    .line 784
    .line 785
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 786
    .line 787
    .line 788
    move-result p2

    .line 789
    if-lez p2, :cond_20

    .line 790
    .line 791
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    const-string p4, "Fragments Created Menus:"

    .line 795
    .line 796
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    const/4 p4, 0x0

    .line 800
    :goto_e
    if-ge p4, p2, :cond_20

    .line 801
    .line 802
    iget-object v1, p0, Lp4/x;->e:Ljava/util/ArrayList;

    .line 803
    .line 804
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    check-cast v1, Lp4/k;

    .line 809
    .line 810
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    const-string v2, "  #"

    .line 814
    .line 815
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 819
    .line 820
    .line 821
    const-string v2, ": "

    .line 822
    .line 823
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1}, Lp4/k;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    add-int/lit8 p4, p4, 0x1

    .line 834
    .line 835
    goto :goto_e

    .line 836
    :cond_20
    iget-object p2, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 837
    .line 838
    if-eqz p2, :cond_21

    .line 839
    .line 840
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 841
    .line 842
    .line 843
    move-result p2

    .line 844
    if-lez p2, :cond_21

    .line 845
    .line 846
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const-string p4, "Back Stack:"

    .line 850
    .line 851
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    const/4 p4, 0x0

    .line 855
    :goto_f
    if-ge p4, p2, :cond_21

    .line 856
    .line 857
    iget-object v1, p0, Lp4/x;->d:Ljava/util/ArrayList;

    .line 858
    .line 859
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    check-cast v1, Lp4/a;

    .line 864
    .line 865
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const-string v2, "  #"

    .line 869
    .line 870
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    .line 875
    .line 876
    const-string v2, ": "

    .line 877
    .line 878
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Lp4/a;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    const/4 v2, 0x1

    .line 889
    invoke-virtual {v1, v0, p3, v2}, Lp4/a;->e(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 890
    .line 891
    .line 892
    add-int/lit8 p4, p4, 0x1

    .line 893
    .line 894
    goto :goto_f

    .line 895
    :cond_21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    new-instance p2, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    const-string p4, "Back Stack Index: "

    .line 901
    .line 902
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    iget-object p4, p0, Lp4/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 906
    .line 907
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 908
    .line 909
    .line 910
    move-result p4

    .line 911
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object p2

    .line 918
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    iget-object p2, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 922
    .line 923
    monitor-enter p2

    .line 924
    :try_start_0
    iget-object p4, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 925
    .line 926
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 927
    .line 928
    .line 929
    move-result p4

    .line 930
    if-lez p4, :cond_22

    .line 931
    .line 932
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    const-string v0, "Pending Actions:"

    .line 936
    .line 937
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    :goto_10
    if-ge v5, p4, :cond_22

    .line 941
    .line 942
    iget-object v0, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 943
    .line 944
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    check-cast v0, Lp4/a;

    .line 949
    .line 950
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    const-string v1, "  #"

    .line 954
    .line 955
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 959
    .line 960
    .line 961
    const-string v1, ": "

    .line 962
    .line 963
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    add-int/lit8 v5, v5, 0x1

    .line 970
    .line 971
    goto :goto_10

    .line 972
    :catchall_0
    move-exception p1

    .line 973
    goto :goto_11

    .line 974
    :cond_22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const-string p2, "FragmentManager misc state:"

    .line 979
    .line 980
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string p2, "  mHost="

    .line 987
    .line 988
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    iget-object p2, p0, Lp4/x;->t:Lp4/m;

    .line 992
    .line 993
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    const-string p2, "  mContainer="

    .line 1000
    .line 1001
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object p2, p0, Lp4/x;->u:Lp4/o;

    .line 1005
    .line 1006
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    iget-object p2, p0, Lp4/x;->v:Lp4/k;

    .line 1010
    .line 1011
    if-eqz p2, :cond_23

    .line 1012
    .line 1013
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    const-string p2, "  mParent="

    .line 1017
    .line 1018
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object p2, p0, Lp4/x;->v:Lp4/k;

    .line 1022
    .line 1023
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    const-string p2, "  mCurState="

    .line 1030
    .line 1031
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    iget p2, p0, Lp4/x;->s:I

    .line 1035
    .line 1036
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    .line 1038
    .line 1039
    const-string p2, " mStateSaved="

    .line 1040
    .line 1041
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    iget-boolean p2, p0, Lp4/x;->E:Z

    .line 1045
    .line 1046
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1047
    .line 1048
    .line 1049
    const-string p2, " mStopped="

    .line 1050
    .line 1051
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-boolean p2, p0, Lp4/x;->F:Z

    .line 1055
    .line 1056
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1057
    .line 1058
    .line 1059
    const-string p2, " mDestroyed="

    .line 1060
    .line 1061
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    iget-boolean p2, p0, Lp4/x;->G:Z

    .line 1065
    .line 1066
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1067
    .line 1068
    .line 1069
    iget-boolean p2, p0, Lp4/x;->D:Z

    .line 1070
    .line 1071
    if-eqz p2, :cond_24

    .line 1072
    .line 1073
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    const-string p1, "  mNeedMenuInvalidate="

    .line 1077
    .line 1078
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    iget-boolean p1, p0, Lp4/x;->D:Z

    .line 1082
    .line 1083
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1084
    .line 1085
    .line 1086
    :cond_24
    return-void

    .line 1087
    :goto_11
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    throw p1
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp4/x;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lp4/x;->G:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 34
    .line 35
    iget-object v1, v1, Lp4/m;->d:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, Lp4/x;->E:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-boolean p1, p0, Lp4/x;->F:Z

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final w(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lp4/x;->v(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 v7, 0x0

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_4

    .line 27
    :cond_0
    :try_start_1
    iget-object v4, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    :goto_1
    if-ge v6, v4, :cond_1

    .line 36
    .line 37
    iget-object v7, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lp4/a;

    .line 44
    .line 45
    invoke-virtual {v7, v1, v2}, Lp4/a;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    :try_start_2
    iget-object v1, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lp4/x;->t:Lp4/m;

    .line 60
    .line 61
    iget-object v1, v1, Lp4/m;->d:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v2, p0, Lp4/x;->M:Lcom/tencent/bugly/proguard/c0;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_2
    if-eqz v7, :cond_2

    .line 70
    .line 71
    iput-boolean v5, p0, Lp4/x;->b:Z

    .line 72
    .line 73
    :try_start_3
    iget-object v0, p0, Lp4/x;->I:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v1, p0, Lp4/x;->J:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0, v0, v1}, Lp4/x;->M(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lp4/x;->d()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :catchall_2
    move-exception p1

    .line 86
    invoke-virtual {p0}, Lp4/x;->d()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    invoke-virtual {p0}, Lp4/x;->X()V

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lp4/x;->H:Z

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iput-boolean p1, p0, Lp4/x;->H:Z

    .line 98
    .line 99
    invoke-virtual {p0}, Lp4/x;->V()V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object p1, p0, Lp4/x;->c:Lba/a;

    .line 103
    .line 104
    iget-object p1, p1, Lba/a;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    return v0

    .line 121
    :goto_3
    :try_start_4
    iget-object v0, p0, Lp4/x;->a:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lp4/x;->t:Lp4/m;

    .line 127
    .line 128
    iget-object v0, v0, Lp4/m;->d:Landroid/os/Handler;

    .line 129
    .line 130
    iget-object v1, p0, Lp4/x;->M:Lcom/tencent/bugly/proguard/c0;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    throw p1
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v1, Lp4/x;->c:Lba/a;

    .line 10
    .line 11
    move/from16 v5, p3

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Lp4/a;

    .line 18
    .line 19
    iget-boolean v6, v6, Lp4/a;->o:Z

    .line 20
    .line 21
    iget-object v7, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v7, :cond_0

    .line 24
    .line 25
    new-instance v7, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v7, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v7, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4}, Lba/a;->y()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object v7, v1, Lp4/x;->w:Lp4/k;

    .line 46
    .line 47
    move v9, v5

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v12, 0x1

    .line 50
    if-ge v9, v3, :cond_13

    .line 51
    .line 52
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    check-cast v13, Lp4/a;

    .line 57
    .line 58
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    check-cast v14, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-nez v14, :cond_d

    .line 69
    .line 70
    iget-object v14, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v11, v13, Lp4/a;->a:Ljava/util/ArrayList;

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    if-ge v8, v15, :cond_c

    .line 80
    .line 81
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    check-cast v15, Lp4/d0;

    .line 86
    .line 87
    iget v5, v15, Lp4/d0;->a:I

    .line 88
    .line 89
    if-eq v5, v12, :cond_b

    .line 90
    .line 91
    const/4 v12, 0x2

    .line 92
    move/from16 v17, v6

    .line 93
    .line 94
    const/16 v6, 0x9

    .line 95
    .line 96
    if-eq v5, v12, :cond_5

    .line 97
    .line 98
    const/4 v12, 0x3

    .line 99
    if-eq v5, v12, :cond_4

    .line 100
    .line 101
    const/4 v12, 0x6

    .line 102
    if-eq v5, v12, :cond_4

    .line 103
    .line 104
    const/4 v12, 0x7

    .line 105
    if-eq v5, v12, :cond_3

    .line 106
    .line 107
    const/16 v12, 0x8

    .line 108
    .line 109
    if-eq v5, v12, :cond_1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_1
    new-instance v5, Lp4/d0;

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    invoke-direct {v5, v6, v7, v12}, Lp4/d0;-><init>(ILp4/k;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    iput-boolean v5, v15, Lp4/d0;->c:Z

    .line 123
    .line 124
    add-int/lit8 v8, v8, 0x1

    .line 125
    .line 126
    iget-object v5, v15, Lp4/d0;->b:Lp4/k;

    .line 127
    .line 128
    move-object v7, v5

    .line 129
    :cond_2
    :goto_3
    move/from16 v20, v9

    .line 130
    .line 131
    move/from16 v19, v10

    .line 132
    .line 133
    const/4 v6, 0x1

    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :cond_3
    :goto_4
    move/from16 v20, v9

    .line 137
    .line 138
    move/from16 v19, v10

    .line 139
    .line 140
    const/4 v6, 0x1

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_4
    iget-object v5, v15, Lp4/d0;->b:Lp4/k;

    .line 144
    .line 145
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v5, v15, Lp4/d0;->b:Lp4/k;

    .line 149
    .line 150
    if-ne v5, v7, :cond_2

    .line 151
    .line 152
    new-instance v7, Lp4/d0;

    .line 153
    .line 154
    invoke-direct {v7, v6, v5}, Lp4/d0;-><init>(ILp4/k;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    .line 162
    move/from16 v20, v9

    .line 163
    .line 164
    move/from16 v19, v10

    .line 165
    .line 166
    const/4 v6, 0x1

    .line 167
    const/4 v7, 0x0

    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :cond_5
    iget-object v5, v15, Lp4/d0;->b:Lp4/k;

    .line 171
    .line 172
    iget v12, v5, Lp4/k;->w:I

    .line 173
    .line 174
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v18

    .line 178
    const/16 v16, 0x1

    .line 179
    .line 180
    add-int/lit8 v18, v18, -0x1

    .line 181
    .line 182
    move/from16 v6, v18

    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    :goto_5
    if-ltz v6, :cond_9

    .line 187
    .line 188
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v20

    .line 192
    move/from16 v21, v6

    .line 193
    .line 194
    move-object/from16 v6, v20

    .line 195
    .line 196
    check-cast v6, Lp4/k;

    .line 197
    .line 198
    move/from16 v20, v9

    .line 199
    .line 200
    iget v9, v6, Lp4/k;->w:I

    .line 201
    .line 202
    if-ne v9, v12, :cond_8

    .line 203
    .line 204
    if-ne v6, v5, :cond_6

    .line 205
    .line 206
    move/from16 v19, v10

    .line 207
    .line 208
    const/4 v6, 0x1

    .line 209
    const/16 v18, 0x1

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_6
    if-ne v6, v7, :cond_7

    .line 213
    .line 214
    new-instance v7, Lp4/d0;

    .line 215
    .line 216
    move/from16 v19, v10

    .line 217
    .line 218
    const/4 v9, 0x0

    .line 219
    const/16 v10, 0x9

    .line 220
    .line 221
    invoke-direct {v7, v10, v6, v9}, Lp4/d0;-><init>(ILp4/k;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    const/4 v7, 0x0

    .line 230
    goto :goto_6

    .line 231
    :cond_7
    move/from16 v19, v10

    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    const/16 v10, 0x9

    .line 235
    .line 236
    :goto_6
    new-instance v10, Lp4/d0;

    .line 237
    .line 238
    move-object/from16 v22, v7

    .line 239
    .line 240
    const/4 v7, 0x3

    .line 241
    invoke-direct {v10, v7, v6, v9}, Lp4/d0;-><init>(ILp4/k;I)V

    .line 242
    .line 243
    .line 244
    iget v7, v15, Lp4/d0;->d:I

    .line 245
    .line 246
    iput v7, v10, Lp4/d0;->d:I

    .line 247
    .line 248
    iget v7, v15, Lp4/d0;->f:I

    .line 249
    .line 250
    iput v7, v10, Lp4/d0;->f:I

    .line 251
    .line 252
    iget v7, v15, Lp4/d0;->e:I

    .line 253
    .line 254
    iput v7, v10, Lp4/d0;->e:I

    .line 255
    .line 256
    iget v7, v15, Lp4/d0;->g:I

    .line 257
    .line 258
    iput v7, v10, Lp4/d0;->g:I

    .line 259
    .line 260
    invoke-virtual {v11, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    const/4 v6, 0x1

    .line 267
    add-int/2addr v8, v6

    .line 268
    move-object/from16 v7, v22

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_8
    move/from16 v19, v10

    .line 272
    .line 273
    const/4 v6, 0x1

    .line 274
    :goto_7
    add-int/lit8 v9, v21, -0x1

    .line 275
    .line 276
    move v6, v9

    .line 277
    move/from16 v10, v19

    .line 278
    .line 279
    move/from16 v9, v20

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    move/from16 v20, v9

    .line 283
    .line 284
    move/from16 v19, v10

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    if-eqz v18, :cond_a

    .line 288
    .line 289
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    add-int/lit8 v8, v8, -0x1

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_a
    iput v6, v15, Lp4/d0;->a:I

    .line 296
    .line 297
    iput-boolean v6, v15, Lp4/d0;->c:Z

    .line 298
    .line 299
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_b
    move/from16 v17, v6

    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :goto_8
    iget-object v5, v15, Lp4/d0;->b:Lp4/k;

    .line 308
    .line 309
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    :goto_9
    add-int/2addr v8, v6

    .line 313
    move/from16 v5, p3

    .line 314
    .line 315
    move/from16 v6, v17

    .line 316
    .line 317
    move/from16 v10, v19

    .line 318
    .line 319
    move/from16 v9, v20

    .line 320
    .line 321
    const/4 v12, 0x1

    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :cond_c
    move/from16 v17, v6

    .line 325
    .line 326
    move/from16 v20, v9

    .line 327
    .line 328
    move/from16 v19, v10

    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_d
    move/from16 v17, v6

    .line 332
    .line 333
    move/from16 v20, v9

    .line 334
    .line 335
    move/from16 v19, v10

    .line 336
    .line 337
    const/4 v6, 0x1

    .line 338
    iget-object v5, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 339
    .line 340
    iget-object v8, v13, Lp4/a;->a:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    sub-int/2addr v9, v6

    .line 347
    :goto_a
    if-ltz v9, :cond_10

    .line 348
    .line 349
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    check-cast v10, Lp4/d0;

    .line 354
    .line 355
    iget v11, v10, Lp4/d0;->a:I

    .line 356
    .line 357
    const/4 v12, 0x3

    .line 358
    if-eq v11, v6, :cond_f

    .line 359
    .line 360
    if-eq v11, v12, :cond_e

    .line 361
    .line 362
    packed-switch v11, :pswitch_data_0

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :pswitch_0
    iget-object v6, v10, Lp4/d0;->h:Landroidx/lifecycle/o;

    .line 367
    .line 368
    iput-object v6, v10, Lp4/d0;->i:Landroidx/lifecycle/o;

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :pswitch_1
    iget-object v6, v10, Lp4/d0;->b:Lp4/k;

    .line 372
    .line 373
    move-object v7, v6

    .line 374
    goto :goto_b

    .line 375
    :pswitch_2
    const/4 v7, 0x0

    .line 376
    goto :goto_b

    .line 377
    :cond_e
    :pswitch_3
    iget-object v6, v10, Lp4/d0;->b:Lp4/k;

    .line 378
    .line 379
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_f
    :pswitch_4
    iget-object v6, v10, Lp4/d0;->b:Lp4/k;

    .line 384
    .line 385
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    :goto_b
    add-int/lit8 v9, v9, -0x1

    .line 389
    .line 390
    const/4 v6, 0x1

    .line 391
    goto :goto_a

    .line 392
    :cond_10
    :goto_c
    if-nez v19, :cond_12

    .line 393
    .line 394
    iget-boolean v5, v13, Lp4/a;->g:Z

    .line 395
    .line 396
    if-eqz v5, :cond_11

    .line 397
    .line 398
    goto :goto_d

    .line 399
    :cond_11
    const/4 v10, 0x0

    .line 400
    goto :goto_e

    .line 401
    :cond_12
    :goto_d
    const/4 v10, 0x1

    .line 402
    :goto_e
    add-int/lit8 v9, v20, 0x1

    .line 403
    .line 404
    move/from16 v5, p3

    .line 405
    .line 406
    move/from16 v6, v17

    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :cond_13
    move/from16 v17, v6

    .line 411
    .line 412
    iget-object v5, v1, Lp4/x;->K:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 415
    .line 416
    .line 417
    if-nez v17, :cond_16

    .line 418
    .line 419
    iget v5, v1, Lp4/x;->s:I

    .line 420
    .line 421
    const/4 v6, 0x1

    .line 422
    if-lt v5, v6, :cond_16

    .line 423
    .line 424
    move/from16 v5, p3

    .line 425
    .line 426
    :goto_f
    if-ge v5, v3, :cond_16

    .line 427
    .line 428
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Lp4/a;

    .line 433
    .line 434
    iget-object v6, v6, Lp4/a;->a:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    :cond_14
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    if-eqz v7, :cond_15

    .line 445
    .line 446
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    check-cast v7, Lp4/d0;

    .line 451
    .line 452
    iget-object v7, v7, Lp4/d0;->b:Lp4/k;

    .line 453
    .line 454
    if-eqz v7, :cond_14

    .line 455
    .line 456
    iget-object v8, v7, Lp4/k;->r:Lp4/x;

    .line 457
    .line 458
    if-eqz v8, :cond_14

    .line 459
    .line 460
    invoke-virtual {v1, v7}, Lp4/x;->f(Lp4/k;)Lp4/c0;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-virtual {v4, v7}, Lba/a;->C(Lp4/c0;)V

    .line 465
    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_16
    const-string v4, "Unknown cmd: "

    .line 472
    .line 473
    move/from16 v5, p3

    .line 474
    .line 475
    :goto_11
    const/4 v6, -0x1

    .line 476
    if-ge v5, v3, :cond_23

    .line 477
    .line 478
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    check-cast v7, Lp4/a;

    .line 483
    .line 484
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v8

    .line 488
    check-cast v8, Ljava/lang/Boolean;

    .line 489
    .line 490
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-eqz v8, :cond_1f

    .line 495
    .line 496
    invoke-virtual {v7, v6}, Lp4/a;->b(I)V

    .line 497
    .line 498
    .line 499
    iget-object v6, v7, Lp4/a;->p:Lp4/x;

    .line 500
    .line 501
    iget-object v8, v7, Lp4/a;->a:Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v9

    .line 507
    const/4 v10, 0x1

    .line 508
    sub-int/2addr v9, v10

    .line 509
    :goto_12
    if-ltz v9, :cond_1e

    .line 510
    .line 511
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    check-cast v11, Lp4/d0;

    .line 516
    .line 517
    iget-object v12, v11, Lp4/d0;->b:Lp4/k;

    .line 518
    .line 519
    if-eqz v12, :cond_1d

    .line 520
    .line 521
    iget-object v13, v12, Lp4/k;->H:Lp4/j;

    .line 522
    .line 523
    if-nez v13, :cond_17

    .line 524
    .line 525
    goto :goto_13

    .line 526
    :cond_17
    invoke-virtual {v12}, Lp4/k;->c()Lp4/j;

    .line 527
    .line 528
    .line 529
    move-result-object v13

    .line 530
    iput-boolean v10, v13, Lp4/j;->a:Z

    .line 531
    .line 532
    :goto_13
    iget v10, v7, Lp4/a;->f:I

    .line 533
    .line 534
    const/16 v13, 0x2002

    .line 535
    .line 536
    const/16 v14, 0x1001

    .line 537
    .line 538
    if-eq v10, v14, :cond_1b

    .line 539
    .line 540
    if-eq v10, v13, :cond_1a

    .line 541
    .line 542
    const/16 v13, 0x1004

    .line 543
    .line 544
    const/16 v14, 0x2005

    .line 545
    .line 546
    if-eq v10, v14, :cond_1b

    .line 547
    .line 548
    const/16 v15, 0x1003

    .line 549
    .line 550
    if-eq v10, v15, :cond_19

    .line 551
    .line 552
    if-eq v10, v13, :cond_18

    .line 553
    .line 554
    const/4 v13, 0x0

    .line 555
    goto :goto_14

    .line 556
    :cond_18
    const/16 v13, 0x2005

    .line 557
    .line 558
    goto :goto_14

    .line 559
    :cond_19
    const/16 v13, 0x1003

    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_1a
    const/16 v13, 0x1001

    .line 563
    .line 564
    :cond_1b
    :goto_14
    iget-object v10, v12, Lp4/k;->H:Lp4/j;

    .line 565
    .line 566
    if-nez v10, :cond_1c

    .line 567
    .line 568
    if-nez v13, :cond_1c

    .line 569
    .line 570
    goto :goto_15

    .line 571
    :cond_1c
    invoke-virtual {v12}, Lp4/k;->c()Lp4/j;

    .line 572
    .line 573
    .line 574
    iget-object v10, v12, Lp4/k;->H:Lp4/j;

    .line 575
    .line 576
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    :goto_15
    invoke-virtual {v12}, Lp4/k;->c()Lp4/j;

    .line 580
    .line 581
    .line 582
    iget-object v10, v12, Lp4/k;->H:Lp4/j;

    .line 583
    .line 584
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    :cond_1d
    iget v10, v11, Lp4/d0;->a:I

    .line 588
    .line 589
    packed-switch v10, :pswitch_data_1

    .line 590
    .line 591
    .line 592
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 593
    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    iget v3, v11, Lp4/d0;->a:I

    .line 600
    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    throw v0

    .line 612
    :pswitch_6
    iget-object v10, v11, Lp4/d0;->h:Landroidx/lifecycle/o;

    .line 613
    .line 614
    invoke-virtual {v6, v12, v10}, Lp4/x;->R(Lp4/k;Landroidx/lifecycle/o;)V

    .line 615
    .line 616
    .line 617
    :goto_16
    const/4 v10, 0x1

    .line 618
    goto/16 :goto_17

    .line 619
    .line 620
    :pswitch_7
    invoke-virtual {v6, v12}, Lp4/x;->S(Lp4/k;)V

    .line 621
    .line 622
    .line 623
    goto :goto_16

    .line 624
    :pswitch_8
    const/4 v10, 0x0

    .line 625
    invoke-virtual {v6, v10}, Lp4/x;->S(Lp4/k;)V

    .line 626
    .line 627
    .line 628
    goto :goto_16

    .line 629
    :pswitch_9
    iget v10, v11, Lp4/d0;->d:I

    .line 630
    .line 631
    iget v13, v11, Lp4/d0;->e:I

    .line 632
    .line 633
    iget v14, v11, Lp4/d0;->f:I

    .line 634
    .line 635
    iget v11, v11, Lp4/d0;->g:I

    .line 636
    .line 637
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 638
    .line 639
    .line 640
    const/4 v10, 0x1

    .line 641
    invoke-virtual {v6, v12, v10}, Lp4/x;->Q(Lp4/k;Z)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v12}, Lp4/x;->g(Lp4/k;)V

    .line 645
    .line 646
    .line 647
    goto :goto_16

    .line 648
    :pswitch_a
    iget v10, v11, Lp4/d0;->d:I

    .line 649
    .line 650
    iget v13, v11, Lp4/d0;->e:I

    .line 651
    .line 652
    iget v14, v11, Lp4/d0;->f:I

    .line 653
    .line 654
    iget v11, v11, Lp4/d0;->g:I

    .line 655
    .line 656
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6, v12}, Lp4/x;->c(Lp4/k;)V

    .line 660
    .line 661
    .line 662
    goto :goto_16

    .line 663
    :pswitch_b
    iget v10, v11, Lp4/d0;->d:I

    .line 664
    .line 665
    iget v13, v11, Lp4/d0;->e:I

    .line 666
    .line 667
    iget v14, v11, Lp4/d0;->f:I

    .line 668
    .line 669
    iget v11, v11, Lp4/d0;->g:I

    .line 670
    .line 671
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 672
    .line 673
    .line 674
    const/4 v10, 0x1

    .line 675
    invoke-virtual {v6, v12, v10}, Lp4/x;->Q(Lp4/k;Z)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v6, v12}, Lp4/x;->C(Lp4/k;)V

    .line 679
    .line 680
    .line 681
    goto :goto_16

    .line 682
    :pswitch_c
    iget v10, v11, Lp4/d0;->d:I

    .line 683
    .line 684
    iget v13, v11, Lp4/d0;->e:I

    .line 685
    .line 686
    iget v14, v11, Lp4/d0;->f:I

    .line 687
    .line 688
    iget v11, v11, Lp4/d0;->g:I

    .line 689
    .line 690
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-static {v12}, Lp4/x;->U(Lp4/k;)V

    .line 697
    .line 698
    .line 699
    goto :goto_16

    .line 700
    :pswitch_d
    iget v10, v11, Lp4/d0;->d:I

    .line 701
    .line 702
    iget v13, v11, Lp4/d0;->e:I

    .line 703
    .line 704
    iget v14, v11, Lp4/d0;->f:I

    .line 705
    .line 706
    iget v11, v11, Lp4/d0;->g:I

    .line 707
    .line 708
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v6, v12}, Lp4/x;->a(Lp4/k;)Lp4/c0;

    .line 712
    .line 713
    .line 714
    goto :goto_16

    .line 715
    :pswitch_e
    iget v10, v11, Lp4/d0;->d:I

    .line 716
    .line 717
    iget v13, v11, Lp4/d0;->e:I

    .line 718
    .line 719
    iget v14, v11, Lp4/d0;->f:I

    .line 720
    .line 721
    iget v11, v11, Lp4/d0;->g:I

    .line 722
    .line 723
    invoke-virtual {v12, v10, v13, v14, v11}, Lp4/k;->r(IIII)V

    .line 724
    .line 725
    .line 726
    const/4 v10, 0x1

    .line 727
    invoke-virtual {v6, v12, v10}, Lp4/x;->Q(Lp4/k;Z)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v6, v12}, Lp4/x;->L(Lp4/k;)V

    .line 731
    .line 732
    .line 733
    :goto_17
    add-int/lit8 v9, v9, -0x1

    .line 734
    .line 735
    goto/16 :goto_12

    .line 736
    .line 737
    :cond_1e
    const/4 v14, 0x0

    .line 738
    goto/16 :goto_1d

    .line 739
    .line 740
    :cond_1f
    const/4 v10, 0x1

    .line 741
    invoke-virtual {v7, v10}, Lp4/a;->b(I)V

    .line 742
    .line 743
    .line 744
    iget-object v6, v7, Lp4/a;->p:Lp4/x;

    .line 745
    .line 746
    iget-object v8, v7, Lp4/a;->a:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 749
    .line 750
    .line 751
    move-result v9

    .line 752
    const/4 v12, 0x0

    .line 753
    :goto_18
    if-ge v12, v9, :cond_1e

    .line 754
    .line 755
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    check-cast v10, Lp4/d0;

    .line 760
    .line 761
    iget-object v11, v10, Lp4/d0;->b:Lp4/k;

    .line 762
    .line 763
    if-eqz v11, :cond_22

    .line 764
    .line 765
    iget-object v13, v11, Lp4/k;->H:Lp4/j;

    .line 766
    .line 767
    if-nez v13, :cond_20

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_20
    invoke-virtual {v11}, Lp4/k;->c()Lp4/j;

    .line 771
    .line 772
    .line 773
    move-result-object v13

    .line 774
    const/4 v14, 0x0

    .line 775
    iput-boolean v14, v13, Lp4/j;->a:Z

    .line 776
    .line 777
    :goto_19
    iget v13, v7, Lp4/a;->f:I

    .line 778
    .line 779
    iget-object v14, v11, Lp4/k;->H:Lp4/j;

    .line 780
    .line 781
    if-nez v14, :cond_21

    .line 782
    .line 783
    if-nez v13, :cond_21

    .line 784
    .line 785
    goto :goto_1a

    .line 786
    :cond_21
    invoke-virtual {v11}, Lp4/k;->c()Lp4/j;

    .line 787
    .line 788
    .line 789
    iget-object v13, v11, Lp4/k;->H:Lp4/j;

    .line 790
    .line 791
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    :goto_1a
    invoke-virtual {v11}, Lp4/k;->c()Lp4/j;

    .line 795
    .line 796
    .line 797
    iget-object v13, v11, Lp4/k;->H:Lp4/j;

    .line 798
    .line 799
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    :cond_22
    iget v13, v10, Lp4/d0;->a:I

    .line 803
    .line 804
    packed-switch v13, :pswitch_data_2

    .line 805
    .line 806
    .line 807
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 808
    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    iget v3, v10, Lp4/d0;->a:I

    .line 815
    .line 816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    throw v0

    .line 827
    :pswitch_10
    iget-object v10, v10, Lp4/d0;->i:Landroidx/lifecycle/o;

    .line 828
    .line 829
    invoke-virtual {v6, v11, v10}, Lp4/x;->R(Lp4/k;Landroidx/lifecycle/o;)V

    .line 830
    .line 831
    .line 832
    :goto_1b
    const/4 v14, 0x0

    .line 833
    goto/16 :goto_1c

    .line 834
    .line 835
    :pswitch_11
    const/4 v13, 0x0

    .line 836
    invoke-virtual {v6, v13}, Lp4/x;->S(Lp4/k;)V

    .line 837
    .line 838
    .line 839
    goto :goto_1b

    .line 840
    :pswitch_12
    const/4 v13, 0x0

    .line 841
    invoke-virtual {v6, v11}, Lp4/x;->S(Lp4/k;)V

    .line 842
    .line 843
    .line 844
    goto :goto_1b

    .line 845
    :pswitch_13
    const/4 v13, 0x0

    .line 846
    iget v14, v10, Lp4/d0;->d:I

    .line 847
    .line 848
    iget v15, v10, Lp4/d0;->e:I

    .line 849
    .line 850
    iget v13, v10, Lp4/d0;->f:I

    .line 851
    .line 852
    iget v10, v10, Lp4/d0;->g:I

    .line 853
    .line 854
    invoke-virtual {v11, v14, v15, v13, v10}, Lp4/k;->r(IIII)V

    .line 855
    .line 856
    .line 857
    const/4 v14, 0x0

    .line 858
    invoke-virtual {v6, v11, v14}, Lp4/x;->Q(Lp4/k;Z)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v6, v11}, Lp4/x;->c(Lp4/k;)V

    .line 862
    .line 863
    .line 864
    goto :goto_1b

    .line 865
    :pswitch_14
    iget v13, v10, Lp4/d0;->d:I

    .line 866
    .line 867
    iget v14, v10, Lp4/d0;->e:I

    .line 868
    .line 869
    iget v15, v10, Lp4/d0;->f:I

    .line 870
    .line 871
    iget v10, v10, Lp4/d0;->g:I

    .line 872
    .line 873
    invoke-virtual {v11, v13, v14, v15, v10}, Lp4/k;->r(IIII)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v6, v11}, Lp4/x;->g(Lp4/k;)V

    .line 877
    .line 878
    .line 879
    goto :goto_1b

    .line 880
    :pswitch_15
    iget v13, v10, Lp4/d0;->d:I

    .line 881
    .line 882
    iget v14, v10, Lp4/d0;->e:I

    .line 883
    .line 884
    iget v15, v10, Lp4/d0;->f:I

    .line 885
    .line 886
    iget v10, v10, Lp4/d0;->g:I

    .line 887
    .line 888
    invoke-virtual {v11, v13, v14, v15, v10}, Lp4/k;->r(IIII)V

    .line 889
    .line 890
    .line 891
    const/4 v14, 0x0

    .line 892
    invoke-virtual {v6, v11, v14}, Lp4/x;->Q(Lp4/k;Z)V

    .line 893
    .line 894
    .line 895
    invoke-static {v11}, Lp4/x;->U(Lp4/k;)V

    .line 896
    .line 897
    .line 898
    goto :goto_1b

    .line 899
    :pswitch_16
    iget v13, v10, Lp4/d0;->d:I

    .line 900
    .line 901
    iget v14, v10, Lp4/d0;->e:I

    .line 902
    .line 903
    iget v15, v10, Lp4/d0;->f:I

    .line 904
    .line 905
    iget v10, v10, Lp4/d0;->g:I

    .line 906
    .line 907
    invoke-virtual {v11, v13, v14, v15, v10}, Lp4/k;->r(IIII)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v6, v11}, Lp4/x;->C(Lp4/k;)V

    .line 911
    .line 912
    .line 913
    goto :goto_1b

    .line 914
    :pswitch_17
    iget v13, v10, Lp4/d0;->d:I

    .line 915
    .line 916
    iget v14, v10, Lp4/d0;->e:I

    .line 917
    .line 918
    iget v15, v10, Lp4/d0;->f:I

    .line 919
    .line 920
    iget v10, v10, Lp4/d0;->g:I

    .line 921
    .line 922
    invoke-virtual {v11, v13, v14, v15, v10}, Lp4/k;->r(IIII)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v6, v11}, Lp4/x;->L(Lp4/k;)V

    .line 926
    .line 927
    .line 928
    goto :goto_1b

    .line 929
    :pswitch_18
    iget v13, v10, Lp4/d0;->d:I

    .line 930
    .line 931
    iget v14, v10, Lp4/d0;->e:I

    .line 932
    .line 933
    iget v15, v10, Lp4/d0;->f:I

    .line 934
    .line 935
    iget v10, v10, Lp4/d0;->g:I

    .line 936
    .line 937
    invoke-virtual {v11, v13, v14, v15, v10}, Lp4/k;->r(IIII)V

    .line 938
    .line 939
    .line 940
    const/4 v14, 0x0

    .line 941
    invoke-virtual {v6, v11, v14}, Lp4/x;->Q(Lp4/k;Z)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v6, v11}, Lp4/x;->a(Lp4/k;)Lp4/c0;

    .line 945
    .line 946
    .line 947
    :goto_1c
    add-int/lit8 v12, v12, 0x1

    .line 948
    .line 949
    goto/16 :goto_18

    .line 950
    .line 951
    :goto_1d
    add-int/lit8 v5, v5, 0x1

    .line 952
    .line 953
    goto/16 :goto_11

    .line 954
    .line 955
    :cond_23
    add-int/lit8 v4, v3, -0x1

    .line 956
    .line 957
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v4

    .line 961
    check-cast v4, Ljava/lang/Boolean;

    .line 962
    .line 963
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 964
    .line 965
    .line 966
    move-result v4

    .line 967
    move/from16 v5, p3

    .line 968
    .line 969
    :goto_1e
    if-ge v5, v3, :cond_28

    .line 970
    .line 971
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v7

    .line 975
    check-cast v7, Lp4/a;

    .line 976
    .line 977
    if-eqz v4, :cond_25

    .line 978
    .line 979
    iget-object v8, v7, Lp4/a;->a:Ljava/util/ArrayList;

    .line 980
    .line 981
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 982
    .line 983
    .line 984
    move-result v8

    .line 985
    const/16 v16, 0x1

    .line 986
    .line 987
    add-int/lit8 v8, v8, -0x1

    .line 988
    .line 989
    :goto_1f
    if-ltz v8, :cond_27

    .line 990
    .line 991
    iget-object v9, v7, Lp4/a;->a:Ljava/util/ArrayList;

    .line 992
    .line 993
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v9

    .line 997
    check-cast v9, Lp4/d0;

    .line 998
    .line 999
    iget-object v9, v9, Lp4/d0;->b:Lp4/k;

    .line 1000
    .line 1001
    if-eqz v9, :cond_24

    .line 1002
    .line 1003
    invoke-virtual {v1, v9}, Lp4/x;->f(Lp4/k;)Lp4/c0;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v9

    .line 1007
    invoke-virtual {v9}, Lp4/c0;->j()V

    .line 1008
    .line 1009
    .line 1010
    :cond_24
    add-int/lit8 v8, v8, -0x1

    .line 1011
    .line 1012
    goto :goto_1f

    .line 1013
    :cond_25
    iget-object v7, v7, Lp4/a;->a:Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v7

    .line 1019
    :cond_26
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v8

    .line 1023
    if-eqz v8, :cond_27

    .line 1024
    .line 1025
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    check-cast v8, Lp4/d0;

    .line 1030
    .line 1031
    iget-object v8, v8, Lp4/d0;->b:Lp4/k;

    .line 1032
    .line 1033
    if-eqz v8, :cond_26

    .line 1034
    .line 1035
    invoke-virtual {v1, v8}, Lp4/x;->f(Lp4/k;)Lp4/c0;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v8

    .line 1039
    invoke-virtual {v8}, Lp4/c0;->j()V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_20

    .line 1043
    :cond_27
    add-int/lit8 v5, v5, 0x1

    .line 1044
    .line 1045
    goto :goto_1e

    .line 1046
    :cond_28
    iget v5, v1, Lp4/x;->s:I

    .line 1047
    .line 1048
    const/4 v10, 0x1

    .line 1049
    invoke-virtual {v1, v5, v10}, Lp4/x;->I(IZ)V

    .line 1050
    .line 1051
    .line 1052
    new-instance v5, Ljava/util/HashSet;

    .line 1053
    .line 1054
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    move/from16 v7, p3

    .line 1058
    .line 1059
    :goto_21
    if-ge v7, v3, :cond_2b

    .line 1060
    .line 1061
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v8

    .line 1065
    check-cast v8, Lp4/a;

    .line 1066
    .line 1067
    iget-object v8, v8, Lp4/a;->a:Ljava/util/ArrayList;

    .line 1068
    .line 1069
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v8

    .line 1073
    :cond_29
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v9

    .line 1077
    if-eqz v9, :cond_2a

    .line 1078
    .line 1079
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v9

    .line 1083
    check-cast v9, Lp4/d0;

    .line 1084
    .line 1085
    iget-object v9, v9, Lp4/d0;->b:Lp4/k;

    .line 1086
    .line 1087
    if-eqz v9, :cond_29

    .line 1088
    .line 1089
    iget-object v9, v9, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 1090
    .line 1091
    if-eqz v9, :cond_29

    .line 1092
    .line 1093
    invoke-virtual {v1}, Lp4/x;->B()Ln6/a;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v10

    .line 1097
    invoke-static {v9, v10}, Lp4/g;->d(Landroid/view/ViewGroup;Ln6/a;)Lp4/g;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v9

    .line 1101
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    goto :goto_22

    .line 1105
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 1106
    .line 1107
    goto :goto_21

    .line 1108
    :cond_2b
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v5

    .line 1112
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    if-eqz v7, :cond_2d

    .line 1117
    .line 1118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v7

    .line 1122
    check-cast v7, Lp4/g;

    .line 1123
    .line 1124
    iput-boolean v4, v7, Lp4/g;->d:Z

    .line 1125
    .line 1126
    iget-object v8, v7, Lp4/g;->b:Ljava/util/ArrayList;

    .line 1127
    .line 1128
    monitor-enter v8

    .line 1129
    :try_start_0
    invoke-virtual {v7}, Lp4/g;->e()V

    .line 1130
    .line 1131
    .line 1132
    const/4 v9, 0x0

    .line 1133
    iput-boolean v9, v7, Lp4/g;->e:Z

    .line 1134
    .line 1135
    iget-object v9, v7, Lp4/g;->b:Ljava/util/ArrayList;

    .line 1136
    .line 1137
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1138
    .line 1139
    .line 1140
    move-result v9

    .line 1141
    add-int/lit8 v9, v9, -0x1

    .line 1142
    .line 1143
    if-gez v9, :cond_2c

    .line 1144
    .line 1145
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-virtual {v7}, Lp4/g;->b()V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_23

    .line 1150
    :catchall_0
    move-exception v0

    .line 1151
    goto :goto_24

    .line 1152
    :cond_2c
    :try_start_1
    iget-object v0, v7, Lp4/g;->b:Ljava/util/ArrayList;

    .line 1153
    .line 1154
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    check-cast v0, Lp4/g0;

    .line 1159
    .line 1160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1161
    .line 1162
    .line 1163
    const/4 v0, 0x0

    .line 1164
    throw v0

    .line 1165
    :goto_24
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1166
    throw v0

    .line 1167
    :cond_2d
    move/from16 v4, p3

    .line 1168
    .line 1169
    :goto_25
    if-ge v4, v3, :cond_2f

    .line 1170
    .line 1171
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v5

    .line 1175
    check-cast v5, Lp4/a;

    .line 1176
    .line 1177
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v7

    .line 1181
    check-cast v7, Ljava/lang/Boolean;

    .line 1182
    .line 1183
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v7

    .line 1187
    if-eqz v7, :cond_2e

    .line 1188
    .line 1189
    iget v7, v5, Lp4/a;->r:I

    .line 1190
    .line 1191
    if-ltz v7, :cond_2e

    .line 1192
    .line 1193
    iput v6, v5, Lp4/a;->r:I

    .line 1194
    .line 1195
    :cond_2e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    add-int/lit8 v4, v4, 0x1

    .line 1199
    .line 1200
    goto :goto_25

    .line 1201
    :cond_2f
    return-void

    .line 1202
    nop

    .line 1203
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final y(I)Lp4/k;
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/x;->c:Lba/a;

    .line 2
    .line 3
    iget-object v1, v0, Lba/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lp4/k;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v4, v3, Lp4/k;->v:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_0

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, v0, Lba/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lp4/c0;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, v1, Lp4/c0;->c:Lp4/k;

    .line 58
    .line 59
    iget v2, v1, Lp4/k;->v:I

    .line 60
    .line 61
    if-ne v2, p1, :cond_2

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method

.method public final z(Lp4/k;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p1, Lp4/k;->E:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Lp4/k;->w:I

    .line 7
    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lp4/x;->u:Lp4/o;

    .line 12
    .line 13
    invoke-virtual {v0}, Lp4/o;->P()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lp4/x;->u:Lp4/o;

    .line 20
    .line 21
    iget p1, p1, Lp4/k;->w:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lp4/o;->O(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method
