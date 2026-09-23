.class public final Lv0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c2;


# instance fields
.field public final a:J

.field public final b:Lw0/c1;

.field public final c:J

.field public d:Lv0/k;

.field public e:Lw0/p;

.field public final f:Lr1/p;


# direct methods
.method public constructor <init>(JLw0/c1;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lv0/h;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lv0/h;->b:Lw0/c1;

    .line 7
    .line 8
    iput-wide p4, p0, Lv0/h;->c:J

    .line 9
    .line 10
    sget-object p4, Lv0/k;->c:Lv0/k;

    .line 11
    .line 12
    iput-object p4, p0, Lv0/h;->d:Lv0/k;

    .line 13
    .line 14
    new-instance p4, Lv0/g;

    .line 15
    .line 16
    const/4 p5, 0x2

    .line 17
    invoke-direct {p4, p0, p5}, Lv0/g;-><init>(Lv0/h;I)V

    .line 18
    .line 19
    .line 20
    new-instance p5, Lv0/i;

    .line 21
    .line 22
    invoke-direct {p5, p4, p3, p1, p2}, Lv0/i;-><init>(Lv0/g;Lw0/c1;J)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lv0/j;

    .line 26
    .line 27
    invoke-direct {v0, p4, p3, p1, p2}, Lv0/j;-><init>(Lv0/g;Lw0/c1;J)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ll0/e0;

    .line 31
    .line 32
    invoke-direct {p1, v0, p5}, Ll0/e0;-><init>(Lw0/n;Ll0/z0;)V

    .line 33
    .line 34
    .line 35
    sget-object p2, Lk2/i0;->a:Lk2/o;

    .line 36
    .line 37
    new-instance p2, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 38
    .line 39
    const/4 p3, 0x4

    .line 40
    invoke-direct {p2, v0, p5, p1, p3}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lk2/t;->a:Lk2/s;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerHoverIconModifierElement;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lq2/z0;->a(Lr1/p;)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lv0/h;->f:Lr1/p;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lb3/l0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/h;->d:Lv0/k;

    .line 2
    .line 3
    iget-object v0, v0, Lv0/k;->b:Lb3/l0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lb3/l0;->a:Lb3/k0;

    .line 8
    .line 9
    iget-object v0, v0, Lb3/k0;->a:Lb3/g;

    .line 10
    .line 11
    iget-object v1, p1, Lb3/l0;->a:Lb3/k0;

    .line 12
    .line 13
    iget-object v1, v1, Lb3/k0;->a:Lb3/g;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lv0/h;->b:Lw0/c1;

    .line 22
    .line 23
    iget-object v0, v0, Lw0/c1;->i:Lw0/e0;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-wide v1, p0, Lv0/h;->a:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lw0/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lv0/h;->d:Lv0/k;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v2, p1, v1}, Lv0/k;->a(Lv0/k;Lq2/h1;Lb3/l0;I)Lv0/k;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lv0/h;->d:Lv0/k;

    .line 45
    .line 46
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/h;->e:Lw0/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lv0/h;->b:Lw0/c1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lw0/c1;->d(Lw0/p;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lv0/h;->e:Lw0/p;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/h;->e:Lw0/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lv0/h;->b:Lw0/c1;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lw0/c1;->d(Lw0/p;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lv0/h;->e:Lw0/p;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    new-instance v0, Lw0/p;

    .line 2
    .line 3
    new-instance v1, Lv0/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lv0/g;-><init>(Lv0/h;I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lv0/g;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lv0/g;-><init>(Lv0/h;I)V

    .line 13
    .line 14
    .line 15
    iget-wide v3, p0, Lv0/h;->a:J

    .line 16
    .line 17
    invoke-direct {v0, v3, v4, v1, v2}, Lw0/p;-><init>(JLv0/g;Lv0/g;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lv0/h;->b:Lw0/c1;

    .line 21
    .line 22
    iget-object v2, v1, Lw0/c1;->c:Ls/a0;

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v7, v3, v5

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v6, "The selectable contains an invalid id: "

    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-static {v5}, Lc0/b;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v2, v3, v4}, Ls/a0;->b(J)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v6, "Another selectable with the id: "

    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v6, ".selectableId has already subscribed."

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Lc0/b;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v2, v3, v4, v0}, Ls/a0;->h(JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, v1, Lw0/c1;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    iput-boolean v2, v1, Lw0/c1;->a:Z

    .line 86
    .line 87
    iput-object v0, p0, Lv0/h;->e:Lw0/p;

    .line 88
    .line 89
    return-void
.end method
