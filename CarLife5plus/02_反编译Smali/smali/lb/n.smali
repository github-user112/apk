.class public abstract Llb/n;
.super Llb/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Llb/a0;


# direct methods
.method public constructor <init>(Llb/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llb/n;->b:Llb/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final K0(Z)Llb/a0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/m;->E0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Llb/n;->b:Llb/a0;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Llb/a0;->K0(Z)Llb/a0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Llb/m;->C0()Llb/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final L0(Llb/h0;)Llb/a0;
    .locals 1

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Llb/m;->C0()Llb/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Llb/c0;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Llb/c0;-><init>(Llb/a0;Llb/h0;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    return-object p0
.end method

.method public final M0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/n;->b:Llb/a0;

    .line 2
    .line 3
    return-object v0
.end method
