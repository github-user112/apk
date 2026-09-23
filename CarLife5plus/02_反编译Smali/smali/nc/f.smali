.class public final Lnc/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Lnc/f;

.field public static final b:Lnc/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnc/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc/f;->a:Lnc/f;

    .line 7
    .line 8
    new-instance v0, Lnc/s0;

    .line 9
    .line 10
    const-string v1, "kotlin.Boolean"

    .line 11
    .line 12
    sget-object v2, Llc/c;->d:Llc/c;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lnc/s0;-><init>(Ljava/lang/String;Llc/d;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnc/f;->b:Lnc/s0;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lmc/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Lpc/s;->b(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lnc/f;->b:Lnc/s0;

    .line 2
    .line 3
    return-object v0
.end method
