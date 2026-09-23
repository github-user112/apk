.class public final Loc/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Loc/l;

.field public static final b:Llc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Loc/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/l;->a:Loc/l;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Llc/e;

    .line 10
    .line 11
    new-instance v1, Lm7/j;

    .line 12
    .line 13
    const/16 v2, 0x11

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lm7/j;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v2, "kotlinx.serialization.json.JsonElement"

    .line 19
    .line 20
    sget-object v3, Llc/b;->d:Llc/b;

    .line 21
    .line 22
    invoke-static {v2, v3, v0, v1}, Lm9/e0;->K(Ljava/lang/String;La/a;[Llc/e;Lf9/k;)Llc/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Loc/l;->b:Llc/f;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lm9/e0;->J(Lmc/b;)Loc/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Loc/h;->n()Loc/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Loc/j;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lm9/e0;->G(Lpc/s;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Loc/y;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Loc/z;->a:Loc/z;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lpc/s;->p(Lkc/a;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    instance-of v0, p2, Loc/u;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Loc/w;->a:Loc/w;

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lpc/s;->p(Lkc/a;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of v0, p2, Loc/d;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Loc/f;->a:Loc/f;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lpc/s;->p(Lkc/a;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance p1, Lac/p;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Loc/l;->b:Llc/f;

    .line 2
    .line 3
    return-object v0
.end method
