.class public final Ls5/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lg1/j0;

.field public b:[B

.field public final c:[I

.field public d:Ls5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Ls5/e;->e:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lg1/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls5/e;->a:Lg1/j0;

    .line 5
    .line 6
    sget-object p1, Ls5/e;->e:[B

    .line 7
    .line 8
    iput-object p1, p0, Ls5/e;->b:[B

    .line 9
    .line 10
    const/16 p1, 0x20

    .line 11
    .line 12
    new-array p1, p1, [I

    .line 13
    .line 14
    iput-object p1, p0, Ls5/e;->c:[I

    .line 15
    .line 16
    return-void
.end method

.method public static a([I)I
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    aget v6, p0, v2

    .line 10
    .line 11
    if-le v6, v3, :cond_0

    .line 12
    .line 13
    move v5, v2

    .line 14
    move v3, v6

    .line 15
    :cond_0
    if-le v6, v4, :cond_1

    .line 16
    .line 17
    move v4, v6

    .line 18
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    if-ge v1, v0, :cond_4

    .line 24
    .line 25
    sub-int v6, v1, v5

    .line 26
    .line 27
    aget v7, p0, v1

    .line 28
    .line 29
    mul-int v7, v7, v6

    .line 30
    .line 31
    mul-int v7, v7, v6

    .line 32
    .line 33
    if-le v7, v3, :cond_3

    .line 34
    .line 35
    move v2, v1

    .line 36
    move v3, v7

    .line 37
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    if-le v5, v2, :cond_5

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_5
    move v8, v5

    .line 44
    move v5, v2

    .line 45
    move v2, v8

    .line 46
    :goto_2
    sub-int v1, v5, v2

    .line 47
    .line 48
    div-int/lit8 v0, v0, 0x10

    .line 49
    .line 50
    if-le v1, v0, :cond_8

    .line 51
    .line 52
    add-int/lit8 v0, v5, -0x1

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    move v1, v0

    .line 56
    const/4 v3, -0x1

    .line 57
    :goto_3
    if-le v0, v2, :cond_7

    .line 58
    .line 59
    sub-int v6, v0, v2

    .line 60
    .line 61
    mul-int v6, v6, v6

    .line 62
    .line 63
    sub-int v7, v5, v0

    .line 64
    .line 65
    mul-int v7, v7, v6

    .line 66
    .line 67
    aget v6, p0, v0

    .line 68
    .line 69
    sub-int v6, v4, v6

    .line 70
    .line 71
    mul-int v6, v6, v7

    .line 72
    .line 73
    if-le v6, v3, :cond_6

    .line 74
    .line 75
    move v1, v0

    .line 76
    move v3, v6

    .line 77
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_7
    shl-int/lit8 p0, v1, 0x3

    .line 81
    .line 82
    return p0

    .line 83
    :cond_8
    sget-object p0, Lm5/i;->c:Lm5/i;

    .line 84
    .line 85
    throw p0
.end method
