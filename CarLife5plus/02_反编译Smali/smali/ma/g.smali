.class public final Lma/g;
.super Llb/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llb/j;


# instance fields
.field public final b:Llb/a0;


# direct methods
.method public constructor <init>(Llb/a0;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

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
    iput-object p1, p0, Lma/g;->b:Llb/a0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final E0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final J0(Llb/h0;)Llb/x0;
    .locals 2

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lma/g;

    .line 7
    .line 8
    iget-object v1, p0, Lma/g;->b:Llb/a0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lma/g;-><init>(Llb/a0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final K0(Z)Llb/a0;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lma/g;->b:Llb/a0;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Llb/a0;->K0(Z)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    return-object p0
.end method

.method public final L0(Llb/h0;)Llb/a0;
    .locals 2

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lma/g;

    .line 7
    .line 8
    iget-object v1, p0, Lma/g;->b:Llb/a0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lma/g;-><init>(Llb/a0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final M0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/g;->b:Llb/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0(Llb/a0;)Llb/m;
    .locals 1

    .line 1
    new-instance v0, Lma/g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lma/g;-><init>(Llb/a0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final p0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final x(Llb/w;)Llb/x0;
    .locals 4

    .line 1
    const-string v0, "replacement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb/w;->G0()Llb/x0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Llb/v0;->f(Llb/w;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Llb/v0;->e(Llb/w;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    instance-of v0, p1, Llb/a0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p1, Llb/a0;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Llb/a0;->K0(Z)Llb/a0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1}, Llb/v0;->f(Llb/w;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p1, Lma/g;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lma/g;-><init>(Llb/a0;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2
    instance-of v0, p1, Llb/p;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Llb/p;

    .line 53
    .line 54
    iget-object v2, v0, Llb/p;->b:Llb/a0;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Llb/a0;->K0(Z)Llb/a0;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2}, Llb/v0;->f(Llb/w;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v2, Lma/g;

    .line 68
    .line 69
    invoke-direct {v2, v3}, Lma/g;-><init>(Llb/a0;)V

    .line 70
    .line 71
    .line 72
    move-object v3, v2

    .line 73
    :goto_0
    iget-object v0, v0, Llb/p;->c:Llb/a0;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Llb/a0;->K0(Z)Llb/a0;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0}, Llb/v0;->f(Llb/w;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    new-instance v0, Lma/g;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Lma/g;-><init>(Llb/a0;)V

    .line 89
    .line 90
    .line 91
    move-object v1, v0

    .line 92
    :goto_1
    invoke-static {v3, v1}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1}, Llb/c;->f(Llb/w;)Llb/w;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Llb/c;->F(Llb/x0;Llb/w;)Llb/x0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_5
    new-instance p1, Lac/p;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw p1
.end method
