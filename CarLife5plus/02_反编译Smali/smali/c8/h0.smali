.class public final enum Lc8/h0;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lc8/i;

.field public static final synthetic d:[Lc8/h0;

.field public static final synthetic e:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lc8/h0;

    .line 2
    .line 3
    const-string v1, "CarLife\u672a\u8fde\u63a5"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Unconnected"

    .line 7
    .line 8
    invoke-direct {v0, v2, v2, v3, v1}, Lc8/h0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lc8/h0;

    .line 12
    .line 13
    const-string v3, "CarLife\u8fde\u63a5\u4e2d"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "Connecting"

    .line 17
    .line 18
    invoke-direct {v1, v4, v4, v5, v3}, Lc8/h0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lc8/h0;

    .line 22
    .line 23
    const-string v5, "CarLife\u5df2\u8fde\u63a5"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const-string v7, "Connected"

    .line 27
    .line 28
    invoke-direct {v3, v6, v6, v7, v5}, Lc8/h0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lc8/h0;

    .line 32
    .line 33
    const-string v7, "CarLife\u8fde\u63a5\u65ad\u5f00"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const-string v9, "Disconnected"

    .line 37
    .line 38
    invoke-direct {v5, v8, v8, v9, v7}, Lc8/h0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lc8/h0;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lc8/h0;->d:[Lc8/h0;

    .line 53
    .line 54
    new-instance v0, Lz8/b;

    .line 55
    .line 56
    invoke-direct {v0, v7}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lc8/h0;->e:Lz8/b;

    .line 60
    .line 61
    new-instance v0, Lc8/i;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lc8/h0;->c:Lc8/i;

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lc8/h0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lc8/h0;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc8/h0;
    .locals 1

    .line 1
    const-class v0, Lc8/h0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc8/h0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lc8/h0;
    .locals 1

    .line 1
    sget-object v0, Lc8/h0;->d:[Lc8/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lc8/h0;

    .line 8
    .line 9
    return-object v0
.end method
