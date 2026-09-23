.class public final Lf1/e2;
.super Lw8/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/u;


# instance fields
.field public final synthetic b:Lq1/b;

.field public final synthetic c:Lf1/f2;


# direct methods
.method public constructor <init>(Lq1/b;Lf1/f2;)V
    .locals 1

    .line 1
    sget-object v0, Lac/t;->a:Lac/t;

    .line 2
    .line 3
    iput-object p1, p0, Lf1/e2;->b:Lq1/b;

    .line 4
    .line 5
    iput-object p2, p0, Lf1/e2;->c:Lf1/f2;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lw8/a;-><init>(Lw8/g;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Throwable;Lw8/h;)V
    .locals 4

    .line 1
    new-instance v0, La8/n0;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    iget-object v2, p0, Lf1/e2;->b:Lq1/b;

    .line 6
    .line 7
    iget-object v3, p0, Lf1/e2;->c:Lf1/f2;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lp4/e;->F(Ljava/lang/Throwable;Lf9/a;)Z

    .line 13
    .line 14
    .line 15
    sget-object v0, Lac/t;->a:Lac/t;

    .line 16
    .line 17
    iget-object v1, v3, Lf1/f2;->a:Lw8/h;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lac/u;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lac/u;->k(Ljava/lang/Throwable;Lw8/h;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    throw p1
.end method
