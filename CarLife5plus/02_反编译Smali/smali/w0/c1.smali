.class public final Lw0/c1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final l:Lu0/j;


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Ls/a0;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public e:Lw0/e0;

.field public f:Lj3/c;

.field public g:Lw0/u0;

.field public h:Lw0/f0;

.field public i:Lw0/e0;

.field public j:Lw0/e0;

.field public final k:Lf1/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf0/q;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf0/q;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lv/x0;

    .line 9
    .line 10
    const/16 v2, 0x11

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lv/x0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lu0/j;

    .line 16
    .line 17
    const/16 v3, 0x13

    .line 18
    .line 19
    invoke-direct {v2, v3, v0, v1}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lw0/c1;->l:Lu0/j;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

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
    iput-object v0, p0, Lw0/c1;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object v0, Ls/o;->a:Ls/a0;

    .line 12
    .line 13
    new-instance v0, Ls/a0;

    .line 14
    .line 15
    invoke-direct {v0}, Ls/a0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lw0/c1;->c:Ls/a0;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lw0/c1;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    sget-object p1, Ls/o;->a:Ls/a0;

    .line 28
    .line 29
    const-string p2, "null cannot be cast to non-null type androidx.collection.LongObjectMap<V of androidx.collection.LongObjectMapKt.emptyLongObjectMap>"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lw0/c1;->k:Lf1/k1;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ls/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c1;->k:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls/a0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b(Lo2/w;JJLw0/a0;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c1;->g:Lw0/u0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lw0/u0;->a:Lw0/w0;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lw0/w0;->b(Lo2/w;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    invoke-virtual {v0, p1, p4, p5}, Lw0/w0;->b(Lo2/w;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p4

    .line 15
    invoke-virtual {v0, p7}, Lw0/w0;->l(Z)V

    .line 16
    .line 17
    .line 18
    move-object p7, p6

    .line 19
    const/4 p6, 0x0

    .line 20
    move-object p1, v0

    .line 21
    invoke-virtual/range {p1 .. p7}, Lw0/w0;->o(JJZLw0/a0;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final c(Lo2/w;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lw0/c1;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lw0/c1;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, La8/d;

    .line 8
    .line 9
    const/16 v2, 0x1d

    .line 10
    .line 11
    invoke-direct {v0, v2, p1}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lu8/a;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {p1, v2, v0}, Lu8/a;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lw0/c1;->a:Z

    .line 25
    .line 26
    :cond_0
    return-object v1
.end method

.method public final d(Lw0/p;)V
    .locals 3

    .line 1
    iget-wide v0, p1, Lw0/p;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lw0/c1;->c:Ls/a0;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ls/a0;->b(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lw0/c1;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-wide v0, p1, Lw0/p;->a:J

    .line 18
    .line 19
    invoke-virtual {v2, v0, v1}, Ls/a0;->g(J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lw0/c1;->j:Lw0/e0;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lw0/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
