.class public abstract Lb1/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/w2;

.field public static final b:Lb1/g;

.field public static final c:Lb1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf1/w2;

    .line 2
    .line 3
    sget-object v1, Lb1/n;->a:Lb1/n;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf1/t1;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb1/o;->a:Lf1/w2;

    .line 9
    .line 10
    new-instance v0, Lb1/g;

    .line 11
    .line 12
    const v1, 0x3e23d70a    # 0.16f

    .line 13
    .line 14
    .line 15
    const v2, 0x3e75c28f    # 0.24f

    .line 16
    .line 17
    .line 18
    const v3, 0x3da3d70a    # 0.08f

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v2}, Lb1/g;-><init>(FFFF)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lb1/o;->b:Lb1/g;

    .line 25
    .line 26
    new-instance v0, Lb1/g;

    .line 27
    .line 28
    const v1, 0x3df5c28f    # 0.12f

    .line 29
    .line 30
    .line 31
    const v2, 0x3d23d70a    # 0.04f

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2, v1}, Lb1/g;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lb1/o;->c:Lb1/g;

    .line 38
    .line 39
    return-void
.end method
