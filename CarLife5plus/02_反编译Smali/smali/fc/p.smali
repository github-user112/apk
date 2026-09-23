.class public Lfc/p;
.super Lac/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ly8/d;


# instance fields
.field public final d:Lw8/c;


# direct methods
.method public constructor <init>(Lw8/c;Lw8/h;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0}, Lac/a;-><init>(Lw8/h;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lfc/p;->d:Lw8/c;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfc/p;->d:Lw8/c;

    .line 2
    .line 3
    invoke-static {v0}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lac/z;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, v0}, Lfc/a;->h(Ljava/lang/Object;Lw8/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public C(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfc/p;->d:Lw8/c;

    .line 2
    .line 3
    invoke-static {p1}, Lac/z;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final T()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final d()Ly8/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lfc/p;->d:Lw8/c;

    .line 2
    .line 3
    instance-of v1, v0, Ly8/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ly8/d;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
