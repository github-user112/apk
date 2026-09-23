.class public final enum Lz7/a;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Ln6/a;

.field public static final synthetic d:[Lz7/a;

.field public static final synthetic e:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lz7/a;

    .line 2
    .line 3
    const-string v1, "\u5355\u51fb"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "SINGLE"

    .line 7
    .line 8
    invoke-direct {v0, v2, v2, v3, v1}, Lz7/a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lz7/a;

    .line 12
    .line 13
    const-string v3, "\u53cc\u51fb"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "DOUBLE"

    .line 17
    .line 18
    invoke-direct {v1, v4, v4, v5, v3}, Lz7/a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lz7/a;

    .line 22
    .line 23
    const-string v5, "\u957f\u6309"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const-string v7, "MULTIPLE"

    .line 27
    .line 28
    invoke-direct {v3, v6, v6, v7, v5}, Lz7/a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lz7/a;

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
    sput-object v5, Lz7/a;->d:[Lz7/a;

    .line 41
    .line 42
    new-instance v0, Lz8/b;

    .line 43
    .line 44
    invoke-direct {v0, v5}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lz7/a;->e:Lz8/b;

    .line 48
    .line 49
    new-instance v0, Ln6/a;

    .line 50
    .line 51
    const/16 v1, 0x1c

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lz7/a;->c:Ln6/a;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lz7/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lz7/a;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz7/a;
    .locals 1

    .line 1
    const-class v0, Lz7/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz7/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lz7/a;
    .locals 1

    .line 1
    sget-object v0, Lz7/a;->d:[Lz7/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lz7/a;

    .line 8
    .line 9
    return-object v0
.end method
