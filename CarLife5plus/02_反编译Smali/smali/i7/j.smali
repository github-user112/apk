.class public final enum Li7/j;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lib/d;

.field public static final b:Ldc/l0;

.field public static final c:Ldc/l0;

.field public static final enum d:Li7/j;

.field public static final enum e:Li7/j;

.field public static final enum f:Li7/j;

.field public static final enum g:Li7/j;

.field public static final enum h:Li7/j;

.field public static final enum i:Li7/j;

.field public static final synthetic j:[Li7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Li7/j;

    .line 2
    .line 3
    const-string v1, "Idle"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Li7/j;->d:Li7/j;

    .line 10
    .line 11
    new-instance v1, Li7/j;

    .line 12
    .line 13
    const-string v3, "Init"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Li7/j;->e:Li7/j;

    .line 20
    .line 21
    new-instance v3, Li7/j;

    .line 22
    .line 23
    const-string v5, "Playing"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Li7/j;->f:Li7/j;

    .line 30
    .line 31
    new-instance v5, Li7/j;

    .line 32
    .line 33
    const-string v7, "Paused"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Li7/j;->g:Li7/j;

    .line 40
    .line 41
    new-instance v7, Li7/j;

    .line 42
    .line 43
    const-string v9, "Stopped"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Li7/j;->h:Li7/j;

    .line 50
    .line 51
    new-instance v9, Li7/j;

    .line 52
    .line 53
    const-string v11, "Error"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Li7/j;->i:Li7/j;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Li7/j;

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
    sput-object v11, Li7/j;->j:[Li7/j;

    .line 77
    .line 78
    new-instance v0, Lib/d;

    .line 79
    .line 80
    const/16 v1, 0x14

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lib/d;-><init>(I)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Li7/j;->a:Lib/d;

    .line 86
    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sput-object v1, Li7/j;->b:Ldc/l0;

    .line 94
    .line 95
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Li7/j;->c:Ldc/l0;

    .line 100
    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li7/j;
    .locals 1

    .line 1
    const-class v0, Li7/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Li7/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Li7/j;
    .locals 1

    .line 1
    sget-object v0, Li7/j;->j:[Li7/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Li7/j;

    .line 8
    .line 9
    return-object v0
.end method
