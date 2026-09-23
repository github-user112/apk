.class public final Loc/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Loc/s;

.field public static final b:Llc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Loc/s;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/s;->a:Loc/s;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Llc/e;

    .line 10
    .line 11
    const-string v2, "kotlinx.serialization.json.JsonNull"

    .line 12
    .line 13
    invoke-static {v2}, Lxb/i;->Q(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Llc/i;->d:Llc/i;

    .line 20
    .line 21
    sget-object v3, Llc/h;->d:Llc/h;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v6, Llc/a;

    .line 30
    .line 31
    invoke-direct {v6, v2}, Llc/a;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Llc/f;

    .line 35
    .line 36
    iget-object v4, v6, Llc/a;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v0}, Ls8/l;->j0([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-direct/range {v1 .. v6}, Llc/f;-><init>(Ljava/lang/String;La/a;ILjava/util/List;Llc/a;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Loc/s;->b:Llc/f;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v1, "Blank serial names are prohibited"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lm9/e0;->J(Lmc/b;)Loc/h;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lmc/b;->u()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Loc/r;->INSTANCE:Loc/r;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance p1, Lpc/h;

    .line 14
    .line 15
    const-string v0, "Expected \'null\' literal"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Loc/r;

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
    iget-object p1, p1, Lpc/s;->a:Ld6/h;

    .line 12
    .line 13
    const-string p2, "null"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ld6/h;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Loc/s;->b:Llc/f;

    .line 2
    .line 3
    return-object v0
.end method
