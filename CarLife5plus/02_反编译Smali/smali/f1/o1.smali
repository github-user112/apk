.class public final enum Lf1/o1;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum a:Lf1/o1;

.field public static final enum b:Lf1/o1;

.field public static final enum c:Lf1/o1;

.field public static final enum d:Lf1/o1;

.field public static final enum e:Lf1/o1;

.field public static final enum f:Lf1/o1;

.field public static final enum g:Lf1/o1;

.field public static final synthetic h:[Lf1/o1;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lf1/o1;

    .line 2
    .line 3
    const-string v1, "Invalid"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lf1/o1;->a:Lf1/o1;

    .line 10
    .line 11
    new-instance v1, Lf1/o1;

    .line 12
    .line 13
    const-string v3, "Cancelled"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lf1/o1;->b:Lf1/o1;

    .line 20
    .line 21
    new-instance v3, Lf1/o1;

    .line 22
    .line 23
    const-string v5, "InitialPending"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lf1/o1;->c:Lf1/o1;

    .line 30
    .line 31
    new-instance v5, Lf1/o1;

    .line 32
    .line 33
    const-string v7, "RecomposePending"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lf1/o1;->d:Lf1/o1;

    .line 40
    .line 41
    new-instance v7, Lf1/o1;

    .line 42
    .line 43
    const-string v9, "Recomposing"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lf1/o1;->e:Lf1/o1;

    .line 50
    .line 51
    new-instance v9, Lf1/o1;

    .line 52
    .line 53
    const-string v11, "ApplyPending"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lf1/o1;->f:Lf1/o1;

    .line 60
    .line 61
    new-instance v11, Lf1/o1;

    .line 62
    .line 63
    const-string v13, "Applied"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lf1/o1;->g:Lf1/o1;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lf1/o1;

    .line 73
    .line 74
    aput-object v0, v13, v2

    .line 75
    .line 76
    aput-object v1, v13, v4

    .line 77
    .line 78
    aput-object v3, v13, v6

    .line 79
    .line 80
    aput-object v5, v13, v8

    .line 81
    .line 82
    aput-object v7, v13, v10

    .line 83
    .line 84
    aput-object v9, v13, v12

    .line 85
    .line 86
    aput-object v11, v13, v14

    .line 87
    .line 88
    sput-object v13, Lf1/o1;->h:[Lf1/o1;

    .line 89
    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf1/o1;
    .locals 1

    .line 1
    const-class v0, Lf1/o1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lf1/o1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lf1/o1;
    .locals 1

    .line 1
    sget-object v0, Lf1/o1;->h:[Lf1/o1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lf1/o1;

    .line 8
    .line 9
    return-object v0
.end method
