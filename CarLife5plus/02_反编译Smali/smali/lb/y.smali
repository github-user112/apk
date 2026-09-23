.class public final Llb/y;
.super Llb/w;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lkb/o;

.field public final c:Lf9/a;

.field public final d:Lkb/j;


# direct methods
.method public constructor <init>(Lkb/o;Lf9/a;)V
    .locals 1

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llb/y;->b:Lkb/o;

    .line 10
    .line 11
    iput-object p2, p0, Llb/y;->c:Lf9/a;

    .line 12
    .line 13
    check-cast p1, Lkb/l;

    .line 14
    .line 15
    new-instance v0, Lkb/j;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Llb/y;->d:Lkb/j;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

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
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

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
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

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
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

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

.method public final F0(Lmb/f;)Llb/w;
    .locals 3

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llb/y;

    .line 7
    .line 8
    new-instance v1, La8/f0;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-direct {v1, v2, p1, p0}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Llb/y;->b:Lkb/o;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Llb/y;-><init>(Lkb/o;Lf9/a;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final G0()Llb/x0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Llb/y;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Llb/y;

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/y;->H0()Llb/w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Llb/x0;

    .line 22
    .line 23
    return-object v0
.end method

.method public final H0()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/y;->d:Lkb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llb/w;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R()Leb/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

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

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Llb/y;->d:Lkb/j;

    .line 2
    .line 3
    iget-object v1, v0, Lkb/i;->c:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v2, Lkb/k;->a:Lkb/k;

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lkb/i;->c:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v1, Lkb/k;->b:Lkb/k;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Llb/y;->H0()Llb/w;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const-string v0, "<Not computed yet>"

    .line 25
    .line 26
    return-object v0
.end method
