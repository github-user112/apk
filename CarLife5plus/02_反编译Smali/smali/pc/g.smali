.class public final Lpc/g;
.super Lm9/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final i:Lha/e;

.field public final j:Ln6/a;


# direct methods
.method public constructor <init>(Lha/e;Loc/b;)V
    .locals 1

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpc/g;->i:Lha/e;

    .line 10
    .line 11
    iget-object p1, p2, Loc/b;->b:Ln6/a;

    .line 12
    .line 13
    iput-object p1, p0, Lpc/g;->j:Ln6/a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final f(Llc/e;)I
    .locals 1

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "unsupported"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final o()I
    .locals 5

    .line 1
    iget-object v0, p0, Lpc/g;->i:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string v3, "<this>"

    .line 9
    .line 10
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lp9/q;->L(Ljava/lang/String;)Lr8/s;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget v0, v3, Lr8/s;->a:I

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-static {v1}, Lxb/p;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Failed to parse type \'UInt\' for input \'"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x6

    .line 47
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    throw v2
.end method

.method public final p()Ln6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/g;->j:Ln6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()J
    .locals 5

    .line 1
    iget-object v0, p0, Lpc/g;->i:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string v3, "<this>"

    .line 9
    .line 10
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lp9/q;->M(Ljava/lang/String;)Lr8/u;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-wide v0, v3, Lr8/u;->a:J

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    invoke-static {v1}, Lxb/p;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Failed to parse type \'ULong\' for input \'"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x6

    .line 47
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    throw v2
.end method

.method public final w()B
    .locals 6

    .line 1
    iget-object v0, p0, Lpc/g;->i:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string v3, "<this>"

    .line 9
    .line 10
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lp9/q;->L(Ljava/lang/String;)Lr8/s;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget v3, v3, Lr8/s;->a:I

    .line 20
    .line 21
    const/high16 v4, -0x80000000

    .line 22
    .line 23
    xor-int/2addr v4, v3

    .line 24
    const v5, -0x7fffff01

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lez v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    int-to-byte v3, v3

    .line 35
    new-instance v4, Lr8/q;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Lr8/q;-><init>(B)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move-object v4, v2

    .line 42
    :goto_1
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-byte v0, v4, Lr8/q;->a:B

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    invoke-static {v1}, Lxb/p;->y(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "Failed to parse type \'UByte\' for input \'"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x27

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x6

    .line 72
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    throw v2
.end method

.method public final y()S
    .locals 6

    .line 1
    iget-object v0, p0, Lpc/g;->i:Lha/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/e;->k()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string v3, "<this>"

    .line 9
    .line 10
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lp9/q;->L(Ljava/lang/String;)Lr8/s;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget v3, v3, Lr8/s;->a:I

    .line 20
    .line 21
    const/high16 v4, -0x80000000

    .line 22
    .line 23
    xor-int/2addr v4, v3

    .line 24
    const v5, -0x7fff0001

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lez v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    int-to-short v3, v3

    .line 35
    new-instance v4, Lr8/x;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Lr8/x;-><init>(S)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move-object v4, v2

    .line 42
    :goto_1
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-short v0, v4, Lr8/x;->a:S

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    invoke-static {v1}, Lxb/p;->y(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "Failed to parse type \'UShort\' for input \'"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x27

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x6

    .line 72
    invoke-static {v0, v1, v3, v2, v4}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    throw v2
.end method
