.class public final enum Lc8/j;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lc8/i;

.field public static final synthetic e:[Lc8/j;

.field public static final synthetic f:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lc8/j;

    .line 2
    .line 3
    const/16 v4, 0x2740

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const-string v1, "MODE_DAY"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "\u767d\u5929\u6a21\u5f0f"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lc8/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lc8/j;

    .line 15
    .line 16
    const/16 v5, 0x2740

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const-string v2, "MODE_NIGHT"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const-string v4, "\u591c\u95f4\u6a21\u5f0f"

    .line 23
    .line 24
    invoke-direct/range {v1 .. v6}, Lc8/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lc8/j;

    .line 28
    .line 29
    const/16 v6, 0x2721

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const-string v3, "HEADLIGHT_ON"

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    const-string v5, "\u5927\u706f\u5f00\u542f"

    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Lc8/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lc8/j;

    .line 41
    .line 42
    const/16 v7, 0x2721

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    const-string v4, "HEADLIGHT_OFF"

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    const-string v6, "\u5927\u706f\u5173\u95ed"

    .line 49
    .line 50
    invoke-direct/range {v3 .. v8}, Lc8/j;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    new-array v4, v4, [Lc8/j;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    aput-object v0, v4, v5

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aput-object v1, v4, v0

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    aput-object v2, v4, v0

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    aput-object v3, v4, v0

    .line 67
    .line 68
    sput-object v4, Lc8/j;->e:[Lc8/j;

    .line 69
    .line 70
    new-instance v0, Lz8/b;

    .line 71
    .line 72
    invoke-direct {v0, v4}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lc8/j;->f:Lz8/b;

    .line 76
    .line 77
    new-instance v0, Lc8/i;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lc8/j;->d:Lc8/i;

    .line 83
    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lc8/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lc8/j;->b:I

    .line 7
    .line 8
    iput p5, p0, Lc8/j;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc8/j;
    .locals 1

    .line 1
    const-class v0, Lc8/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc8/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lc8/j;
    .locals 1

    .line 1
    sget-object v0, Lc8/j;->e:[Lc8/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lc8/j;

    .line 8
    .line 9
    return-object v0
.end method
