.class public abstract Le1/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    sput v0, Le1/f;->a:F

    .line 5
    .line 6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    double-to-float v0, v0

    .line 9
    sput v0, Le1/f;->b:F

    .line 10
    .line 11
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 12
    .line 13
    double-to-float v0, v0

    .line 14
    sput v0, Le1/f;->c:F

    .line 15
    .line 16
    return-void
.end method
