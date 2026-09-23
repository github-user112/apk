.class public abstract Ld1/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lv/v0;

.field public static final b:Lv/v0;

.field public static final c:Lv/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lv/q;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const v2, 0x3f19999a    # 0.6f

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lv/q;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lv/v0;

    .line 13
    .line 14
    sget-object v2, Lv/u;->a:Lv/q;

    .line 15
    .line 16
    const/16 v3, 0x78

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lv/v0;-><init>(ILv/t;I)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Ld1/f;->a:Lv/v0;

    .line 23
    .line 24
    new-instance v1, Lv/v0;

    .line 25
    .line 26
    const/16 v2, 0x96

    .line 27
    .line 28
    invoke-direct {v1, v2, v0, v4}, Lv/v0;-><init>(ILv/t;I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Ld1/f;->b:Lv/v0;

    .line 32
    .line 33
    new-instance v1, Lv/v0;

    .line 34
    .line 35
    invoke-direct {v1, v3, v0, v4}, Lv/v0;-><init>(ILv/t;I)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Ld1/f;->c:Lv/v0;

    .line 39
    .line 40
    return-void
.end method
