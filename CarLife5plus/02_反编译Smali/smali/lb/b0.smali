.class public final Llb/b0;
.super Llb/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Llb/k0;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Leb/o;

.field public final f:Lf9/k;


# direct methods
.method public constructor <init>(Llb/k0;Ljava/util/List;ZLeb/o;Lf9/k;)V
    .locals 1

    .line 1
    const-string v0, "constructor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "arguments"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "memberScope"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Llb/b0;->b:Llb/k0;

    .line 20
    .line 21
    iput-object p2, p0, Llb/b0;->c:Ljava/util/List;

    .line 22
    .line 23
    iput-boolean p3, p0, Llb/b0;->d:Z

    .line 24
    .line 25
    iput-object p4, p0, Llb/b0;->e:Leb/o;

    .line 26
    .line 27
    iput-object p5, p0, Llb/b0;->f:Lf9/k;

    .line 28
    .line 29
    instance-of p2, p4, Lnb/g;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    instance-of p2, p4, Lnb/m;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p5, "SimpleTypeImpl should not be created for error type: "

    .line 43
    .line 44
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 p4, 0xa

    .line 51
    .line 52
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b0;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0()Llb/h0;
    .locals 1

    .line 1
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llb/h0;->c:Llb/h0;

    .line 7
    .line 8
    return-object v0
.end method

.method public final D0()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b0;->b:Llb/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llb/b0;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final F0(Lmb/f;)Llb/w;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/b0;->f:Lf9/k;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Llb/a0;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    return-object p1
.end method

.method public final I0(Lmb/f;)Llb/x0;
    .locals 1

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/b0;->f:Lf9/k;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Llb/a0;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    return-object p1
.end method

.method public final K0(Z)Llb/a0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Llb/b0;->d:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Llb/z;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, v0}, Llb/z;-><init>(Llb/a0;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    new-instance p1, Llb/z;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Llb/z;-><init>(Llb/a0;I)V

    .line 19
    .line 20
    .line 21
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
    invoke-virtual {p1}, Lrb/d;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Llb/c0;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Llb/c0;-><init>(Llb/a0;Llb/h0;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final R()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/b0;->e:Leb/o;

    .line 2
    .line 3
    return-object v0
.end method
