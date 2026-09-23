.class public final synthetic Lz7/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lnc/w;


# static fields
.field public static final a:Lz7/d0;

.field private static final descriptor:Llc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lz7/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/d0;->a:Lz7/d0;

    .line 7
    .line 8
    new-instance v1, Lnc/o0;

    .line 9
    .line 10
    const-string v2, "com.muyetuge.carlifevehicle.feature.tasker.model.TaskerEvent.Delay"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lnc/o0;-><init>(Ljava/lang/String;Lnc/w;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "millis"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Lnc/o0;->b(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lz7/d0;->descriptor:Llc/e;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lz7/d0;->descriptor:Llc/e;

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
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_0
    if-eqz v5, :cond_2

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
    if-eq v7, v8, :cond_1

    .line 21
    .line 22
    if-nez v7, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v0, v2}, Lmc/a;->j(Llc/e;I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    const/4 v6, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Lkc/f;

    .line 31
    .line 32
    invoke-direct {p1, v7}, Lkc/f;-><init>(I)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    const/4 v5, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p1, v0}, Lmc/a;->i(Llc/e;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lz7/f0;

    .line 42
    .line 43
    invoke-direct {p1, v6, v3, v4}, Lz7/f0;-><init>(IJ)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lz7/f0;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lz7/d0;->descriptor:Llc/e;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lpc/s;->a(Llc/e;)Lpc/s;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-wide v1, p2, Lz7/f0;->b:J

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, v0, p2}, Lpc/s;->h(Llc/e;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Lpc/s;->n(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lpc/s;->t(Llc/e;)V

    .line 24
    .line 25
    .line 26
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
    sget-object v1, Lnc/i0;->a:Lnc/i0;

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
    sget-object v0, Lz7/d0;->descriptor:Llc/e;

    .line 2
    .line 3
    return-object v0
.end method
