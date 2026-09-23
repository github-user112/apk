.class public final Lnc/k1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lkc/a;


# static fields
.field public static final b:Lnc/k1;


# instance fields
.field public final synthetic a:Lnc/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnc/k1;

    .line 2
    .line 3
    invoke-direct {v0}, Lnc/k1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnc/k1;->b:Lnc/k1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnc/l0;

    .line 5
    .line 6
    invoke-direct {v0}, Lnc/l0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnc/k1;->a:Lnc/l0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lmc/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lnc/k1;->a:Lnc/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnc/l0;->a(Lmc/b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 7
    .line 8
    return-object p1
.end method

.method public final b(Lpc/s;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lr8/z;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnc/k1;->a:Lnc/l0;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lnc/l0;->b(Lpc/s;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d()Llc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lnc/k1;->a:Lnc/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnc/l0;->d()Llc/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
