.class public abstract enum Lwa/s;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum a:Lwa/r;

.field public static final enum b:Lwa/q;

.field public static final synthetic c:[Lwa/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lwa/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lwa/r;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwa/s;->a:Lwa/r;

    .line 7
    .line 8
    new-instance v1, Lwa/q;

    .line 9
    .line 10
    invoke-direct {v1}, Lwa/q;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lwa/s;->b:Lwa/q;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Lwa/s;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v2, v0

    .line 23
    .line 24
    sput-object v2, Lwa/s;->c:[Lwa/s;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwa/s;
    .locals 1

    .line 1
    const-class v0, Lwa/s;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lwa/s;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lwa/s;
    .locals 1

    .line 1
    sget-object v0, Lwa/s;->c:[Lwa/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lwa/s;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
