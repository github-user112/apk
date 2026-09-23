.class public final Lt9/i;
.super Lt9/k;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lt9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lt9/i;

    .line 2
    .line 3
    sget-object v1, Ls9/p;->i:Lua/c;

    .line 4
    .line 5
    const-string v2, "KSuspendFunction"

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lt9/k;-><init>(Ljava/lang/String;Lua/c;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lt9/i;->c:Lt9/i;

    .line 11
    .line 12
    return-void
.end method
