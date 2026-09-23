.class public final Lo2/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/o0;
.implements Lo2/r;


# instance fields
.field public final synthetic a:Lo2/r;

.field public final b:Ln3/m;


# direct methods
.method public constructor <init>(Lo2/r;Ln3/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo2/v;->a:Lo2/r;

    .line 5
    .line 6
    iput-object p2, p0, Lo2/v;->b:Ln3/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->D(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final H(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->H(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final J(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->J(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final K(IILjava/util/Map;Lf9/k;Lf9/k;)Lo2/n0;
    .locals 1

    .line 1
    const/4 p5, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    :cond_0
    if-gez p2, :cond_1

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_1
    const/high16 p5, -0x1000000

    .line 9
    .line 10
    and-int v0, p1, p5

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    and-int/2addr p5, p2

    .line 15
    if-nez p5, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Size("

    .line 21
    .line 22
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " x "

    .line 29
    .line 30
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ") is out of range. Each dimension must be between 0 and 16777215."

    .line 37
    .line 38
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    invoke-static {p5}, Ln2/a;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance p5, Lo2/u;

    .line 49
    .line 50
    invoke-direct {p5, p1, p2, p3, p4}, Lo2/u;-><init>(IILjava/util/Map;Lf9/k;)V

    .line 51
    .line 52
    .line 53
    return-object p5
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0}, Ln3/c;->M()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/r;->Q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final R(IILjava/util/Map;Lf9/k;)Lo2/n0;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lo2/v;->K(IILjava/util/Map;Lf9/k;Lf9/k;)Lo2/n0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final S(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0}, Ln3/c;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b0(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ln3/c;->b0(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e0(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->e0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->b:Ln3/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->h0(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final m(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->m(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final q(J)F
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/v;->a:Lo2/r;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ln3/c;->q(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
