.class public final Lg0/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/support/v4/media/session/t;

.field public final b:I

.field public final c:I

.field public final d:Lg0/k;

.field public final e:Lg0/r;

.field public final synthetic f:Landroid/support/v4/media/session/t;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/t;IILg0/k;Lg0/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/l;->f:Landroid/support/v4/media/session/t;

    .line 5
    .line 6
    iput-object p1, p0, Lg0/l;->a:Landroid/support/v4/media/session/t;

    .line 7
    .line 8
    iput p2, p0, Lg0/l;->b:I

    .line 9
    .line 10
    iput p3, p0, Lg0/l;->c:I

    .line 11
    .line 12
    iput-object p4, p0, Lg0/l;->d:Lg0/k;

    .line 13
    .line 14
    iput-object p5, p0, Lg0/l;->e:Lg0/r;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(II)J
    .locals 3

    .line 1
    iget-object v0, p0, Lg0/l;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne p2, v2, :cond_0

    .line 9
    .line 10
    aget p1, v1, p1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    add-int/2addr p2, p1

    .line 14
    sub-int/2addr p2, v2

    .line 15
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [I

    .line 18
    .line 19
    aget v2, v0, p2

    .line 20
    .line 21
    aget p2, v1, p2

    .line 22
    .line 23
    add-int/2addr v2, p2

    .line 24
    aget p1, v0, p1

    .line 25
    .line 26
    sub-int p1, v2, p1

    .line 27
    .line 28
    :goto_0
    const/4 p2, 0x0

    .line 29
    if-gez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_1
    if-ltz p1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-string v0, "width must be >= 0"

    .line 36
    .line 37
    invoke-static {v0}, Ln3/i;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    const v0, 0x7fffffff

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p1, p2, v0}, Ln3/b;->h(IIII)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    return-wide p1
.end method

.method public final b(I)Lg0/o;
    .locals 13

    .line 1
    iget-object v0, p0, Lg0/l;->e:Lg0/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg0/r;->b(I)Lb4/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Lb4/l;->a:I

    .line 8
    .line 9
    iget-object v2, v0, Lb4/l;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    add-int v5, v1, v3

    .line 19
    .line 20
    iget v6, p0, Lg0/l;->b:I

    .line 21
    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v5, p0, Lg0/l;->c:I

    .line 26
    .line 27
    move v11, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 30
    :goto_1
    new-array v5, v3, [Lg0/n;

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    :goto_2
    if-ge v4, v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lg0/b;

    .line 40
    .line 41
    iget-wide v6, v6, Lg0/b;->a:J

    .line 42
    .line 43
    long-to-int v7, v6

    .line 44
    invoke-virtual {p0, v10, v7}, Lg0/l;->a(II)J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    iget-object v6, p0, Lg0/l;->d:Lg0/k;

    .line 49
    .line 50
    move v12, v11

    .line 51
    move v11, v7

    .line 52
    add-int v7, v1, v4

    .line 53
    .line 54
    invoke-virtual/range {v6 .. v12}, Lg0/k;->u0(IJIII)Lg0/n;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    add-int/2addr v10, v11

    .line 59
    aput-object v6, v5, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    move v11, v12

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v12, v11

    .line 66
    iget-object v10, v0, Lb4/l;->b:Ljava/util/List;

    .line 67
    .line 68
    new-instance v6, Lg0/o;

    .line 69
    .line 70
    iget-object v9, p0, Lg0/l;->f:Landroid/support/v4/media/session/t;

    .line 71
    .line 72
    move v7, p1

    .line 73
    move-object v8, v5

    .line 74
    invoke-direct/range {v6 .. v11}, Lg0/o;-><init>(I[Lg0/n;Landroid/support/v4/media/session/t;Ljava/util/List;I)V

    .line 75
    .line 76
    .line 77
    return-object v6
.end method
