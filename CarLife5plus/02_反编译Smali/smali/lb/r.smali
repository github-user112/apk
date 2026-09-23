.class public final Llb/r;
.super Llb/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llb/w0;


# instance fields
.field public final d:Llb/p;

.field public final e:Llb/w;


# direct methods
.method public constructor <init>(Llb/p;Llb/w;)V
    .locals 2

    .line 1
    const-string v0, "origin"

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
    iget-object v0, p1, Llb/p;->b:Llb/a0;

    .line 12
    .line 13
    iget-object v1, p1, Llb/p;->c:Llb/a0;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Llb/p;-><init>(Llb/a0;Llb/a0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Llb/r;->d:Llb/p;

    .line 19
    .line 20
    iput-object p2, p0, Llb/r;->e:Llb/w;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final E()Llb/w;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/r;->e:Llb/w;

    .line 2
    .line 3
    return-object v0
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
    new-instance p1, Llb/r;

    .line 7
    .line 8
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 9
    .line 10
    const-string v1, "type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Llb/r;->e:Llb/w;

    .line 16
    .line 17
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, v2}, Llb/r;-><init>(Llb/p;Llb/w;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final H0(Z)Llb/x0;
    .locals 2

    .line 1
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Llb/x0;->H0(Z)Llb/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Llb/r;->e:Llb/w;

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
    return-object p1
.end method

.method public final I0(Lmb/f;)Llb/x0;
    .locals 3

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Llb/r;

    .line 7
    .line 8
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 9
    .line 10
    const-string v1, "type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Llb/r;->e:Llb/w;

    .line 16
    .line 17
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, v2}, Llb/r;-><init>(Llb/p;Llb/w;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final J0(Llb/h0;)Llb/x0;
    .locals 1

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Llb/x0;->J0(Llb/h0;)Llb/x0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Llb/r;->e:Llb/w;

    .line 13
    .line 14
    invoke-static {p1, v0}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final K0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Llb/p;->K0()Llb/a0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final L0(Lwa/g;Lwa/g;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p2, Lwa/g;->a:Lwa/k;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/k;->m:Lwa/j;

    .line 4
    .line 5
    sget-object v2, Lwa/k;->Y:[Lm9/u;

    .line 6
    .line 7
    const/16 v3, 0xb

    .line 8
    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Llb/r;->e:Llb/w;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Llb/p;->L0(Lwa/g;Lwa/g;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
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
    iget-object v1, p0, Llb/r;->e:Llb/w;

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
    iget-object v1, p0, Llb/r;->d:Llb/p;

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
    iget-object v0, p0, Llb/r;->d:Llb/p;

    .line 2
    .line 3
    return-object v0
.end method
