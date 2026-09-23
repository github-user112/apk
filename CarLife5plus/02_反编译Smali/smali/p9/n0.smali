.class public final Lp9/n0;
.super Lp9/e1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/k;


# instance fields
.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lp9/e1;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p1, La8/g0;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    sget-object p2, Lr8/i;->a:Lr8/i;

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lp9/n0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp9/h0;Lv9/k0;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lp9/e1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 4
    new-instance p1, La8/g0;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    sget-object p2, Lr8/i;->a:Lr8/i;

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lp9/n0;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Lm9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/n0;->k:Ljava/lang/Object;

    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp9/m0;

    return-object v0
.end method

.method public final c()Lm9/j;
    .locals 1

    .line 2
    iget-object v0, p0, Lp9/n0;->k:Ljava/lang/Object;

    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp9/m0;

    return-object v0
.end method
