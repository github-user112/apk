.class public final Lg3/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final g:Lg3/k;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Li3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg3/k;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    sget-object v6, Li3/b;->c:Li3/b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct/range {v0 .. v6}, Lg3/k;-><init>(ZIZIILi3/b;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lg3/k;->g:Lg3/k;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(ZIZIILi3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lg3/k;->a:Z

    .line 5
    .line 6
    iput p2, p0, Lg3/k;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lg3/k;->c:Z

    .line 9
    .line 10
    iput p4, p0, Lg3/k;->d:I

    .line 11
    .line 12
    iput p5, p0, Lg3/k;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lg3/k;->f:Li3/b;

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
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lg3/k;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lg3/k;

    .line 10
    .line 11
    iget-boolean v0, p1, Lg3/k;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Lg3/k;->a:Z

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget v0, p0, Lg3/k;->b:I

    .line 19
    .line 20
    iget v1, p1, Lg3/k;->b:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_5

    .line 23
    .line 24
    iget-boolean v0, p0, Lg3/k;->c:Z

    .line 25
    .line 26
    iget-boolean v1, p1, Lg3/k;->c:Z

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    iget v0, p0, Lg3/k;->d:I

    .line 32
    .line 33
    iget v1, p1, Lg3/k;->d:I

    .line 34
    .line 35
    if-ne v0, v1, :cond_5

    .line 36
    .line 37
    iget v0, p0, Lg3/k;->e:I

    .line 38
    .line 39
    iget v1, p1, Lg3/k;->e:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lg3/k;->f:Li3/b;

    .line 44
    .line 45
    iget-object p1, p1, Lg3/k;->f:Li3/b;

    .line 46
    .line 47
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg3/k;->a:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x4cf

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x4d5

    .line 13
    .line 14
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget v3, p0, Lg3/k;->b:I

    .line 17
    .line 18
    add-int/2addr v0, v3

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-boolean v3, p0, Lg3/k;->c:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x4cf

    .line 26
    .line 27
    :cond_1
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget v1, p0, Lg3/k;->d:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget v1, p0, Lg3/k;->e:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit16 v0, v0, 0x3c1

    .line 39
    .line 40
    iget-object v1, p0, Lg3/k;->f:Li3/b;

    .line 41
    .line 42
    iget-object v1, v1, Li3/b;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImeOptions(singleLine="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lg3/k;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", capitalization="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iget v2, p0, Lg3/k;->b:I

    .line 20
    .line 21
    if-ne v2, v1, :cond_0

    .line 22
    .line 23
    const-string v1, "Unspecified"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v1, "None"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    if-ne v2, v1, :cond_2

    .line 33
    .line 34
    const-string v1, "Characters"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x2

    .line 38
    if-ne v2, v1, :cond_3

    .line 39
    .line 40
    const-string v1, "Words"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v1, 0x3

    .line 44
    if-ne v2, v1, :cond_4

    .line 45
    .line 46
    const-string v1, "Sentences"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "Invalid"

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", autoCorrect="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lg3/k;->c:Z

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", keyboardType="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lg3/k;->d:I

    .line 70
    .line 71
    invoke-static {v1}, Lc7/a;->Y(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", imeAction="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lg3/k;->e:I

    .line 84
    .line 85
    invoke-static {v1}, Lg3/j;->a(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", platformImeOptions=null, hintLocales="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lg3/k;->f:Li3/b;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x29

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method
