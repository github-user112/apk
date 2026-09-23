.class public final enum Lt7/f;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum b:Lt7/f;

.field public static final enum c:Lt7/f;

.field public static final enum d:Lt7/f;

.field public static final enum e:Lt7/f;

.field public static final synthetic f:[Lt7/f;

.field public static final synthetic g:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lt7/f;

    .line 2
    .line 3
    const-string v1, "\u6d4b\u8bd5"

    .line 4
    .line 5
    const-string v2, "Test"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v1, v3}, Lt7/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lt7/f;->b:Lt7/f;

    .line 12
    .line 13
    new-instance v1, Lt7/f;

    .line 14
    .line 15
    const-string v2, "\u6743\u9650"

    .line 16
    .line 17
    const-string v4, "Permission"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v5}, Lt7/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lt7/f;->c:Lt7/f;

    .line 24
    .line 25
    new-instance v2, Lt7/f;

    .line 26
    .line 27
    const-string v4, "\u4efb\u52a1"

    .line 28
    .line 29
    const-string v6, "Tasker"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v4, v7}, Lt7/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lt7/f;->d:Lt7/f;

    .line 36
    .line 37
    new-instance v4, Lt7/f;

    .line 38
    .line 39
    const-string v6, "\u8bbe\u7f6e"

    .line 40
    .line 41
    const-string v8, "Settings"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v6, v9}, Lt7/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lt7/f;->e:Lt7/f;

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Lt7/f;

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
    sput-object v6, Lt7/f;->f:[Lt7/f;

    .line 61
    .line 62
    new-instance v0, Lz8/b;

    .line 63
    .line 64
    invoke-direct {v0, v6}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lt7/f;->g:Lz8/b;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lt7/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt7/f;
    .locals 1

    .line 1
    const-class v0, Lt7/f;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lt7/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lt7/f;
    .locals 1

    .line 1
    sget-object v0, Lt7/f;->f:[Lt7/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lt7/f;

    .line 8
    .line 9
    return-object v0
.end method
