.class public final synthetic Lz7/b1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/b1;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/b1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/b1;->a:Lz7/b1;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent.SunCycle"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "isDayTime"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "latitude"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "longitude"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lz7/b1;->descriptor:Llc/e;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lz7/b1;->descriptor:Llc/e;

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
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    move-wide v8, v3

    .line 12
    move-wide v10, v8

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    :goto_0
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, -0x1

    .line 23
    if-eq v4, v5, :cond_3

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-eq v4, v1, :cond_1

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-ne v4, v5, :cond_0

    .line 31
    .line 32
    invoke-interface {p1, v0, v5}, Lmc/a;->t(Llc/e;I)D

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    or-int/lit8 v6, v6, 0x4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Lkc/f;

    .line 40
    .line 41
    invoke-direct {p1, v4}, Lkc/f;-><init>(I)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-interface {p1, v0, v1}, Lmc/a;->t(Llc/e;I)D

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    or-int/lit8 v6, v6, 0x2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {p1, v0, v2}, Lmc/a;->v(Llc/e;I)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    or-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v3, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Lz7/d1;

    .line 65
    .line 66
    invoke-direct/range {v5 .. v11}, Lz7/d1;-><init>(IZDD)V

    .line 67
    .line 68
    .line 69
    return-object v5
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Lz7/d1;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p2, Lz7/d1;->d:D

    .line 9
    .line 10
    iget-wide v2, p2, Lz7/d1;->c:D

    .line 11
    .line 12
    iget-boolean p2, p2, Lz7/d1;->b:Z

    .line 13
    .line 14
    sget-object v4, Lz7/b1;->descriptor:Llc/e;

    .line 15
    .line 16
    invoke-virtual {p1, v4}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v5, Lz7/d1;->Companion:Lz7/c1;

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lpc/s;->u(Llc/e;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x1

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-eq p2, v6, :cond_1

    .line 31
    .line 32
    :goto_0
    const/4 v5, 0x0

    .line 33
    invoke-virtual {p1, v4, v5, p2}, Lpc/s;->c(Llc/e;IZ)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1, v4}, Lpc/s;->u(Llc/e;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Double;->compare(DD)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1, v4, v6, v2, v3}, Lpc/s;->g(Llc/e;ID)V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p1, v4}, Lpc/s;->u(Llc/e;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Double;->compare(DD)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    :goto_2
    const/4 p2, 0x2

    .line 68
    invoke-virtual {p1, v4, p2, v0, v1}, Lpc/s;->g(Llc/e;ID)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p1, v4}, Lpc/s;->t(Llc/e;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final c()[Lkc/a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lkc/a;

    .line 3
    .line 4
    sget-object v1, Lnc/f;->a:Lnc/f;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lnc/q;->a:Lnc/q;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    return-object v0
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/b1;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
