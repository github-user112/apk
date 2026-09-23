.class public final enum Lm7/a0;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lm7/n;

.field public static final enum d:Lm7/a0;

.field public static final enum e:Lm7/a0;

.field public static final enum f:Lm7/a0;

.field public static final enum g:Lm7/a0;

.field public static final enum h:Lm7/a0;

.field public static final enum i:Lm7/a0;

.field public static final synthetic j:[Lm7/a0;

.field public static final synthetic k:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lm7/a0;

    .line 2
    .line 3
    const-string v1, "\u8bf7\u8fde\u63a5\u624b\u673a\u548c\u8f66\u8f7d\u7cfb\u7edf"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Unconnected"

    .line 7
    .line 8
    invoke-direct {v0, v2, v2, v3, v1}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lm7/a0;->d:Lm7/a0;

    .line 12
    .line 13
    new-instance v1, Lm7/a0;

    .line 14
    .line 15
    const-string v3, "\u8fde\u63a5\u4e2d"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "Connecting"

    .line 19
    .line 20
    invoke-direct {v1, v4, v4, v5, v3}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lm7/a0;->e:Lm7/a0;

    .line 24
    .line 25
    new-instance v3, Lm7/a0;

    .line 26
    .line 27
    const-string v5, "\u5df2\u8fde\u63a5"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "Connected"

    .line 31
    .line 32
    invoke-direct {v3, v6, v6, v7, v5}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lm7/a0;->f:Lm7/a0;

    .line 36
    .line 37
    new-instance v5, Lm7/a0;

    .line 38
    .line 39
    const-string v7, "\u8fde\u63a5\u5931\u8d25\uff0c\u624b\u673a\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e\uff0c\u6682\u4e0d\u652f\u6301"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "VersionNotSupport"

    .line 43
    .line 44
    invoke-direct {v5, v8, v8, v9, v7}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lm7/a0;->g:Lm7/a0;

    .line 48
    .line 49
    new-instance v7, Lm7/a0;

    .line 50
    .line 51
    const-string v9, "\u8fde\u63a5\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "Disconnected"

    .line 55
    .line 56
    invoke-direct {v7, v10, v10, v11, v9}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lm7/a0;->h:Lm7/a0;

    .line 60
    .line 61
    new-instance v9, Lm7/a0;

    .line 62
    .line 63
    const-string v11, "\u8f66\u673a\u6e20\u9053\u53f7\u975e\u6cd5\uff0c\u7981\u6b62\u8fde\u63a5\uff01\uff01\uff01"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "AuthFailed"

    .line 67
    .line 68
    invoke-direct {v9, v12, v12, v13, v11}, Lm7/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lm7/a0;->i:Lm7/a0;

    .line 72
    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lm7/a0;

    .line 75
    .line 76
    aput-object v0, v11, v2

    .line 77
    .line 78
    aput-object v1, v11, v4

    .line 79
    .line 80
    aput-object v3, v11, v6

    .line 81
    .line 82
    aput-object v5, v11, v8

    .line 83
    .line 84
    aput-object v7, v11, v10

    .line 85
    .line 86
    aput-object v9, v11, v12

    .line 87
    .line 88
    sput-object v11, Lm7/a0;->j:[Lm7/a0;

    .line 89
    .line 90
    new-instance v0, Lz8/b;

    .line 91
    .line 92
    invoke-direct {v0, v11}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lm7/a0;->k:Lz8/b;

    .line 96
    .line 97
    new-instance v0, Lm7/n;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lm7/a0;->c:Lm7/n;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lm7/a0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lm7/a0;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm7/a0;
    .locals 1

    .line 1
    const-class v0, Lm7/a0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lm7/a0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lm7/a0;
    .locals 1

    .line 1
    sget-object v0, Lm7/a0;->j:[Lm7/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lm7/a0;

    .line 8
    .line 9
    return-object v0
.end method
