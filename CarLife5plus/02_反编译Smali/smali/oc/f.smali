.class public final Loc/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Loc/f;

.field public static final b:Loc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loc/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/f;->a:Loc/f;

    .line 7
    .line 8
    sget-object v0, Loc/e;->b:Loc/e;

    .line 9
    .line 10
    sput-object v0, Loc/f;->b:Loc/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lm9/e0;->J(Lmc/b;)Loc/h;

    .line 2
    .line 3
    .line 4
    new-instance v0, Loc/d;

    .line 5
    .line 6
    sget-object v1, Loc/l;->a:Loc/l;

    .line 7
    .line 8
    new-instance v2, Lnc/c;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lnc/c;-><init>(Lkc/a;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lnc/a;->a(Lmc/b;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Loc/d;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Loc/d;

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
    sget-object v0, Loc/l;->a:Loc/l;

    .line 12
    .line 13
    new-instance v1, Lnc/c;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lnc/c;-><init>(Lkc/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lnc/n;->b(Lpc/s;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Loc/f;->b:Loc/e;

    .line 2
    .line 3
    return-object v0
.end method
