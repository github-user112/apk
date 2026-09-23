.class public final Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeThemeState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeStateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final THEMEMODES_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private themeModes_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->makeImmutable()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->setThemeModes(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->clearThemeModes()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearThemeModes()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->getParserForType()Lcom/google/protobuf/v0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setThemeModes(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->PARSER:Lcom/google/protobuf/v0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit p1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p2

    .line 44
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    return-object v1

    .line 60
    :pswitch_4
    check-cast p2, Lcom/google/protobuf/j;

    .line 61
    .line 62
    check-cast p3, Lcom/google/protobuf/r;

    .line 63
    .line 64
    :cond_2
    :goto_3
    if-nez v0, :cond_5

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/16 p3, 0x8

    .line 73
    .line 74
    if-eq p1, p3, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    :cond_3
    const/4 v0, 0x1

    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto :goto_5

    .line 88
    :catch_1
    move-exception p1

    .line 89
    goto :goto_6

    .line 90
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 91
    .line 92
    or-int/2addr p1, v2

    .line 93
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_4
    throw p1

    .line 103
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    new-instance p3, Lcom/google/protobuf/o0;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw p2

    .line 118
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p2

    .line 124
    :cond_5
    :pswitch_5
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 125
    .line 126
    return-object p1

    .line 127
    :pswitch_6
    check-cast p2, Lcom/google/protobuf/c0;

    .line 128
    .line 129
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->hasThemeModes()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->hasThemeModes()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 142
    .line 143
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 148
    .line 149
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 150
    .line 151
    if-ne p2, p1, :cond_6

    .line 152
    .line 153
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 154
    .line 155
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 156
    .line 157
    or-int/2addr p1, p2

    .line 158
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 159
    .line 160
    :cond_6
    return-object p0

    .line 161
    :pswitch_7
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->memoizedIsInitialized:B

    .line 162
    .line 163
    if-ne p1, v2, :cond_7

    .line 164
    .line 165
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_7
    if-nez p1, :cond_8

    .line 169
    .line 170
    return-object v1

    .line 171
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->hasThemeModes()Z

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    if-nez p2, :cond_a

    .line 182
    .line 183
    if-eqz p1, :cond_9

    .line 184
    .line 185
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->memoizedIsInitialized:B

    .line 186
    .line 187
    :cond_9
    return-object v1

    .line 188
    :cond_a
    if-eqz p1, :cond_b

    .line 189
    .line 190
    iput-byte v2, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->memoizedIsInitialized:B

    .line 191
    .line 192
    :cond_b
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;

    .line 193
    .line 194
    return-object p1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->k(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 29
    .line 30
    return v1
.end method

.method public getThemeModes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasThemeModes()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeThemeStateProto$CarlifeThemeState;->themeModes_:I

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->y(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
