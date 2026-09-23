.class public final enum Le8/g;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic c:[Le8/g;

.field public static final synthetic d:Lz8/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le8/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SurfaceView"

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Le8/g;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Le8/g;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const-string v4, "TextureView"

    .line 13
    .line 14
    invoke-direct {v2, v3, v3, v4, v4}, Le8/g;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Le8/g;

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const-string v6, "GLSurfaceView"

    .line 21
    .line 22
    invoke-direct {v4, v5, v5, v6, v6}, Le8/g;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    new-array v6, v6, [Le8/g;

    .line 27
    .line 28
    aput-object v0, v6, v1

    .line 29
    .line 30
    aput-object v2, v6, v3

    .line 31
    .line 32
    aput-object v4, v6, v5

    .line 33
    .line 34
    sput-object v6, Le8/g;->c:[Le8/g;

    .line 35
    .line 36
    new-instance v0, Lz8/b;

    .line 37
    .line 38
    invoke-direct {v0, v6}, Lz8/b;-><init>([Ljava/lang/Enum;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Le8/g;->d:Lz8/b;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Le8/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Le8/g;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le8/g;
    .locals 1

    .line 1
    const-class v0, Le8/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le8/g;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Le8/g;
    .locals 1

    .line 1
    sget-object v0, Le8/g;->c:[Le8/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Le8/g;

    .line 8
    .line 9
    return-object v0
.end method
