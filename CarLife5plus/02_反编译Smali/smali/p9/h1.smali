.class public Lp9/h1;
.super Lp9/o1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp9/h0;Lv9/k0;)V
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lp9/o1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lp9/f1;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {p1, p0, p2}, Lp9/f1;-><init>(Lp9/h1;I)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lr8/i;->a:Lr8/i;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lp9/h1;->j:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Lp9/f1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, p0, v0}, Lp9/f1;-><init>(Lp9/h1;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b()Lm9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/h1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/g1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/h1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/g1;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, v1, p1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lp9/t;->d([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final r()Lp9/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/h1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/g1;

    .line 8
    .line 9
    return-object v0
.end method
