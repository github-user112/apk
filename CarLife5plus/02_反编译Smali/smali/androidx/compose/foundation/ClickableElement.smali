.class final Landroidx/compose/foundation/ClickableElement;
.super Lq2/z0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq2/z0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/ClickableElement;",
        "Lq2/z0;",
        "Lx/r;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lb0/k;

.field public final b:Lx/r0;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Lf9/a;


# direct methods
.method public constructor <init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Landroidx/compose/foundation/ClickableElement;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Landroidx/compose/foundation/ClickableElement;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 30
    .line 31
    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p1, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 66
    .line 67
    iget-object p1, p1, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 68
    .line 69
    if-eq v0, p1, :cond_8

    .line 70
    .line 71
    :goto_0
    const/4 p1, 0x0

    .line 72
    return p1

    .line 73
    :cond_8
    :goto_1
    const/4 p1, 0x1

    .line 74
    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Lx/r0;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 28
    .line 29
    const/16 v3, 0x4d5

    .line 30
    .line 31
    const/16 v4, 0x4cf

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x4cf

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v2, 0x4d5

    .line 39
    .line 40
    :goto_2
    add-int/2addr v1, v2

    .line 41
    mul-int/lit8 v1, v1, 0x1f

    .line 42
    .line 43
    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x4cf

    .line 48
    .line 49
    :cond_3
    add-int/2addr v1, v3

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :cond_4
    add-int/2addr v1, v0

    .line 61
    mul-int/lit16 v1, v1, 0x3c1

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final i()Lr1/o;
    .locals 8

    .line 1
    new-instance v0, Lx/r;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    iget-object v7, p0, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 9
    .line 10
    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 11
    .line 12
    iget-boolean v4, p0, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 13
    .line 14
    iget-object v5, p0, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lx/f;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lx/r;

    .line 3
    .line 4
    const/4 v6, 0x0

    .line 5
    iget-object v7, p0, Landroidx/compose/foundation/ClickableElement;->f:Lf9/a;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/ClickableElement;->a:Lb0/k;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/ClickableElement;->b:Lx/r0;

    .line 10
    .line 11
    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableElement;->c:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Landroidx/compose/foundation/ClickableElement;->d:Z

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/compose/foundation/ClickableElement;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {v0 .. v7}, Lx/f;->M0(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
