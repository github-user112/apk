.class public final enum Lpc/v;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum c:Lpc/v;

.field public static final enum d:Lpc/v;

.field public static final enum e:Lpc/v;

.field public static final enum f:Lpc/v;

.field public static final synthetic g:[Lpc/v;

.field public static final synthetic h:Lz8/b;


# instance fields
.field public final a:C

.field public final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lpc/v;

    .line 2
    .line 3
    const-string v1, "OBJ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x7b

    .line 7
    .line 8
    const/16 v4, 0x7d

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lpc/v;-><init>(Ljava/lang/String;ICC)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lpc/v;->c:Lpc/v;

    .line 14
    .line 15
    new-instance v1, Lpc/v;

    .line 16
    .line 17
    const-string v5, "LIST"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    const/16 v7, 0x5b

    .line 21
    .line 22
    const/16 v8, 0x5d

    .line 23
    .line 24
    invoke-direct {v1, v5, v6, v7, v8}, Lpc/v;-><init>(Ljava/lang/String;ICC)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lpc/v;->d:Lpc/v;

    .line 28
    .line 29
    new-instance v5, Lpc/v;

    .line 30
    .line 31
    const-string v9, "MAP"

    .line 32
    .line 33
    const/4 v10, 0x2

    .line 34
    invoke-direct {v5, v9, v10, v3, v4}, Lpc/v;-><init>(Ljava/lang/String;ICC)V

    .line 35
    .line 36
    .line 37
    sput-object v5, Lpc/v;->e:Lpc/v;

    .line 38
    .line 39
    new-instance v3, Lpc/v;

    .line 40
    .line 41
    const-string v4, "POLY_OBJ"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v3, v4, v9, v7, v8}, Lpc/v;-><init>(Ljava/lang/String;ICC)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lpc/v;->f:Lpc/v;

    .line 48
    .line 49
    const/4 v4, 0x4

    .line 50
    new-array v4, v4, [Lpc/v;

    .line 51
    .line 52
    aput-object v0, v4, v2

    .line 53
    .line 54
    aput-object v1, v4, v6

    .line 55
    .line 56
    aput-object v5, v4, v10

    .line 57
    .line 58
    aput-object v3, v4, v9

    .line 59
    .line 60
    sput-object v4, Lpc/v;->g:[Lpc/v;

    .line 61
    .line 62
    new-instance v0, Lz8/b;

    .line 63
    .line 64
    invoke-direct {v0, v4}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lpc/v;->h:Lz8/b;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-char p3, p0, Lpc/v;->a:C

    .line 5
    .line 6
    iput-char p4, p0, Lpc/v;->b:C

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpc/v;
    .locals 1

    .line 1
    const-class v0, Lpc/v;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpc/v;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpc/v;
    .locals 1

    .line 1
    sget-object v0, Lpc/v;->g:[Lpc/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpc/v;

    .line 8
    .line 9
    return-object v0
.end method
