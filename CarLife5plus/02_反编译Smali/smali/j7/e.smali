.class public final Lj7/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/CarLifeContext;

.field public b:Lj7/c;

.field public c:Landroid/media/AudioRecord;

.field public d:Lac/j1;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lj7/e;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "\u7f3a\u5c11\u5f55\u97f3\u6743\u9650\uff0c\u65e0\u6cd5\u542f\u52a8\u5f55\u97f3"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 23
    .line 24
    const-string v3, "CarLife_Vehicle"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v4, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Landroid/media/AudioRecord;

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    const/high16 v9, 0x10000

    .line 35
    .line 36
    const/4 v5, 0x6

    .line 37
    const/16 v6, 0x3e80

    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iput-object v4, p0, Lj7/e;->c:Landroid/media/AudioRecord;

    .line 45
    .line 46
    new-instance v0, Lj7/c;

    .line 47
    .line 48
    iget-object v2, p0, Lj7/e;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Lj7/c;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lac/g0;->a:Lhc/e;

    .line 54
    .line 55
    sget-object v2, Lhc/d;->c:Lhc/d;

    .line 56
    .line 57
    invoke-static {v2}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lb1/f;

    .line 62
    .line 63
    const/4 v5, 0x6

    .line 64
    invoke-direct {v4, v0, v1, v5}, Lb1/f;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    invoke-static {v3, v1, v4, v5}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lj7/e;->b:Lj7/c;

    .line 72
    .line 73
    invoke-static {v2}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lj7/d;

    .line 78
    .line 79
    invoke-direct {v2, p0, v1}, Lj7/d;-><init>(Lj7/e;Lw8/c;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2, v5}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lj7/e;->d:Lac/j1;

    .line 87
    .line 88
    return-void
.end method
