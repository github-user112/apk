.class public final synthetic Lz7/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/q;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/q;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/q;->a:Lz7/q;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent.Boot"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "code"

    .line 17
    .line 18
    invoke-virtual {v1, v0, v3}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lz7/q;->descriptor:Llc/e;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lz7/q;->descriptor:Llc/e;

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
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lmc/a;->f(Llc/e;)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, -0x1

    .line 19
    if-eq v6, v7, :cond_1

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v0, v2}, Lmc/a;->h(Llc/e;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lkc/f;

    .line 30
    .line 31
    invoke-direct {p1, v6}, Lkc/f;-><init>(I)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lz7/s;

    .line 41
    .line 42
    invoke-direct {p1, v4, v5}, Lz7/s;-><init>(II)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lz7/s;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p2, p2, Lz7/s;->b:I

    .line 9
    .line 10
    sget-object v0, Lz7/q;->descriptor:Llc/e;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lz7/s;->Companion:Lz7/r;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lpc/s;->u(Llc/e;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, p2, v0}, Lpc/s;->m(IILlc/e;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, v0}, Lpc/s;->t(Llc/e;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final c()[Lkc/a;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lkc/a;

    .line 3
    .line 4
    sget-object v1, Lnc/c0;->a:Lnc/c0;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lz7/q;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
