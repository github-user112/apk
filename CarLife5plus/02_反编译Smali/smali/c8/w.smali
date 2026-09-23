.class public final enum Lc8/w;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lc8/i;

.field public static final enum d:Lc8/w;

.field public static final enum e:Lc8/w;

.field public static final enum f:Lc8/w;

.field public static final synthetic g:[Lc8/w;

.field public static final synthetic h:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lc8/w;

    .line 2
    .line 3
    const-string v1, "\u5e94\u7528\u542f\u52a8"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "CREATE"

    .line 7
    .line 8
    invoke-direct {v0, v2, v2, v3, v1}, Lc8/w;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lc8/w;->d:Lc8/w;

    .line 12
    .line 13
    new-instance v1, Lc8/w;

    .line 14
    .line 15
    const-string v3, "\u5e94\u7528\u524d\u53f0"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "START"

    .line 19
    .line 20
    invoke-direct {v1, v4, v4, v5, v3}, Lc8/w;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lc8/w;->e:Lc8/w;

    .line 24
    .line 25
    new-instance v3, Lc8/w;

    .line 26
    .line 27
    const-string v5, "\u5e94\u7528\u540e\u53f0"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "STOP"

    .line 31
    .line 32
    invoke-direct {v3, v6, v6, v7, v5}, Lc8/w;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lc8/w;->f:Lc8/w;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lc8/w;

    .line 39
    .line 40
    aput-object v0, v5, v2

    .line 41
    .line 42
    aput-object v1, v5, v4

    .line 43
    .line 44
    aput-object v3, v5, v6

    .line 45
    .line 46
    sput-object v5, Lc8/w;->g:[Lc8/w;

    .line 47
    .line 48
    new-instance v0, Lz8/b;

    .line 49
    .line 50
    invoke-direct {v0, v5}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lc8/w;->h:Lz8/b;

    .line 54
    .line 55
    new-instance v0, Lc8/i;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lc8/w;->c:Lc8/i;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lc8/w;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lc8/w;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc8/w;
    .locals 1

    .line 1
    const-class v0, Lc8/w;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc8/w;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lc8/w;
    .locals 1

    .line 1
    sget-object v0, Lc8/w;->g:[Lc8/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lc8/w;

    .line 8
    .line 9
    return-object v0
.end method
