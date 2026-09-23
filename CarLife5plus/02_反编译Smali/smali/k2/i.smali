.class public final Lk2/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw0/n;
.implements Lmb/c;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls/q;Landroid/support/v4/media/session/t;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/i;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lk2/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv9/b;Lv9/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lk2/i;->a:Z

    iput-object p1, p0, Lk2/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lk2/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw0/r1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lk2/i;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lk2/i;->a:Z

    return-void
.end method


# virtual methods
.method public a(Llb/k0;Llb/k0;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lk2/i;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lk2/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lv9/b;

    .line 6
    .line 7
    iget-object v2, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lv9/b;

    .line 10
    .line 11
    const-string v3, "c1"

    .line 12
    .line 13
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "c2"

    .line 17
    .line 18
    invoke-static {p2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2}, Llb/k0;->k()Lv9/h;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    instance-of v3, p1, Lv9/q0;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    instance-of v3, p2, Lv9/q0;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    check-cast p1, Lv9/q0;

    .line 47
    .line 48
    check-cast p2, Lv9/q0;

    .line 49
    .line 50
    new-instance v3, Lc8/s;

    .line 51
    .line 52
    const/16 v4, 0x11

    .line 53
    .line 54
    invoke-direct {v3, v4, v1, v2}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lxa/b;->a:Lxa/b;

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2, v0, v3}, Lxa/b;->d(Lv9/q0;Lv9/q0;ZLf9/n;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    return p1

    .line 64
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk2/i;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lw0/r1;

    .line 8
    .line 9
    iget-object v1, p0, Lk2/i;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lb3/n0;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lw0/r1;->a(Lw0/r1;Lb3/n0;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c(JLw0/a0;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw0/r1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lw0/r1;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lg3/w;->a:Lb3/g;

    .line 16
    .line 17
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Ll0/s0;->d()Ll0/q1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v2, p0

    .line 43
    move-wide v4, p1

    .line 44
    move-object v7, p3

    .line 45
    invoke-virtual/range {v2 .. v7}, Lk2/i;->f(Lg3/w;JZLw0/a0;)J

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method public d(JLw0/a0;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw0/r1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lw0/r1;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lg3/w;->a:Lb3/g;

    .line 16
    .line 17
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    move-object v1, p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v1, v0, Lw0/r1;->d:Ll0/s0;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ll0/s0;->d()Ll0/q1;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, v0, Lw0/r1;->k:Lw1/o;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-static {v1}, Lw1/o;->b(Lw1/o;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iput-wide p1, v0, Lw0/r1;->n:J

    .line 46
    .line 47
    const/4 p1, -0x1

    .line 48
    iput p1, v0, Lw0/r1;->s:I

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {v0, p1}, Lw0/r1;->h(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-wide v3, v0, Lw0/r1;->n:J

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    move-object v1, p0

    .line 62
    move-object v6, p3

    .line 63
    invoke-virtual/range {v1 .. v6}, Lk2/i;->f(Lg3/w;JZLw0/a0;)J

    .line 64
    .line 65
    .line 66
    move-result-wide p2

    .line 67
    const/4 v0, 0x2

    .line 68
    if-lt p4, v0, :cond_4

    .line 69
    .line 70
    iput-boolean p1, v1, Lk2/i;->a:Z

    .line 71
    .line 72
    new-instance p4, Lb3/n0;

    .line 73
    .line 74
    invoke-direct {p4, p2, p3}, Lb3/n0;-><init>(J)V

    .line 75
    .line 76
    .line 77
    iput-object p4, v1, Lk2/i;->b:Ljava/lang/Object;

    .line 78
    .line 79
    :cond_4
    return p1

    .line 80
    :goto_1
    const/4 p1, 0x0

    .line 81
    return p1
.end method

.method public e(J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    move-object v5, v4

    .line 22
    check-cast v5, Lk2/y;

    .line 23
    .line 24
    iget-wide v5, v5, Lk2/y;->a:J

    .line 25
    .line 26
    invoke-static {v5, v6, p1, p2}, Lk2/v;->d(JJ)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    :goto_1
    check-cast v4, Lk2/y;

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-boolean p1, v4, Lk2/y;->h:Z

    .line 42
    .line 43
    return p1

    .line 44
    :cond_2
    return v2
.end method

.method public f(Lg3/w;JZLw0/a0;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lw0/r1;

    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v2, p1

    .line 9
    move-wide v3, p2

    .line 10
    move v5, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-static/range {v1 .. v8}, Lw0/r1;->c(Lw0/r1;Lg3/w;JZZLw0/a0;Z)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iget-object p3, p0, Lk2/i;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p3, Lb3/n0;

    .line 19
    .line 20
    invoke-static {p1, p2, p3}, Lb3/n0;->a(JLjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lk2/i;->a:Z

    .line 28
    .line 29
    :cond_0
    invoke-static {p1, p2}, Lb3/n0;->c(J)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    sget-object p3, Ll0/i0;->c:Ll0/i0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p3, Ll0/i0;->b:Ll0/i0;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v1, p3}, Lw0/r1;->p(Ll0/i0;)V

    .line 41
    .line 42
    .line 43
    return-wide p1
.end method
