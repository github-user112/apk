.class public final enum Lz7/g2;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lz7/f2;

.field public static final synthetic d:[Lz7/g2;

.field public static final synthetic e:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lz7/g2;

    .line 2
    .line 3
    const-string v1, "\u767d\u5929\u6a21\u5f0f"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "MODE_DAY"

    .line 7
    .line 8
    invoke-direct {v0, v2, v2, v3, v1}, Lz7/g2;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lz7/g2;

    .line 12
    .line 13
    const-string v3, "\u591c\u95f4\u6a21\u5f0f"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "MODE_NIGHT"

    .line 17
    .line 18
    invoke-direct {v1, v4, v4, v5, v3}, Lz7/g2;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lz7/g2;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lz7/g2;->d:[Lz7/g2;

    .line 29
    .line 30
    new-instance v0, Lz8/b;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lz7/g2;->e:Lz8/b;

    .line 36
    .line 37
    new-instance v0, Lz7/f2;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lz7/g2;->c:Lz7/f2;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lz7/g2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lz7/g2;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz7/g2;
    .locals 1

    .line 1
    const-class v0, Lz7/g2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz7/g2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lz7/g2;
    .locals 1

    .line 1
    sget-object v0, Lz7/g2;->d:[Lz7/g2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lz7/g2;

    .line 8
    .line 9
    return-object v0
.end method
