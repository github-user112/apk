.class public final Llb/d0;
.super Llb/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llb/w0;


# instance fields
.field public final b:Llb/a0;

.field public final c:Llb/w;


# direct methods
.method public constructor <init>(Llb/a0;Llb/w;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "enhancement"

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
    iput-object p1, p0, Llb/d0;->b:Llb/a0;

    .line 15
    .line 16
    iput-object p2, p0, Llb/d0;->c:Llb/w;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final E()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/d0;->c:Llb/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic F0(Lmb/f;)Llb/w;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Llb/d0;->P0(Lmb/f;)Llb/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final bridge synthetic I0(Lmb/f;)Llb/x0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Llb/d0;->P0(Lmb/f;)Llb/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final K0(Z)Llb/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Llb/d0;->b:Llb/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Llb/a0;->K0(Z)Llb/a0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Llb/d0;->c:Llb/w;

    .line 8
    .line 9
    invoke-virtual {v1}, Llb/w;->G0()Llb/x0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Llb/x0;->H0(Z)Llb/x0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Llb/a0;

    .line 27
    .line 28
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
    iget-object v0, p0, Llb/d0;->b:Llb/a0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Llb/d0;->c:Llb/w;

    .line 13
    .line 14
    invoke-static {p1, v0}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Llb/a0;

    .line 24
    .line 25
    return-object p1
.end method

.method public final M0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/d0;->b:Llb/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic N0(Lmb/f;)Llb/a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Llb/d0;->P0(Lmb/f;)Llb/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final O0(Llb/a0;)Llb/m;
    .locals 2

    .line 1
    new-instance v0, Llb/d0;

    .line 2
    .line 3
    iget-object v1, p0, Llb/d0;->c:Llb/w;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Llb/d0;-><init>(Llb/a0;Llb/w;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final P0(Lmb/f;)Llb/d0;
    .locals 3

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Llb/d0;

    .line 7
    .line 8
    iget-object v0, p0, Llb/d0;->b:Llb/a0;

    .line 9
    .line 10
    const-string v1, "type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Llb/d0;->c:Llb/w;

    .line 16
    .line 17
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, v2}, Llb/d0;-><init>(Llb/a0;Llb/w;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[@EnhancedForWarnings("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Llb/d0;->c:Llb/w;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ")] "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Llb/d0;->b:Llb/a0;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final u0()Llb/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/d0;->b:Llb/a0;

    .line 2
    .line 3
    return-object v0
.end method
