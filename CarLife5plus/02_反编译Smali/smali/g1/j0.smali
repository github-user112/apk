.class public abstract Lg1/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg1/j0;->a:I

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lg1/j0;-><init>(IIIB)V

    return-void
.end method

.method public synthetic constructor <init>(IIIB)V
    .locals 0

    .line 1
    iput p3, p0, Lg1/j0;->a:I

    iput p1, p0, Lg1/j0;->b:I

    iput p2, p0, Lg1/j0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lg1/j0;)Lra/b;
    .locals 4

    .line 1
    iget v0, p0, Lg1/j0;->b:I

    .line 2
    .line 3
    iget p0, p0, Lg1/j0;->c:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    new-instance p0, Lra/b;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {p0, v0, v3, v1, v2}, Lg1/j0;-><init>(IIIB)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public static b()Lra/b;
    .locals 5

    .line 1
    new-instance v0, Lra/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    invoke-direct {v0, v3, v4, v1, v2}, Lg1/j0;-><init>(IIIB)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract c(Lg1/l0;Lf1/c;Lf1/k2;Ln1/i;Lg1/k0;)V
.end method

.method public d(Lg1/l0;)Lf1/a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public abstract e()[B
.end method

.method public abstract f([BI)[B
.end method

.method public g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public h()Lg1/j0;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "This luminance source does not support rotation by 90 degrees."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lg1/j0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget v0, p0, Lg1/j0;->b:I

    .line 12
    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    add-int/lit8 v3, v0, 0x1

    .line 18
    .line 19
    iget v4, p0, Lg1/j0;->c:I

    .line 20
    .line 21
    mul-int v3, v3, v4

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v4, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, v1, v5}, Lg1/j0;->f([BI)[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_1
    if-ge v6, v0, :cond_3

    .line 36
    .line 37
    aget-byte v7, v1, v6

    .line 38
    .line 39
    and-int/lit16 v7, v7, 0xff

    .line 40
    .line 41
    const/16 v8, 0x40

    .line 42
    .line 43
    if-ge v7, v8, :cond_0

    .line 44
    .line 45
    const/16 v7, 0x23

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    const/16 v8, 0x80

    .line 49
    .line 50
    if-ge v7, v8, :cond_1

    .line 51
    .line 52
    const/16 v7, 0x2b

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/16 v8, 0xc0

    .line 56
    .line 57
    if-ge v7, v8, :cond_2

    .line 58
    .line 59
    const/16 v7, 0x2e

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v7, 0x20

    .line 63
    .line 64
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/16 v6, 0xa

    .line 71
    .line 72
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lm9/c;->k()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    :cond_5
    return-object v0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
