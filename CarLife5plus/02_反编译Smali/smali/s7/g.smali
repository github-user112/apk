.class public final enum Ls7/g;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Ls7/f;

.field public static final synthetic d:[Ls7/g;

.field public static final synthetic e:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ls7/g;

    .line 2
    .line 3
    const-string v1, "05:20 \u2022 \u5468\u4e94\n2025/05/20"

    .line 4
    .line 5
    const-string v2, "hh:mm \u2022 EEE|yyyy/MM/dd"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "Double12"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Ls7/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ls7/g;

    .line 14
    .line 15
    const-string v2, "\u4e0b\u5348 05:20:05"

    .line 16
    .line 17
    const-string v4, "a hh:mm:ss"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "Single12"

    .line 21
    .line 22
    invoke-direct {v1, v5, v6, v2, v4}, Ls7/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ls7/g;

    .line 26
    .line 27
    const-string v4, "17:20 \u2022 \u5468\u4e94\n2025/05/20"

    .line 28
    .line 29
    const-string v6, "HH:mm \u2022 EEE|yyyy/MM/dd"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    const-string v8, "Double24"

    .line 33
    .line 34
    invoke-direct {v2, v7, v8, v4, v6}, Ls7/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ls7/g;

    .line 38
    .line 39
    const-string v6, "17:20:05 \u5468\u4e94"

    .line 40
    .line 41
    const-string v8, "HH:mm:ss EEE"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const-string v10, "Single24"

    .line 45
    .line 46
    invoke-direct {v4, v9, v10, v6, v8}, Ls7/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Ls7/g;

    .line 51
    .line 52
    aput-object v0, v6, v3

    .line 53
    .line 54
    aput-object v1, v6, v5

    .line 55
    .line 56
    aput-object v2, v6, v7

    .line 57
    .line 58
    aput-object v4, v6, v9

    .line 59
    .line 60
    sput-object v6, Ls7/g;->d:[Ls7/g;

    .line 61
    .line 62
    new-instance v0, Lz8/b;

    .line 63
    .line 64
    invoke-direct {v0, v6}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Ls7/g;->e:Lz8/b;

    .line 68
    .line 69
    new-instance v0, Ls7/f;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    sput-object v0, Ls7/g;->c:Ls7/f;

    .line 75
    .line 76
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ls7/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Ls7/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls7/g;
    .locals 1

    .line 1
    const-class v0, Ls7/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ls7/g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ls7/g;
    .locals 1

    .line 1
    sget-object v0, Ls7/g;->d:[Ls7/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ls7/g;

    .line 8
    .line 9
    return-object v0
.end method
