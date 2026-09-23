.class public abstract synthetic Lj6/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    filled-new-array {v2, v3, v1, v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lj6/d;->a:[I

    .line 10
    .line 11
    return-void
.end method

.method public static a(III)Z
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    add-int p0, p1, p2

    .line 5
    .line 6
    mul-int p1, p1, p2

    .line 7
    .line 8
    rem-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    add-int/2addr p1, p0

    .line 11
    const/4 p0, 0x1

    .line 12
    and-int/2addr p1, p0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0

    .line 18
    :pswitch_0
    mul-int p1, p1, p2

    .line 19
    .line 20
    rem-int/lit8 p1, p1, 0x6

    .line 21
    .line 22
    const/4 p0, 0x3

    .line 23
    if-ge p1, p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    return p0

    .line 29
    :pswitch_1
    mul-int p1, p1, p2

    .line 30
    .line 31
    rem-int/lit8 p1, p1, 0x6

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_2
    return p0

    .line 39
    :pswitch_2
    div-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    div-int/lit8 p2, p2, 0x3

    .line 42
    .line 43
    add-int/2addr p2, p1

    .line 44
    const/4 p0, 0x1

    .line 45
    and-int/lit8 p1, p2, 0x1

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/4 p0, 0x0

    .line 51
    :goto_3
    return p0

    .line 52
    :pswitch_3
    add-int/2addr p1, p2

    .line 53
    rem-int/lit8 p1, p1, 0x3

    .line 54
    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    const/4 p0, 0x0

    .line 60
    :goto_4
    return p0

    .line 61
    :pswitch_4
    rem-int/lit8 p2, p2, 0x3

    .line 62
    .line 63
    if-nez p2, :cond_5

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    const/4 p0, 0x0

    .line 68
    :goto_5
    return p0

    .line 69
    :pswitch_5
    const/4 p0, 0x1

    .line 70
    and-int/2addr p1, p0

    .line 71
    if-nez p1, :cond_6

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_6
    const/4 p0, 0x0

    .line 75
    :goto_6
    return p0

    .line 76
    :pswitch_6
    add-int/2addr p1, p2

    .line 77
    const/4 p0, 0x1

    .line 78
    and-int/2addr p1, p0

    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_7
    const/4 p0, 0x0

    .line 83
    :goto_7
    return p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
