.class public abstract Lo2/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lo2/m;

.field public static final b:Lo2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo2/m;

    .line 2
    .line 3
    sget-object v1, Lo2/a;->i:Lo2/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo2/m;-><init>(Lf9/n;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo2/c;->a:Lo2/m;

    .line 9
    .line 10
    new-instance v0, Lo2/m;

    .line 11
    .line 12
    sget-object v1, Lo2/b;->i:Lo2/b;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lo2/m;-><init>(Lf9/n;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lo2/c;->b:Lo2/m;

    .line 18
    .line 19
    return-void
.end method
