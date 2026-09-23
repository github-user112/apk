.class public final enum Lm5/d;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum b:Lm5/d;

.field public static final enum c:Lm5/d;

.field public static final enum d:Lm5/d;

.field public static final enum e:Lm5/d;

.field public static final enum f:Lm5/d;

.field public static final enum g:Lm5/d;

.field public static final enum h:Lm5/d;

.field public static final enum i:Lm5/d;

.field public static final enum j:Lm5/d;

.field public static final enum k:Lm5/d;

.field public static final synthetic l:[Lm5/d;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lm5/d;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "OTHER"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lm5/d;

    .line 12
    .line 13
    const-string v2, "PURE_BARCODE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-class v5, Ljava/lang/Void;

    .line 17
    .line 18
    invoke-direct {v1, v2, v4, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lm5/d;->b:Lm5/d;

    .line 22
    .line 23
    new-instance v2, Lm5/d;

    .line 24
    .line 25
    const-class v6, Ljava/util/List;

    .line 26
    .line 27
    const-string v7, "POSSIBLE_FORMATS"

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    invoke-direct {v2, v7, v8, v6}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lm5/d;->c:Lm5/d;

    .line 34
    .line 35
    new-instance v6, Lm5/d;

    .line 36
    .line 37
    const-string v7, "TRY_HARDER"

    .line 38
    .line 39
    const/4 v9, 0x3

    .line 40
    invoke-direct {v6, v7, v9, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    sput-object v6, Lm5/d;->d:Lm5/d;

    .line 44
    .line 45
    new-instance v7, Lm5/d;

    .line 46
    .line 47
    const-class v10, Ljava/lang/String;

    .line 48
    .line 49
    const-string v11, "CHARACTER_SET"

    .line 50
    .line 51
    const/4 v12, 0x4

    .line 52
    invoke-direct {v7, v11, v12, v10}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lm5/d;->e:Lm5/d;

    .line 56
    .line 57
    new-instance v10, Lm5/d;

    .line 58
    .line 59
    const-string v11, "ALLOWED_LENGTHS"

    .line 60
    .line 61
    const/4 v13, 0x5

    .line 62
    const-class v14, [I

    .line 63
    .line 64
    invoke-direct {v10, v11, v13, v14}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    sput-object v10, Lm5/d;->f:Lm5/d;

    .line 68
    .line 69
    new-instance v11, Lm5/d;

    .line 70
    .line 71
    const-string v15, "ASSUME_CODE_39_CHECK_DIGIT"

    .line 72
    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    const/4 v3, 0x6

    .line 76
    invoke-direct {v11, v15, v3, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    sput-object v11, Lm5/d;->g:Lm5/d;

    .line 80
    .line 81
    new-instance v15, Lm5/d;

    .line 82
    .line 83
    const/16 v17, 0x6

    .line 84
    .line 85
    const-string v3, "ASSUME_GS1"

    .line 86
    .line 87
    const/16 v18, 0x1

    .line 88
    .line 89
    const/4 v4, 0x7

    .line 90
    invoke-direct {v15, v3, v4, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 91
    .line 92
    .line 93
    sput-object v15, Lm5/d;->h:Lm5/d;

    .line 94
    .line 95
    new-instance v3, Lm5/d;

    .line 96
    .line 97
    const/16 v19, 0x7

    .line 98
    .line 99
    const-string v4, "RETURN_CODABAR_START_END"

    .line 100
    .line 101
    const/16 v20, 0x2

    .line 102
    .line 103
    const/16 v8, 0x8

    .line 104
    .line 105
    invoke-direct {v3, v4, v8, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 106
    .line 107
    .line 108
    sput-object v3, Lm5/d;->i:Lm5/d;

    .line 109
    .line 110
    new-instance v4, Lm5/d;

    .line 111
    .line 112
    const-class v5, Lm5/p;

    .line 113
    .line 114
    const/16 v21, 0x8

    .line 115
    .line 116
    const-string v8, "NEED_RESULT_POINT_CALLBACK"

    .line 117
    .line 118
    const/16 v22, 0x3

    .line 119
    .line 120
    const/16 v9, 0x9

    .line 121
    .line 122
    invoke-direct {v4, v8, v9, v5}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    sput-object v4, Lm5/d;->j:Lm5/d;

    .line 126
    .line 127
    new-instance v5, Lm5/d;

    .line 128
    .line 129
    const-string v8, "ALLOWED_EAN_EXTENSIONS"

    .line 130
    .line 131
    const/16 v23, 0x9

    .line 132
    .line 133
    const/16 v9, 0xa

    .line 134
    .line 135
    invoke-direct {v5, v8, v9, v14}, Lm5/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 136
    .line 137
    .line 138
    sput-object v5, Lm5/d;->k:Lm5/d;

    .line 139
    .line 140
    const/16 v8, 0xb

    .line 141
    .line 142
    new-array v8, v8, [Lm5/d;

    .line 143
    .line 144
    aput-object v0, v8, v16

    .line 145
    .line 146
    aput-object v1, v8, v18

    .line 147
    .line 148
    aput-object v2, v8, v20

    .line 149
    .line 150
    aput-object v6, v8, v22

    .line 151
    .line 152
    aput-object v7, v8, v12

    .line 153
    .line 154
    aput-object v10, v8, v13

    .line 155
    .line 156
    aput-object v11, v8, v17

    .line 157
    .line 158
    aput-object v15, v8, v19

    .line 159
    .line 160
    aput-object v3, v8, v21

    .line 161
    .line 162
    aput-object v4, v8, v23

    .line 163
    .line 164
    aput-object v5, v8, v9

    .line 165
    .line 166
    sput-object v8, Lm5/d;->l:[Lm5/d;

    .line 167
    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lm5/d;->a:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm5/d;
    .locals 1

    .line 1
    const-class v0, Lm5/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lm5/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lm5/d;
    .locals 1

    .line 1
    sget-object v0, Lm5/d;->l:[Lm5/d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lm5/d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lm5/d;

    .line 8
    .line 9
    return-object v0
.end method
