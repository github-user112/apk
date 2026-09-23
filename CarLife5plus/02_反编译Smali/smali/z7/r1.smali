.class public final enum Lz7/r1;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic c:[Lz7/r1;

.field public static final synthetic d:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lz7/r1;

    .line 2
    .line 3
    const-string v1, "\u9ed8\u8ba4\u952e\u7801"

    .line 4
    .line 5
    const-string v2, "keyCode"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "KEY_CODE"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lz7/r1;

    .line 14
    .line 15
    const-string v2, "\u786c\u4ef6\u626b\u63cf\u7801"

    .line 16
    .line 17
    const-string v4, "scanCode"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const-string v6, "SCAN_CODE"

    .line 21
    .line 22
    invoke-direct {v1, v5, v6, v2, v4}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lz7/r1;

    .line 26
    .line 27
    const-string v4, "\u6309\u952e\u4e8b\u4ef6\u7c7b\u578b"

    .line 28
    .line 29
    const-string v6, "keyEvent"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    const-string v8, "KEY_EVENT"

    .line 33
    .line 34
    invoke-direct {v2, v7, v8, v4, v6}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lz7/r1;

    .line 38
    .line 39
    const-string v6, "\u54c8\u5f17\u5927\u72d7\u5b89\u6ce2\u798f\u6863\u4f4d"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "PAL_SDK"

    .line 43
    .line 44
    invoke-direct {v4, v8, v9, v6, v9}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lz7/r1;

    .line 48
    .line 49
    const-string v9, "\u5a92\u4f53\u952e\u7801"

    .line 50
    .line 51
    const/4 v10, 0x4

    .line 52
    const-string v11, "KEYCODE_MEDIA"

    .line 53
    .line 54
    invoke-direct {v6, v10, v11, v9, v11}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v9, Lz7/r1;

    .line 58
    .line 59
    const-string v11, "\u6309\u952e\u6309\u4e0b\u4e8b\u4ef6"

    .line 60
    .line 61
    const/4 v12, 0x5

    .line 62
    const-string v13, "ACTION_DOWN"

    .line 63
    .line 64
    invoke-direct {v9, v12, v13, v11, v13}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v11, Lz7/r1;

    .line 68
    .line 69
    const-string v13, "\u6309\u952e\u677e\u5f00\u4e8b\u4ef6"

    .line 70
    .line 71
    const/4 v14, 0x6

    .line 72
    const-string v15, "ACTION_UP"

    .line 73
    .line 74
    invoke-direct {v11, v14, v15, v13, v15}, Lz7/r1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v13, 0x7

    .line 78
    new-array v13, v13, [Lz7/r1;

    .line 79
    .line 80
    aput-object v0, v13, v3

    .line 81
    .line 82
    aput-object v1, v13, v5

    .line 83
    .line 84
    aput-object v2, v13, v7

    .line 85
    .line 86
    aput-object v4, v13, v8

    .line 87
    .line 88
    aput-object v6, v13, v10

    .line 89
    .line 90
    aput-object v9, v13, v12

    .line 91
    .line 92
    aput-object v11, v13, v14

    .line 93
    .line 94
    sput-object v13, Lz7/r1;->c:[Lz7/r1;

    .line 95
    .line 96
    new-instance v0, Lz8/b;

    .line 97
    .line 98
    invoke-direct {v0, v13}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lz7/r1;->d:Lz8/b;

    .line 102
    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lz7/r1;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lz7/r1;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz7/r1;
    .locals 1

    .line 1
    const-class v0, Lz7/r1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz7/r1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lz7/r1;
    .locals 1

    .line 1
    sget-object v0, Lz7/r1;->c:[Lz7/r1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lz7/r1;

    .line 8
    .line 9
    return-object v0
.end method
