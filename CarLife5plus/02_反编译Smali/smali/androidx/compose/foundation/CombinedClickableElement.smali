.class final Landroidx/compose/foundation/CombinedClickableElement;
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
        "Landroidx/compose/foundation/CombinedClickableElement;",
        "Lq2/z0;",
        "Lx/x;",
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

.field public final b:Lf9/a;

.field public final c:Lf9/a;


# direct methods
.method public constructor <init>(Lb0/k;Lf9/a;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Landroidx/compose/foundation/CombinedClickableElement;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    check-cast p1, Landroidx/compose/foundation/CombinedClickableElement;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

    .line 20
    .line 21
    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 31
    .line 32
    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 33
    .line 34
    if-eq v1, v2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 40
    .line 41
    if-eq v1, p1, :cond_5

    .line 42
    .line 43
    :goto_0
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

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
    mul-int/lit16 v1, v1, 0x3c1

    .line 13
    .line 14
    add-int/lit16 v1, v1, 0x4d5

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    add-int/lit16 v1, v1, 0x4cf

    .line 19
    .line 20
    mul-int/lit16 v1, v1, 0x745f

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v1

    .line 29
    mul-int/lit16 v2, v2, 0x3c1

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :cond_1
    add-int/2addr v2, v0

    .line 40
    mul-int/lit16 v2, v2, 0x3c1

    .line 41
    .line 42
    add-int/lit16 v2, v2, 0x4cf

    .line 43
    .line 44
    return v2
.end method

.method public final i()Lr1/o;
    .locals 4

    .line 1
    new-instance v0, Lx/x;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Lx/x;-><init>(Lb0/k;Lf9/a;Lf9/a;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lx/x;

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lx/x;->L:Z

    .line 6
    .line 7
    iget-object v1, v0, Lx/x;->K:Lf9/a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Lf9/a;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v4, 0x0

    .line 22
    :goto_1
    if-eq v1, v4, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lx/f;->G0()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lq2/f;->n(Lq2/y1;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    :cond_2
    iput-object v3, v0, Lx/x;->K:Lf9/a;

    .line 32
    .line 33
    iget-boolean v1, v0, Lx/f;->v:Z

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq v1, v4, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move p1, v2

    .line 40
    :goto_2
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->a:Lb0/k;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Lf9/a;

    .line 47
    .line 48
    invoke-virtual/range {v0 .. v7}, Lx/f;->M0(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, v0, Lx/f;->z:Lk2/n0;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lk2/n0;->C0()V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
.end method
