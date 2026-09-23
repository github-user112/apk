.class public abstract Lma/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lw9/i;

.field public static final b:Lw9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw9/i;

    .line 2
    .line 3
    sget-object v1, Lea/y;->p:Lua/c;

    .line 4
    .line 5
    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lw9/i;-><init>(Lua/c;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lma/v;->a:Lw9/i;

    .line 14
    .line 15
    new-instance v0, Lw9/i;

    .line 16
    .line 17
    sget-object v1, Lea/y;->q:Lua/c;

    .line 18
    .line 19
    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lw9/i;-><init>(Lua/c;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lma/v;->b:Lw9/i;

    .line 28
    .line 29
    return-void
.end method
