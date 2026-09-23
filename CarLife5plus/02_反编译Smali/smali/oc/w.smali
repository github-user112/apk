.class public final Loc/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Loc/w;

.field public static final b:Loc/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loc/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/w;->a:Loc/w;

    .line 7
    .line 8
    sget-object v0, Loc/v;->b:Loc/v;

    .line 9
    .line 10
    sput-object v0, Loc/w;->b:Loc/v;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lm9/e0;->J(Lmc/b;)Loc/h;

    .line 2
    .line 3
    .line 4
    new-instance v0, Loc/u;

    .line 5
    .line 6
    sget-object v1, Lnc/x0;->a:Lnc/x0;

    .line 7
    .line 8
    sget-object v1, Loc/l;->a:Loc/l;

    .line 9
    .line 10
    new-instance v1, Lnc/e0;

    .line 11
    .line 12
    invoke-direct {v1}, Lnc/e0;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lnc/a;->a(Lmc/b;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Loc/u;-><init>(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Loc/u;

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
    sget-object v0, Lnc/x0;->a:Lnc/x0;

    .line 12
    .line 13
    sget-object v0, Loc/l;->a:Loc/l;

    .line 14
    .line 15
    new-instance v0, Lnc/e0;

    .line 16
    .line 17
    invoke-direct {v0}, Lnc/e0;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lnc/e0;->b(Lpc/s;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Loc/w;->b:Loc/v;

    .line 2
    .line 3
    return-object v0
.end method
