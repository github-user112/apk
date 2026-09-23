.class public final Lnb/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/y;


# static fields
.field public static final a:Lnb/e;

.field public static final b:Lua/e;

.field public static final c:Ls8/w;

.field public static final d:Lr8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnb/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnb/e;->a:Lnb/e;

    .line 7
    .line 8
    const-string v0, "<Error module>"

    .line 9
    .line 10
    invoke-static {v0}, Lua/e;->g(Ljava/lang/String;)Lua/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lnb/e;->b:Lua/e;

    .line 15
    .line 16
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 17
    .line 18
    sput-object v0, Lnb/e;->c:Ls8/w;

    .line 19
    .line 20
    sget-object v0, Lnb/d;->a:Lnb/d;

    .line 21
    .line 22
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lnb/e;->d:Lr8/o;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final X(Lv9/y;)Z
    .locals 1

    .line 1
    const-string v0, "targetModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public final a()Lv9/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    sget-object v0, Lw9/g;->a:Lw9/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Lua/e;
    .locals 1

    .line 1
    sget-object v0, Lnb/e;->b:Lua/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lnb/e;->c:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ls9/i;
    .locals 1

    .line 1
    sget-object v0, Lnb/e;->d:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls9/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k()Lv9/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final l(Lua/c;Lf9/k;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "fqName"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object p1
.end method

.method public final v0(Lfc/s;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "capability"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final y0(Lua/c;)Lv9/h0;
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Should not be called!"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
