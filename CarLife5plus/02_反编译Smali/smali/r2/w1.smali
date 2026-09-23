.class public final Lr2/w1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lr1/q;


# instance fields
.field public final a:Lf1/g1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf1/g1;

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lf1/g1;-><init>(F)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr2/w1;->a:Lf1/g1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final g(Lw8/g;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->F(Lw8/f;Lw8/g;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lw8/g;
    .locals 1

    .line 1
    sget-object v0, Lr1/c;->o:Lr1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()F
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/w1;->a:Lf1/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m(Lw8/g;)Lw8/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->p(Lw8/f;Lw8/g;)Lw8/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lf9/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final z(Lw8/h;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
