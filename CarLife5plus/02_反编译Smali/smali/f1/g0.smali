.class public final Lf1/g0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/c2;


# instance fields
.field public final a:Lf9/k;

.field public b:Lf1/h0;


# direct methods
.method public constructor <init>(Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/g0;->a:Lf9/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/g0;->b:Lf1/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lf1/h0;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf1/g0;->b:Lf1/h0;

    .line 10
    .line 11
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/g0;->a:Lf9/k;

    .line 2
    .line 3
    sget-object v1, Lf1/b;->b:Lf1/i0;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lf1/h0;

    .line 10
    .line 11
    iput-object v0, p0, Lf1/g0;->b:Lf1/h0;

    .line 12
    .line 13
    return-void
.end method
