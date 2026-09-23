.class public final Landroidx/compose/foundation/gestures/DraggableElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DraggableElement;",
        "Lq2/z0;",
        "Lz/j0;",
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


# static fields
.field public static final h:Lx7/h;


# instance fields
.field public final a:Lc1/i2;

.field public final b:Z

.field public final c:Lb0/k;

.field public final d:Z

.field public final e:Lf9/o;

.field public final f:Lf9/o;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx7/h;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx7/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/gestures/DraggableElement;->h:Lx7/h;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lc1/i2;ZLb0/k;ZLf9/o;Lf9/o;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 15
    .line 16
    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 17
    .line 18
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
    const-class v0, Landroidx/compose/foundation/gestures/DraggableElement;

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
    check-cast p1, Landroidx/compose/foundation/gestures/DraggableElement;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

    .line 55
    .line 56
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

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
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 66
    .line 67
    iget-object v1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 77
    .line 78
    iget-boolean p1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 79
    .line 80
    if-eq v0, p1, :cond_9

    .line 81
    .line 82
    :goto_0
    const/4 p1, 0x0

    .line 83
    return p1

    .line 84
    :cond_9
    :goto_1
    const/4 p1, 0x1

    .line 85
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 19
    .line 20
    const/16 v2, 0x4d5

    .line 21
    .line 22
    const/16 v3, 0x4cf

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x4cf

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v0, 0x4d5

    .line 30
    .line 31
    :goto_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    add-int/2addr v1, v0

    .line 45
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0x4cf

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v0, 0x4d5

    .line 55
    .line 56
    :goto_2
    add-int/2addr v1, v0

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v0

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const/16 v2, 0x4cf

    .line 82
    .line 83
    :cond_3
    add-int/2addr v1, v2

    .line 84
    return v1
.end method

.method public final i()Lr1/o;
    .locals 5

    .line 1
    new-instance v0, Lz/j0;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableElement;->h:Lx7/h;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 8
    .line 9
    sget-object v4, Lz/w0;->b:Lz/w0;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lz/f0;-><init>(Lf9/k;ZLb0/k;Lz/w0;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 15
    .line 16
    iput-object v1, v0, Lz/j0;->z:Lc1/i2;

    .line 17
    .line 18
    iput-object v4, v0, Lz/j0;->A:Lz/w0;

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lz/j0;->B:Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

    .line 25
    .line 26
    iput-object v1, v0, Lz/j0;->C:Lf9/o;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 29
    .line 30
    iput-object v1, v0, Lz/j0;->D:Lf9/o;

    .line 31
    .line 32
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lz/j0;->E:Z

    .line 35
    .line 36
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lz/j0;

    .line 3
    .line 4
    iget-object p1, v0, Lz/j0;->z:Lc1/i2;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->a:Lc1/i2;

    .line 7
    .line 8
    invoke-static {p1, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-object v1, v0, Lz/j0;->z:Lc1/i2;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v1, v0, Lz/j0;->A:Lz/w0;

    .line 21
    .line 22
    sget-object v4, Lz/w0;->b:Lz/w0;

    .line 23
    .line 24
    if-eq v1, v4, :cond_1

    .line 25
    .line 26
    iput-object v4, v0, Lz/j0;->A:Lz/w0;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    :cond_1
    iget-boolean v1, v0, Lz/j0;->E:Z

    .line 30
    .line 31
    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->g:Z

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    iput-boolean v3, v0, Lz/j0;->E:Z

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v5, p1

    .line 40
    :goto_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->e:Lf9/o;

    .line 41
    .line 42
    iput-object p1, v0, Lz/j0;->C:Lf9/o;

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->f:Lf9/o;

    .line 45
    .line 46
    iput-object p1, v0, Lz/j0;->D:Lf9/o;

    .line 47
    .line 48
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->d:Z

    .line 49
    .line 50
    iput-boolean p1, v0, Lz/j0;->B:Z

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableElement;->h:Lx7/h;

    .line 53
    .line 54
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->b:Z

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->c:Lb0/k;

    .line 57
    .line 58
    invoke-virtual/range {v0 .. v5}, Lz/f0;->L0(Lf9/k;ZLb0/k;Lz/w0;Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
