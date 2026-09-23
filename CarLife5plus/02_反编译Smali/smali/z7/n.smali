.class public final synthetic Lz7/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/n;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/n;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/n;->a:Lz7/n;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent.Audio"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "fileName"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "isOldVersion"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "channelIndex"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lz7/n;->descriptor:Llc/e;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lz7/n;->descriptor:Llc/e;

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
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    :goto_0
    if-eqz v4, :cond_4

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    const/4 v9, -0x1

    .line 21
    if-eq v8, v9, :cond_3

    .line 22
    .line 23
    if-eqz v8, :cond_2

    .line 24
    .line 25
    if-eq v8, v1, :cond_1

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    if-ne v8, v7, :cond_0

    .line 29
    .line 30
    invoke-interface {p1, v0, v7}, Lmc/a;->h(Llc/e;I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    or-int/lit8 v5, v5, 0x4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lkc/f;

    .line 38
    .line 39
    invoke-direct {p1, v8}, Lkc/f;-><init>(I)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    invoke-interface {p1, v0, v1}, Lmc/a;->v(Llc/e;I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    or-int/lit8 v5, v5, 0x2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p1, v0, v2}, Lmc/a;->x(Llc/e;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    or-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v4, 0x0

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lz7/p;

    .line 63
    .line 64
    invoke-direct {p1, v5, v3, v6, v7}, Lz7/p;-><init>(ILjava/lang/String;ZI)V

    .line 65
    .line 66
    .line 67
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lz7/p;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p2, Lz7/p;->d:I

    .line 9
    .line 10
    iget-boolean v1, p2, Lz7/p;->c:Z

    .line 11
    .line 12
    iget-object p2, p2, Lz7/p;->b:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lz7/n;->descriptor:Llc/e;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v3, Lz7/p;->Companion:Lz7/o;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lpc/s;->u(Llc/e;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, ""

    .line 30
    .line 31
    invoke-static {p2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    :goto_0
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1, v2, v3, p2}, Lpc/s;->s(Llc/e;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1, v2}, Lpc/s;->u(Llc/e;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1, v2, v3, v1}, Lpc/s;->c(Llc/e;IZ)V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p1, v2}, Lpc/s;->u(Llc/e;)Z

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
    if-eq v0, v3, :cond_5

    .line 62
    .line 63
    :goto_2
    const/4 p2, 0x2

    .line 64
    invoke-virtual {p1, p2, v0, v2}, Lpc/s;->m(IILlc/e;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-virtual {p1, v2}, Lpc/s;->t(Llc/e;)V

    .line 68
    .line 69
    .line 70
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
    sget-object v1, Lnc/x0;->a:Lnc/x0;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lnc/f;->a:Lnc/f;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lnc/c0;->a:Lnc/c0;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/n;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
