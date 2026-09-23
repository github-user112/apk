.class public final enum Lea/c0;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum b:Lea/c0;

.field public static final enum c:Lea/c0;

.field public static final enum d:Lea/c0;

.field public static final synthetic e:[Lea/c0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lea/c0;

    .line 2
    .line 3
    const-string v1, "ignore"

    .line 4
    .line 5
    const-string v2, "IGNORE"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v1, v3}, Lea/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lea/c0;->b:Lea/c0;

    .line 12
    .line 13
    new-instance v1, Lea/c0;

    .line 14
    .line 15
    const-string v2, "warn"

    .line 16
    .line 17
    const-string v4, "WARN"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v5}, Lea/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lea/c0;->c:Lea/c0;

    .line 24
    .line 25
    new-instance v2, Lea/c0;

    .line 26
    .line 27
    const-string v4, "strict"

    .line 28
    .line 29
    const-string v6, "STRICT"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v4, v7}, Lea/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lea/c0;->d:Lea/c0;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    new-array v4, v4, [Lea/c0;

    .line 39
    .line 40
    aput-object v0, v4, v3

    .line 41
    .line 42
    aput-object v1, v4, v5

    .line 43
    .line 44
    aput-object v2, v4, v7

    .line 45
    .line 46
    sput-object v4, Lea/c0;->e:[Lea/c0;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lea/c0;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lea/c0;
    .locals 1

    .line 1
    const-class v0, Lea/c0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lea/c0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lea/c0;
    .locals 1

    .line 1
    sget-object v0, Lea/c0;->e:[Lea/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lea/c0;

    .line 8
    .line 9
    return-object v0
.end method
