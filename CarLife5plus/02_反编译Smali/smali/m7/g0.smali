.class public final enum Lm7/g0;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lm7/n;

.field public static final synthetic d:[Lm7/g0;

.field public static final synthetic e:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lm7/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "AOA"

    .line 6
    .line 7
    const-string v4, "\u6709\u7ebf"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lm7/g0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lm7/g0;

    .line 13
    .line 14
    const-string v4, "\u70ed\u70b9"

    .line 15
    .line 16
    const/4 v5, 0x5

    .line 17
    const/4 v6, 0x1

    .line 18
    const-string v7, "HOTSPOT"

    .line 19
    .line 20
    invoke-direct {v3, v6, v5, v7, v4}, Lm7/g0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lm7/g0;

    .line 24
    .line 25
    const-string v5, "\u76f4\u8fde"

    .line 26
    .line 27
    const/16 v7, 0x9

    .line 28
    .line 29
    const-string v8, "WIFI_DIRECT"

    .line 30
    .line 31
    invoke-direct {v4, v2, v7, v8, v5}, Lm7/g0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    new-array v5, v5, [Lm7/g0;

    .line 36
    .line 37
    aput-object v0, v5, v1

    .line 38
    .line 39
    aput-object v3, v5, v6

    .line 40
    .line 41
    aput-object v4, v5, v2

    .line 42
    .line 43
    sput-object v5, Lm7/g0;->d:[Lm7/g0;

    .line 44
    .line 45
    new-instance v0, Lz8/b;

    .line 46
    .line 47
    invoke-direct {v0, v5}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lm7/g0;->e:Lz8/b;

    .line 51
    .line 52
    new-instance v0, Lm7/n;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lm7/g0;->c:Lm7/n;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lm7/g0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lm7/g0;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm7/g0;
    .locals 1

    .line 1
    const-class v0, Lm7/g0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lm7/g0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lm7/g0;
    .locals 1

    .line 1
    sget-object v0, Lm7/g0;->d:[Lm7/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lm7/g0;

    .line 8
    .line 9
    return-object v0
.end method
