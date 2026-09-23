.class public final enum Lea/a;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum b:Lea/a;

.field public static final enum c:Lea/a;

.field public static final enum d:Lea/a;

.field public static final enum e:Lea/a;

.field public static final enum f:Lea/a;

.field public static final synthetic g:[Lea/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lea/a;

    .line 2
    .line 3
    const-string v1, "METHOD"

    .line 4
    .line 5
    const-string v2, "METHOD_RETURN_TYPE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v1, v3}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lea/a;->b:Lea/a;

    .line 12
    .line 13
    new-instance v1, Lea/a;

    .line 14
    .line 15
    const-string v2, "PARAMETER"

    .line 16
    .line 17
    const-string v4, "VALUE_PARAMETER"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v5}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lea/a;->c:Lea/a;

    .line 24
    .line 25
    new-instance v2, Lea/a;

    .line 26
    .line 27
    const-string v4, "FIELD"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    invoke-direct {v2, v4, v4, v6}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lea/a;->d:Lea/a;

    .line 34
    .line 35
    new-instance v4, Lea/a;

    .line 36
    .line 37
    const-string v7, "TYPE_USE"

    .line 38
    .line 39
    const/4 v8, 0x3

    .line 40
    invoke-direct {v4, v7, v7, v8}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lea/a;->e:Lea/a;

    .line 44
    .line 45
    new-instance v9, Lea/a;

    .line 46
    .line 47
    const-string v10, "TYPE_PARAMETER_BOUNDS"

    .line 48
    .line 49
    const/4 v11, 0x4

    .line 50
    invoke-direct {v9, v10, v7, v11}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lea/a;->f:Lea/a;

    .line 54
    .line 55
    new-instance v7, Lea/a;

    .line 56
    .line 57
    const-string v10, "TYPE_PARAMETER"

    .line 58
    .line 59
    const/4 v12, 0x5

    .line 60
    invoke-direct {v7, v10, v10, v12}, Lea/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const/4 v10, 0x6

    .line 64
    new-array v10, v10, [Lea/a;

    .line 65
    .line 66
    aput-object v0, v10, v3

    .line 67
    .line 68
    aput-object v1, v10, v5

    .line 69
    .line 70
    aput-object v2, v10, v6

    .line 71
    .line 72
    aput-object v4, v10, v8

    .line 73
    .line 74
    aput-object v9, v10, v11

    .line 75
    .line 76
    aput-object v7, v10, v12

    .line 77
    .line 78
    sput-object v10, Lea/a;->g:[Lea/a;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lea/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lea/a;
    .locals 1

    .line 1
    const-class v0, Lea/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lea/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lea/a;
    .locals 1

    .line 1
    sget-object v0, Lea/a;->g:[Lea/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lea/a;

    .line 8
    .line 9
    return-object v0
.end method
