.class public final Lea/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lea/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lea/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lea/l;->a:Lea/l;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lea/d0;
    .locals 1

    .line 1
    sget-object v0, Lea/h0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v0, Lea/d0;

    .line 4
    .line 5
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1, p2, p3}, Lea/d0;-><init>(Ljava/lang/String;Lua/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
