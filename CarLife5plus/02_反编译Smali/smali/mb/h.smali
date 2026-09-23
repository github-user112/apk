.class public final Lmb/h;
.super Llb/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lob/c;


# instance fields
.field public final b:Lob/b;

.field public final c:Lmb/i;

.field public final d:Llb/x0;

.field public final e:Llb/h0;

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZI)V
    .locals 7

    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_0

    .line 8
    sget-object p4, Llb/h0;->b:Lu0/j;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object p4, Llb/h0;->c:Llb/h0;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lmb/h;-><init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZZ)V

    return-void
.end method

.method public constructor <init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZZ)V
    .locals 1

    const-string v0, "captureStatus"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmb/h;->b:Lob/b;

    .line 3
    iput-object p2, p0, Lmb/h;->c:Lmb/i;

    .line 4
    iput-object p3, p0, Lmb/h;->d:Llb/x0;

    .line 5
    iput-object p4, p0, Lmb/h;->e:Llb/h0;

    .line 6
    iput-boolean p5, p0, Lmb/h;->f:Z

    .line 7
    iput-boolean p6, p0, Lmb/h;->g:Z

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
    iget-object v0, p0, Lmb/h;->e:Llb/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Llb/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lmb/h;->c:Lmb/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmb/h;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic F0(Lmb/f;)Llb/w;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmb/h;->M0(Lmb/f;)Lmb/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final H0(Z)Llb/x0;
    .locals 7

    .line 1
    new-instance v0, Lmb/h;

    .line 2
    .line 3
    iget-object v4, p0, Lmb/h;->e:Llb/h0;

    .line 4
    .line 5
    const/16 v6, 0x20

    .line 6
    .line 7
    iget-object v1, p0, Lmb/h;->b:Lob/b;

    .line 8
    .line 9
    iget-object v2, p0, Lmb/h;->c:Lmb/i;

    .line 10
    .line 11
    iget-object v3, p0, Lmb/h;->d:Llb/x0;

    .line 12
    .line 13
    move v5, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Lmb/h;-><init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZI)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final bridge synthetic I0(Lmb/f;)Llb/x0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmb/h;->M0(Lmb/f;)Lmb/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final K0(Z)Llb/a0;
    .locals 7

    .line 1
    new-instance v0, Lmb/h;

    .line 2
    .line 3
    iget-object v4, p0, Lmb/h;->e:Llb/h0;

    .line 4
    .line 5
    const/16 v6, 0x20

    .line 6
    .line 7
    iget-object v1, p0, Lmb/h;->b:Lob/b;

    .line 8
    .line 9
    iget-object v2, p0, Lmb/h;->c:Lmb/i;

    .line 10
    .line 11
    iget-object v3, p0, Lmb/h;->d:Llb/x0;

    .line 12
    .line 13
    move v5, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Lmb/h;-><init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZI)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final L0(Llb/h0;)Llb/a0;
    .locals 8

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lmb/h;

    .line 7
    .line 8
    iget-boolean v6, p0, Lmb/h;->f:Z

    .line 9
    .line 10
    iget-boolean v7, p0, Lmb/h;->g:Z

    .line 11
    .line 12
    iget-object v2, p0, Lmb/h;->b:Lob/b;

    .line 13
    .line 14
    iget-object v3, p0, Lmb/h;->c:Lmb/i;

    .line 15
    .line 16
    iget-object v4, p0, Lmb/h;->d:Llb/x0;

    .line 17
    .line 18
    move-object v5, p1

    .line 19
    invoke-direct/range {v1 .. v7}, Lmb/h;-><init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZZ)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final M0(Lmb/f;)Lmb/h;
    .locals 11

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmb/h;->c:Lmb/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lmb/i;->a:Llb/n0;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Llb/n0;->d(Lmb/f;)Llb/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lmb/i;->b:Lf9/a;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, La8/f0;

    .line 23
    .line 24
    const/16 v4, 0xa

    .line 25
    .line 26
    invoke-direct {v2, v4, v0, p1}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v3

    .line 31
    :goto_0
    iget-object p1, v0, Lmb/i;->c:Lmb/i;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :cond_1
    iget-object v0, v0, Lmb/i;->d:Lv9/q0;

    .line 37
    .line 38
    new-instance v6, Lmb/i;

    .line 39
    .line 40
    invoke-direct {v6, v1, v2, p1, v0}, Lmb/i;-><init>(Llb/n0;Lf9/a;Lmb/i;Lv9/q0;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lmb/h;->d:Llb/x0;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    move-object v7, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v7, v3

    .line 50
    :goto_1
    new-instance v4, Lmb/h;

    .line 51
    .line 52
    iget-object v5, p0, Lmb/h;->b:Lob/b;

    .line 53
    .line 54
    iget-object v8, p0, Lmb/h;->e:Llb/h0;

    .line 55
    .line 56
    iget-boolean v9, p0, Lmb/h;->f:Z

    .line 57
    .line 58
    const/16 v10, 0x20

    .line 59
    .line 60
    invoke-direct/range {v4 .. v10}, Lmb/h;-><init>(Lob/b;Lmb/i;Llb/x0;Llb/h0;ZI)V

    .line 61
    .line 62
    .line 63
    return-object v4
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
