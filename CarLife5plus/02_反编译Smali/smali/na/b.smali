.class public final enum Lna/b;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum a:Lna/b;

.field public static final enum b:Lna/b;

.field public static final enum c:Lna/b;

.field public static final synthetic d:[Lna/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lna/b;

    .line 2
    .line 3
    const-string v1, "PROPERTY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lna/b;->a:Lna/b;

    .line 10
    .line 11
    new-instance v1, Lna/b;

    .line 12
    .line 13
    const-string v3, "BACKING_FIELD"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lna/b;->b:Lna/b;

    .line 20
    .line 21
    new-instance v3, Lna/b;

    .line 22
    .line 23
    const-string v5, "DELEGATE_FIELD"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lna/b;->c:Lna/b;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lna/b;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lna/b;->d:[Lna/b;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lna/b;
    .locals 1

    .line 1
    const-class v0, Lna/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lna/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lna/b;
    .locals 1

    .line 1
    sget-object v0, Lna/b;->d:[Lna/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lna/b;

    .line 8
    .line 9
    return-object v0
.end method
