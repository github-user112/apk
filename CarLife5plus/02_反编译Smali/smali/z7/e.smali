.class public final synthetic Lz7/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/e;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/e;->a:Lz7/e;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent.AppOpen"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "packageName"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "className"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lz7/e;->descriptor:Llc/e;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lz7/e;->descriptor:Llc/e;

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
    move-object v4, v3

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_0
    if-eqz v5, :cond_3

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    const/4 v8, -0x1

    .line 20
    if-eq v7, v8, :cond_2

    .line 21
    .line 22
    if-eqz v7, :cond_1

    .line 23
    .line 24
    if-ne v7, v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    or-int/lit8 v6, v6, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lkc/f;

    .line 34
    .line 35
    invoke-direct {p1, v7}, Lkc/f;-><init>(I)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    invoke-interface {p1, v0, v2}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    or-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v5, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lz7/g;

    .line 52
    .line 53
    invoke-direct {p1, v3, v4, v6}, Lz7/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lz7/g;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p2, Lz7/g;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p2, p2, Lz7/g;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lz7/e;->descriptor:Llc/e;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v2, Lz7/g;->Companion:Lz7/f;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lpc/s;->u(Llc/e;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, ""

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :goto_0
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1, v1, v2, p2}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1, v1}, Lpc/s;->u(Llc/e;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_3

    .line 51
    .line 52
    :goto_1
    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, v1, p2, v0}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1, v1}, Lpc/s;->t(Llc/e;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final c()[Lkc/a;
    .locals 3

    .line 1
    const/4 v0, 0x2

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
    return-object v0
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/e;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
