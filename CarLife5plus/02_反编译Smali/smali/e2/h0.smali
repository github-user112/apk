.class public final Le2/h0;
.super Le2/j0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lh9/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le2/h0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Le2/h0;->b:F

    .line 7
    .line 8
    iput p3, p0, Le2/h0;->c:F

    .line 9
    .line 10
    iput p4, p0, Le2/h0;->d:F

    .line 11
    .line 12
    iput p5, p0, Le2/h0;->e:F

    .line 13
    .line 14
    iput p6, p0, Le2/h0;->f:F

    .line 15
    .line 16
    iput p7, p0, Le2/h0;->g:F

    .line 17
    .line 18
    iput p8, p0, Le2/h0;->h:F

    .line 19
    .line 20
    iput-object p9, p0, Le2/h0;->i:Ljava/util/List;

    .line 21
    .line 22
    iput-object p10, p0, Le2/h0;->j:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    instance-of v2, p1, Le2/h0;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    check-cast p1, Le2/h0;

    .line 14
    .line 15
    iget-object v2, p1, Le2/h0;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Le2/h0;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget v2, p0, Le2/h0;->b:F

    .line 27
    .line 28
    iget v3, p1, Le2/h0;->b:F

    .line 29
    .line 30
    cmpg-float v2, v2, v3

    .line 31
    .line 32
    if-nez v2, :cond_5

    .line 33
    .line 34
    iget v2, p0, Le2/h0;->c:F

    .line 35
    .line 36
    iget v3, p1, Le2/h0;->c:F

    .line 37
    .line 38
    cmpg-float v2, v2, v3

    .line 39
    .line 40
    if-nez v2, :cond_5

    .line 41
    .line 42
    iget v2, p0, Le2/h0;->d:F

    .line 43
    .line 44
    iget v3, p1, Le2/h0;->d:F

    .line 45
    .line 46
    cmpg-float v2, v2, v3

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    iget v2, p0, Le2/h0;->e:F

    .line 51
    .line 52
    iget v3, p1, Le2/h0;->e:F

    .line 53
    .line 54
    cmpg-float v2, v2, v3

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    iget v2, p0, Le2/h0;->f:F

    .line 59
    .line 60
    iget v3, p1, Le2/h0;->f:F

    .line 61
    .line 62
    cmpg-float v2, v2, v3

    .line 63
    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    iget v2, p0, Le2/h0;->g:F

    .line 67
    .line 68
    iget v3, p1, Le2/h0;->g:F

    .line 69
    .line 70
    cmpg-float v2, v2, v3

    .line 71
    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    iget v2, p0, Le2/h0;->h:F

    .line 75
    .line 76
    iget v3, p1, Le2/h0;->h:F

    .line 77
    .line 78
    cmpg-float v2, v2, v3

    .line 79
    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget-object v2, p0, Le2/h0;->i:Ljava/util/List;

    .line 83
    .line 84
    iget-object v3, p1, Le2/h0;->i:Ljava/util/List;

    .line 85
    .line 86
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    return v1

    .line 93
    :cond_3
    iget-object v2, p0, Le2/h0;->j:Ljava/util/List;

    .line 94
    .line 95
    iget-object p1, p1, Le2/h0;->j:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v2, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    return v1

    .line 104
    :cond_4
    return v0

    .line 105
    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le2/h0;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v2, p0, Le2/h0;->b:F

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v2, p0, Le2/h0;->c:F

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Le2/h0;->d:F

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Le2/h0;->e:F

    .line 30
    .line 31
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v2, p0, Le2/h0;->f:F

    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v2, p0, Le2/h0;->g:F

    .line 42
    .line 43
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v2, p0, Le2/h0;->h:F

    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Lp9/v;->i(FII)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v2, p0, Le2/h0;->i:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v0

    .line 60
    mul-int/lit8 v2, v2, 0x1f

    .line 61
    .line 62
    iget-object v0, p0, Le2/h0;->j:Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v2

    .line 69
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Le2/g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le2/g0;-><init>(Le2/h0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
