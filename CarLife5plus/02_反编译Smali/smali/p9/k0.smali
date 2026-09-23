.class public final Lp9/k0;
.super Lp9/n1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/h;


# instance fields
.field public final f:Lp9/l0;


# direct methods
.method public constructor <init>(Lp9/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp9/n1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp9/k0;->f:Lp9/l0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lm9/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/k0;->f:Lp9/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/k0;->f:Lp9/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lp9/l0;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lp9/k0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lp9/t;->d([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    return-object p1
.end method

.method public final q()Lp9/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/k0;->f:Lp9/l0;

    .line 2
    .line 3
    return-object v0
.end method
