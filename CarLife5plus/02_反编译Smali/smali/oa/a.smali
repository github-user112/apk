.class public final enum Loa/a;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final b:Ln6/a;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final enum d:Loa/a;

.field public static final enum e:Loa/a;

.field public static final enum f:Loa/a;

.field public static final enum g:Loa/a;

.field public static final enum h:Loa/a;

.field public static final enum i:Loa/a;

.field public static final synthetic j:[Loa/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Loa/a;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Loa/a;->d:Loa/a;

    .line 10
    .line 11
    new-instance v1, Loa/a;

    .line 12
    .line 13
    const-string v3, "CLASS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Loa/a;->e:Loa/a;

    .line 20
    .line 21
    new-instance v3, Loa/a;

    .line 22
    .line 23
    const-string v5, "FILE_FACADE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Loa/a;->f:Loa/a;

    .line 30
    .line 31
    new-instance v5, Loa/a;

    .line 32
    .line 33
    const-string v7, "SYNTHETIC_CLASS"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Loa/a;->g:Loa/a;

    .line 40
    .line 41
    new-instance v7, Loa/a;

    .line 42
    .line 43
    const-string v9, "MULTIFILE_CLASS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Loa/a;->h:Loa/a;

    .line 50
    .line 51
    new-instance v9, Loa/a;

    .line 52
    .line 53
    const-string v11, "MULTIFILE_CLASS_PART"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Loa/a;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Loa/a;->i:Loa/a;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Loa/a;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Loa/a;->j:[Loa/a;

    .line 77
    .line 78
    new-instance v0, Ln6/a;

    .line 79
    .line 80
    invoke-direct {v0, v6}, Ln6/a;-><init>(I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Loa/a;->b:Ln6/a;

    .line 84
    .line 85
    invoke-static {}, Loa/a;->values()[Loa/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    array-length v1, v0

    .line 90
    invoke-static {v1}, Ls8/c0;->H(I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/16 v3, 0x10

    .line 95
    .line 96
    if-ge v1, v3, :cond_0

    .line 97
    .line 98
    const/16 v1, 0x10

    .line 99
    .line 100
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 103
    .line 104
    .line 105
    array-length v1, v0

    .line 106
    :goto_0
    if-ge v2, v1, :cond_1

    .line 107
    .line 108
    aget-object v4, v0, v2

    .line 109
    .line 110
    iget v5, v4, Loa/a;->a:I

    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    sput-object v3, Loa/a;->c:Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Loa/a;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Loa/a;
    .locals 1

    .line 1
    const-class v0, Loa/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Loa/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Loa/a;
    .locals 1

    .line 1
    sget-object v0, Loa/a;->j:[Loa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Loa/a;

    .line 8
    .line 9
    return-object v0
.end method
