.class public abstract Llb/p;
.super Llb/x0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lob/d;


# instance fields
.field public final b:Llb/a0;

.field public final c:Llb/a0;


# direct methods
.method public constructor <init>(Llb/a0;Llb/a0;)V
    .locals 1

    .line 1
    const-string v0, "lowerBound"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "upperBound"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Llb/p;->b:Llb/a0;

    .line 15
    .line 16
    iput-object p2, p0, Llb/p;->c:Llb/a0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/p;->K0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/w;->B0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final C0()Llb/h0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/p;->K0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/w;->C0()Llb/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final D0()Llb/k0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/p;->K0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final E0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/p;->K0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/w;->E0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract K0()Llb/a0;
.end method

.method public abstract L0(Lwa/g;Lwa/g;)Ljava/lang/String;
.end method

.method public R()Leb/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/p;->K0()Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Llb/w;->R()Leb/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lwa/g;->e:Lwa/g;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
