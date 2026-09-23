.class public final Lp9/p0;
.super Lp9/h1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/l;


# instance fields
.field public final k:Ljava/lang/Object;


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
    invoke-direct {p0, p1, p2}, Lp9/h1;-><init>(Lp9/h0;Lv9/k0;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, La8/g0;

    .line 10
    .line 11
    const/16 p2, 0x14

    .line 12
    .line 13
    invoke-direct {p1, p2, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lr8/i;->a:Lr8/i;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lp9/p0;->k:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final c()Lm9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/p0;->k:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp9/o0;

    .line 8
    .line 9
    return-object v0
.end method
