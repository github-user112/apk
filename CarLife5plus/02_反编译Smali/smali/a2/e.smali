.class public abstract La2/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ln3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/d;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Ln3/d;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, La2/e;->a:Ln3/d;

    .line 9
    .line 10
    return-void
.end method
