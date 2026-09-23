.class public Lp9/b1;
.super Lp9/o1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/r;


# instance fields
.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lp9/o1;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Lv9/k0;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Lp9/z0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lp9/z0;-><init>(Lp9/b1;I)V

    sget-object p2, Lr8/i;->a:Lr8/i;

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, v0, Lp9/b1;->j:Ljava/lang/Object;

    .line 6
    new-instance p1, Lp9/z0;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lp9/z0;-><init>(Lp9/b1;I)V

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    return-void
.end method

.method public constructor <init>(Lp9/h0;Lv9/k0;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lp9/o1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 2
    new-instance p1, Lp9/z0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lp9/z0;-><init>(Lp9/b1;I)V

    sget-object p2, Lr8/i;->a:Lr8/i;

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lp9/b1;->j:Ljava/lang/Object;

    .line 3
    new-instance p1, Lp9/z0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lp9/z0;-><init>(Lp9/b1;I)V

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    return-void
.end method


# virtual methods
.method public final b()Lm9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/b1;->j:Ljava/lang/Object;

    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp9/a1;

    return-object v0
.end method

.method public final b()Lm9/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lp9/b1;->j:Ljava/lang/Object;

    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp9/a1;

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/b1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/a1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lp9/t;->d([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/b1;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final r()Lp9/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/b1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/a1;

    .line 8
    .line 9
    return-object v0
.end method
