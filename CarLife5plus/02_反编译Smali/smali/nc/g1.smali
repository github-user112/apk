.class public final Lnc/g1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final a:Lnc/g1;

.field public static final b:Lnc/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnc/g1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc/g1;->a:Lnc/g1;

    .line 7
    .line 8
    const-string v0, "kotlin.ULong"

    .line 9
    .line 10
    sget-object v1, Lnc/i0;->a:Lnc/i0;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lnc/m0;->a(Ljava/lang/String;Lkc/a;)Lnc/x;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lnc/g1;->b:Lnc/x;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lnc/g1;->b:Lnc/x;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lmc/b;->k(Llc/e;)Lmc/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lmc/b;->s()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    new-instance p1, Lr8/u;

    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Lr8/u;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lr8/u;

    .line 2
    .line 3
    iget-wide v0, p2, Lr8/u;->a:J

    .line 4
    .line 5
    sget-object p2, Lnc/g1;->b:Lnc/x;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lpc/s;->j(Llc/e;)Lpc/s;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1}, Lpc/s;->n(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    sget-object v0, Lnc/g1;->b:Lnc/x;

    .line 2
    .line 3
    return-object v0
.end method
