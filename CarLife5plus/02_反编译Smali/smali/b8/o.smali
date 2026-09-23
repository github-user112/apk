.class public abstract Lb8/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lfc/c;

.field public static b:[I

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ldc/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lac/z;->b()Lac/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lac/g0;->a:Lhc/e;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lb8/o;->a:Lfc/c;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    sput-object v0, Lb8/o;->b:[I

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lb8/o;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v0, 0x80

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Ldc/b0;->a(IILcc/a;)Ldc/a0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lb8/o;->d:Ldc/a0;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Lz7/q1;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lb8/g;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p0, v2, v1}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    sget-object v1, Lb8/o;->a:Lfc/c;

    .line 15
    .line 16
    invoke-static {v1, v2, v0, p0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 17
    .line 18
    .line 19
    return-void
.end method
