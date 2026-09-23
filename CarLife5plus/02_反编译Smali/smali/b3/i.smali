.class public final enum Lb3/i;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum a:Lb3/i;

.field public static final enum b:Lb3/i;

.field public static final enum c:Lb3/i;

.field public static final enum d:Lb3/i;

.field public static final enum e:Lb3/i;

.field public static final enum f:Lb3/i;

.field public static final enum g:Lb3/i;

.field public static final synthetic h:[Lb3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lb3/i;

    .line 2
    .line 3
    const-string v1, "Paragraph"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lb3/i;->a:Lb3/i;

    .line 10
    .line 11
    new-instance v1, Lb3/i;

    .line 12
    .line 13
    const-string v3, "Span"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lb3/i;->b:Lb3/i;

    .line 20
    .line 21
    new-instance v3, Lb3/i;

    .line 22
    .line 23
    const-string v5, "VerbatimTts"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lb3/i;->c:Lb3/i;

    .line 30
    .line 31
    new-instance v5, Lb3/i;

    .line 32
    .line 33
    const-string v7, "Url"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lb3/i;->d:Lb3/i;

    .line 40
    .line 41
    new-instance v7, Lb3/i;

    .line 42
    .line 43
    const-string v9, "Link"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lb3/i;->e:Lb3/i;

    .line 50
    .line 51
    new-instance v9, Lb3/i;

    .line 52
    .line 53
    const-string v11, "Clickable"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lb3/i;->f:Lb3/i;

    .line 60
    .line 61
    new-instance v11, Lb3/i;

    .line 62
    .line 63
    const-string v13, "String"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lb3/i;->g:Lb3/i;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lb3/i;

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
    sput-object v13, Lb3/i;->h:[Lb3/i;

    .line 89
    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb3/i;
    .locals 1

    .line 1
    const-class v0, Lb3/i;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lb3/i;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lb3/i;
    .locals 1

    .line 1
    sget-object v0, Lb3/i;->h:[Lb3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lb3/i;

    .line 8
    .line 9
    return-object v0
.end method
