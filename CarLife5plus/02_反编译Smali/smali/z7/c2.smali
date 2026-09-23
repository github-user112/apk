.class public final synthetic Lz7/c2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/c2;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/c2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/c2;->a:Lz7/c2;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerRegion"

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "province"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "city"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "lat"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "lng"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lz7/c2;->descriptor:Llc/e;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lz7/c2;->descriptor:Llc/e;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lmc/b;->l(Llc/e;)Lmc/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    move-object v8, v3

    .line 13
    move-object v9, v8

    .line 14
    move-wide v10, v4

    .line 15
    move-wide v12, v10

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    :goto_0
    if-eqz v3, :cond_5

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v4, v5, :cond_4

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    if-eq v4, v1, :cond_2

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    if-ne v4, v5, :cond_0

    .line 36
    .line 37
    invoke-interface {p1, v0, v5}, Lmc/a;->t(Llc/e;I)D

    .line 38
    .line 39
    .line 40
    move-result-wide v12

    .line 41
    or-int/lit8 v7, v7, 0x8

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lkc/f;

    .line 45
    .line 46
    invoke-direct {p1, v4}, Lkc/f;-><init>(I)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-interface {p1, v0, v5}, Lmc/a;->t(Llc/e;I)D

    .line 51
    .line 52
    .line 53
    move-result-wide v10

    .line 54
    or-int/lit8 v7, v7, 0x4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {p1, v0, v1}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    or-int/lit8 v7, v7, 0x2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {p1, v0, v2}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    or-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v3, 0x0

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lz7/e2;

    .line 77
    .line 78
    invoke-direct/range {v6 .. v13}, Lz7/e2;-><init>(ILjava/lang/String;Ljava/lang/String;DD)V

    .line 79
    .line 80
    .line 81
    return-object v6
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lz7/e2;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lz7/c2;->descriptor:Llc/e;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p2, Lz7/e2;->a:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v0, v2, v1}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iget-object v2, p2, Lz7/e2;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    iget-wide v2, p2, Lz7/e2;->c:D

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2, v3}, Lpc/s;->g(Llc/e;ID)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    iget-wide v2, p2, Lz7/e2;->d:D

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2, v3}, Lpc/s;->g(Llc/e;ID)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lpc/s;->t(Llc/e;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c()[Lkc/a;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lkc/a;

    .line 3
    .line 4
    sget-object v1, Lnc/x0;->a:Lnc/x0;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    sget-object v1, Lnc/q;->a:Lnc/q;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    return-object v0
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/c2;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
