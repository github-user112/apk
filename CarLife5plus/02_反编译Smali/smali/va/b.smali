.class public abstract Lva/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lva/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lva/g;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public static b(Lva/a;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Lva/u;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lac/p;

    .line 11
    .line 12
    invoke-direct {v0}, Lac/p;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lva/q;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p0, v1, Lva/q;->a:Lva/a;

    .line 25
    .line 26
    throw v1

    .line 27
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/io/ByteArrayInputStream;Lva/g;)Lva/a;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    and-int/lit16 v2, v0, 0x80

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    :goto_0
    const/16 v3, 0x20

    .line 19
    .line 20
    if-ge v2, v3, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v3, v1, :cond_3

    .line 27
    .line 28
    and-int/lit8 v4, v3, 0x7f

    .line 29
    .line 30
    shl-int/2addr v4, v2

    .line 31
    or-int/2addr v0, v4

    .line 32
    and-int/lit16 v3, v3, 0x80

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x7

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-static {}, Lva/q;->a()Lva/q;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    throw p1

    .line 45
    :cond_4
    :goto_1
    const/16 v3, 0x40

    .line 46
    .line 47
    if-ge v2, v3, :cond_7

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 50
    .line 51
    .line 52
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    if-eq v3, v1, :cond_6

    .line 54
    .line 55
    and-int/lit16 v3, v3, 0x80

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    :goto_2
    new-instance v1, Lcom/google/protobuf/a;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, p1, v0, v2}, Lcom/google/protobuf/a;-><init>(Ljava/io/InputStream;II)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lva/e;

    .line 66
    .line 67
    invoke-direct {p1, v1}, Lva/e;-><init>(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, p1, p2}, Lva/v;->a(Lva/e;Lva/g;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lva/a;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    :try_start_1
    invoke-virtual {p1, v0}, Lva/e;->a(I)V
    :try_end_1
    .catch Lva/q; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    move-object p1, p2

    .line 81
    :goto_3
    invoke-static {p1}, Lva/b;->b(Lva/a;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    iput-object p2, p1, Lva/q;->a:Lva/a;

    .line 87
    .line 88
    throw p1

    .line 89
    :cond_5
    add-int/lit8 v2, v2, 0x7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    :try_start_2
    invoke-static {}, Lva/q;->a()Lva/q;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    throw p1

    .line 97
    :cond_7
    new-instance p1, Lva/q;

    .line 98
    .line 99
    const-string p2, "CodedInputStream encountered a malformed varint."

    .line 100
    .line 101
    invoke-direct {p1, p2}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :catch_1
    move-exception p1

    .line 106
    new-instance p2, Lva/q;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Lva/q;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method
