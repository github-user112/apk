.class public abstract Lc1/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ld0/h0;

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    new-instance v2, Ld0/h0;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1, v0, v1}, Ld0/h0;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v2, Lc1/b;->a:Ld0/h0;

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-static {v2, v1, v0, v1}, Landroidx/compose/foundation/layout/a;->b(FFFF)Ld0/h0;

    .line 18
    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    invoke-static {v0, v1, v0, v1}, Landroidx/compose/foundation/layout/a;->b(FFFF)Ld0/h0;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/foundation/layout/a;->b(FFFF)Ld0/h0;

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    sput v0, Lc1/b;->b:F

    .line 33
    .line 34
    const/16 v0, 0x28

    .line 35
    .line 36
    int-to-float v0, v0

    .line 37
    sput v0, Lc1/b;->c:F

    .line 38
    .line 39
    sget v0, Le1/g;->a:I

    .line 40
    .line 41
    return-void
.end method
