.class public final Lnc/k0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Lnc/k0;

.field public static final b:Lnc/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnc/k0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc/k0;->a:Lnc/k0;

    .line 7
    .line 8
    sget-object v0, Lnc/j0;->a:Lnc/j0;

    .line 9
    .line 10
    sput-object v0, Lnc/k0;->b:Lnc/j0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Lkc/e;

    .line 2
    .line 3
    const-string v0, "\'kotlin.Nothing\' does not have instances"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "value"

    .line 4
    .line 5
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lkc/e;

    .line 9
    .line 10
    const-string p2, "\'kotlin.Nothing\' cannot be serialized"

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lnc/k0;->b:Lnc/j0;

    .line 2
    .line 3
    return-object v0
.end method
