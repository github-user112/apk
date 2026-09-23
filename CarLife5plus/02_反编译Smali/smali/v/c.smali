.class public final Lv/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lv/w0;

.field public final b:Ljava/lang/Object;

.field public final c:Lv/k;

.field public final d:Lf1/k1;

.field public final e:Lf1/k1;

.field public final f:Lv/c0;

.field public final g:Lv/p;

.field public final h:Lv/p;

.field public final i:Lv/p;

.field public final j:Lv/p;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv/c;->a:Lv/w0;

    .line 3
    iput-object p3, p0, Lv/c;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Lv/k;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-direct {v0, p2, p1, v1, v2}, Lv/k;-><init>(Lv/w0;Ljava/lang/Object;Lv/p;I)V

    iput-object v0, p0, Lv/c;->c:Lv/k;

    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object p2

    iput-object p2, p0, Lv/c;->d:Lf1/k1;

    .line 6
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object p1

    iput-object p1, p0, Lv/c;->e:Lf1/k1;

    .line 7
    new-instance p1, Lv/c0;

    invoke-direct {p1}, Lv/c0;-><init>()V

    iput-object p1, p0, Lv/c;->f:Lv/c0;

    .line 8
    new-instance p1, Lv/g0;

    invoke-direct {p1, p3}, Lv/g0;-><init>(Ljava/lang/Object;)V

    .line 9
    iget-object p1, v0, Lv/k;->c:Lv/p;

    .line 10
    instance-of p2, p1, Lv/l;

    if-eqz p2, :cond_0

    sget-object p3, Lv/d;->e:Lv/l;

    goto :goto_0

    .line 11
    :cond_0
    instance-of p3, p1, Lv/m;

    if-eqz p3, :cond_1

    sget-object p3, Lv/d;->f:Lv/m;

    goto :goto_0

    .line 12
    :cond_1
    instance-of p3, p1, Lv/n;

    if-eqz p3, :cond_2

    sget-object p3, Lv/d;->g:Lv/n;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p3, Lv/d;->h:Lv/o;

    .line 14
    :goto_0
    iput-object p3, p0, Lv/c;->g:Lv/p;

    if-eqz p2, :cond_3

    .line 15
    sget-object p1, Lv/d;->a:Lv/l;

    goto :goto_1

    .line 16
    :cond_3
    instance-of p2, p1, Lv/m;

    if-eqz p2, :cond_4

    sget-object p1, Lv/d;->b:Lv/m;

    goto :goto_1

    .line 17
    :cond_4
    instance-of p1, p1, Lv/n;

    if-eqz p1, :cond_5

    sget-object p1, Lv/d;->c:Lv/n;

    goto :goto_1

    .line 18
    :cond_5
    sget-object p1, Lv/d;->d:Lv/o;

    .line 19
    :goto_1
    iput-object p1, p0, Lv/c;->h:Lv/p;

    .line 20
    iput-object p3, p0, Lv/c;->i:Lv/p;

    .line 21
    iput-object p1, p0, Lv/c;->j:Lv/p;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;I)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lv/c;-><init>(Ljava/lang/Object;Lv/w0;Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Lv/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lv/c;->a:Lv/w0;

    .line 2
    .line 3
    iget-object v1, p0, Lv/c;->j:Lv/p;

    .line 4
    .line 5
    iget-object v2, p0, Lv/c;->i:Lv/p;

    .line 6
    .line 7
    iget-object v3, p0, Lv/c;->g:Lv/p;

    .line 8
    .line 9
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lv/c;->h:Lv/p;

    .line 16
    .line 17
    invoke-static {v1, p0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, v0, Lv/w0;->a:Lf9/k;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lv/p;

    .line 31
    .line 32
    invoke-virtual {p0}, Lv/p;->b()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v4, v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Lv/p;->a(I)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v2, v4}, Lv/p;->a(I)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    cmpg-float v6, v6, v7

    .line 49
    .line 50
    if-ltz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lv/p;->a(I)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v1, v4}, Lv/p;->a(I)F

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    cmpl-float v6, v6, v7

    .line 61
    .line 62
    if-lez v6, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0, v4}, Lv/p;->a(I)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v2, v4}, Lv/p;->a(I)F

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v1, v4}, Lv/p;->a(I)F

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-static {v5, v6, v7}, Li9/a;->m(FFF)F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {p0, v5, v4}, Lv/p;->e(FI)V

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    if-eqz v5, :cond_4

    .line 88
    .line 89
    iget-object p1, v0, Lv/w0;->b:Lf9/k;

    .line 90
    .line 91
    invoke-interface {p1, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final b(Lv/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/c;->c:Lv/k;

    .line 2
    .line 3
    iget-object v1, v0, Lv/k;->c:Lv/p;

    .line 4
    .line 5
    invoke-virtual {v1}, Lv/p;->d()V

    .line 6
    .line 7
    .line 8
    const-wide/high16 v1, -0x8000000000000000L

    .line 9
    .line 10
    iput-wide v1, v0, Lv/k;->d:J

    .line 11
    .line 12
    iget-object p0, p0, Lv/c;->d:Lf1/k1;

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lv/c;->a:Lv/w0;

    .line 2
    .line 3
    iget-object v0, v0, Lv/w0;->b:Lf9/k;

    .line 4
    .line 5
    iget-object v2, p0, Lv/c;->c:Lv/k;

    .line 6
    .line 7
    iget-object v2, v2, Lv/k;->c:Lv/p;

    .line 8
    .line 9
    invoke-interface {v0, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    and-int/lit8 v0, p5, 0x8

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    move-object v6, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object/from16 v6, p3

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lv/c;->d()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    iget-object v9, p0, Lv/c;->a:Lv/w0;

    .line 27
    .line 28
    new-instance v3, Lv/m0;

    .line 29
    .line 30
    iget-object v0, v9, Lv/w0;->a:Lf9/k;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v12, v0

    .line 37
    check-cast v12, Lv/p;

    .line 38
    .line 39
    move-object v11, p1

    .line 40
    move-object v8, p2

    .line 41
    move-object v7, v3

    .line 42
    invoke-direct/range {v7 .. v12}, Lv/m0;-><init>(Lv/j;Lv/w0;Ljava/lang/Object;Ljava/lang/Object;Lv/p;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lv/c;->c:Lv/k;

    .line 46
    .line 47
    iget-wide v4, v0, Lv/k;->d:J

    .line 48
    .line 49
    iget-object v8, p0, Lv/c;->f:Lv/c0;

    .line 50
    .line 51
    new-instance v0, Lv/a;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v1, p0

    .line 55
    invoke-direct/range {v0 .. v7}, Lv/a;-><init>(Lv/c;Ljava/lang/Object;Lv/m0;JLf9/k;Lw8/c;)V

    .line 56
    .line 57
    .line 58
    move-object v1, v0

    .line 59
    move-object/from16 v0, p4

    .line 60
    .line 61
    invoke-static {v8, v1, v0}, Lv/c0;->a(Lv/c0;Lf9/k;Lw8/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->c:Lv/k;

    .line 2
    .line 3
    iget-object v0, v0, Lv/k;->b:Lf1/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lv/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lv/b;-><init>(Lv/c;Ljava/lang/Object;Lw8/c;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lv/c;->f:Lv/c0;

    .line 8
    .line 9
    invoke-static {p1, v0, p2}, Lv/c0;->a(Lv/c0;Lf9/k;Lw8/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    return-object p1
.end method
