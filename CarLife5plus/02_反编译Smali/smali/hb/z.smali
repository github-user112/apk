.class public abstract Lhb/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lua/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lua/c;

    .line 2
    .line 3
    const-string v1, "kotlin.suspend"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhb/z;->a:Lua/c;

    .line 9
    .line 10
    new-instance v0, Lua/a;

    .line 11
    .line 12
    sget-object v1, Ls9/p;->k:Lua/c;

    .line 13
    .line 14
    const-string v2, "suspend"

    .line 15
    .line 16
    invoke-static {v2}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Lua/a;-><init>(Lua/c;Lua/e;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
