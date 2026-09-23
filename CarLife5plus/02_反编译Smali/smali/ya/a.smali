.class public final Lya/a;
.super Llb/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lob/c;


# instance fields
.field public final b:Llb/n0;

.field public final c:Lya/c;

.field public final d:Z

.field public final e:Llb/h0;


# direct methods
.method public constructor <init>(Llb/n0;Lya/c;ZLlb/h0;)V
    .locals 1

    .line 1
    const-string v0, "typeProjection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attributes"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lya/a;->b:Llb/n0;

    .line 15
    .line 16
    iput-object p2, p0, Lya/a;->c:Lya/c;

    .line 17
    .line 18
    iput-boolean p3, p0, Lya/a;->d:Z

    .line 19
    .line 20
    iput-object p4, p0, Lya/a;->e:Llb/h0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0()Llb/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lya/a;->e:Llb/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lya/a;->c:Lya/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lya/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final F0(Lmb/f;)Llb/w;
    .locals 4

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lya/a;

    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->b:Llb/n0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Llb/n0;->d(Lmb/f;)Llb/n0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, p0, Lya/a;->d:Z

    .line 15
    .line 16
    iget-object v2, p0, Lya/a;->e:Llb/h0;

    .line 17
    .line 18
    iget-object v3, p0, Lya/a;->c:Lya/c;

    .line 19
    .line 20
    invoke-direct {v0, p1, v3, v1, v2}, Lya/a;-><init>(Llb/n0;Lya/c;ZLlb/h0;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final H0(Z)Llb/x0;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lya/a;->d:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lya/a;

    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->c:Lya/c;

    .line 9
    .line 10
    iget-object v2, p0, Lya/a;->e:Llb/h0;

    .line 11
    .line 12
    iget-object v3, p0, Lya/a;->b:Llb/n0;

    .line 13
    .line 14
    invoke-direct {v0, v3, v1, p1, v2}, Lya/a;-><init>(Llb/n0;Lya/c;ZLlb/h0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final I0(Lmb/f;)Llb/x0;
    .locals 4

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lya/a;

    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->b:Llb/n0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Llb/n0;->d(Lmb/f;)Llb/n0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, p0, Lya/a;->d:Z

    .line 15
    .line 16
    iget-object v2, p0, Lya/a;->e:Llb/h0;

    .line 17
    .line 18
    iget-object v3, p0, Lya/a;->c:Lya/c;

    .line 19
    .line 20
    invoke-direct {v0, p1, v3, v1, v2}, Lya/a;-><init>(Llb/n0;Lya/c;ZLlb/h0;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final K0(Z)Llb/a0;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lya/a;->d:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lya/a;

    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->c:Lya/c;

    .line 9
    .line 10
    iget-object v2, p0, Lya/a;->e:Llb/h0;

    .line 11
    .line 12
    iget-object v3, p0, Lya/a;->b:Llb/n0;

    .line 13
    .line 14
    invoke-direct {v0, v3, v1, p1, v2}, Lya/a;-><init>(Llb/n0;Lya/c;ZLlb/h0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final L0(Llb/h0;)Llb/a0;
    .locals 4

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lya/a;

    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->c:Lya/c;

    .line 9
    .line 10
    iget-boolean v2, p0, Lya/a;->d:Z

    .line 11
    .line 12
    iget-object v3, p0, Lya/a;->b:Llb/n0;

    .line 13
    .line 14
    invoke-direct {v0, v3, v1, v2, p1}, Lya/a;-><init>(Llb/n0;Lya/c;ZLlb/h0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final R()Leb/o;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sget-object v1, Lnb/h;->b:Lnb/h;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v0}, Lnb/l;->a(Lnb/h;Z[Ljava/lang/String;)Lnb/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Captured("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lya/a;->b:Llb/n0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lya/a;->d:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "?"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, ""

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
