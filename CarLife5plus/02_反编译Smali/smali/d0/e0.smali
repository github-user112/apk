.class public final Ld0/e0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/t1;


# instance fields
.field public o:F

.field public p:Z


# virtual methods
.method public final k0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ld0/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ld0/k0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    new-instance p1, Ld0/k0;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p1, Ld0/k0;->a:F

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p1, Ld0/k0;->b:Z

    .line 21
    .line 22
    :cond_1
    iget v0, p0, Ld0/e0;->o:F

    .line 23
    .line 24
    iput v0, p1, Ld0/k0;->a:F

    .line 25
    .line 26
    iget-boolean v0, p0, Ld0/e0;->p:Z

    .line 27
    .line 28
    iput-boolean v0, p1, Ld0/k0;->b:Z

    .line 29
    .line 30
    return-object p1
.end method
