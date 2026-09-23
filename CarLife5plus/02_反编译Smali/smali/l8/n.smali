.class public abstract Ll8/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/f0;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Ll8/n;->a:Lr8/o;

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ll8/n;->b:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ll8/n;->c:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    return-void
.end method

.method public static a(IIIIILjava/lang/String;Ln1/c;)V
    .locals 9

    .line 1
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 17
    .line 18
    new-array p1, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string p2, "\u3010\u60ac\u6d6e\u6a21\u5757\u3011\u60ac\u6d6e\u7a97\u6743\u9650\u672a\u5f00\u542f"

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    aput-object p2, p1, p3

    .line 24
    .line 25
    const-string p2, "CarLife_Vehicle"

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget-object v0, Ll8/n;->c:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance p0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object p6

    .line 45
    invoke-direct {p0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ll8/k;

    .line 49
    .line 50
    move v2, p1

    .line 51
    move v3, p2

    .line 52
    move v4, p3

    .line 53
    move v5, p4

    .line 54
    move-object v1, p5

    .line 55
    invoke-direct/range {v0 .. v5}, Ll8/k;-><init>(Ljava/lang/String;IIII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ll8/n;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    move v2, p1

    .line 66
    move v3, p2

    .line 67
    move v4, p3

    .line 68
    move v5, p4

    .line 69
    move-object v1, p5

    .line 70
    new-instance p1, Landroid/os/Handler;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    .line 78
    .line 79
    move-object v7, v1

    .line 80
    new-instance v1, Ll8/i;

    .line 81
    .line 82
    move-object v8, p6

    .line 83
    move v6, v5

    .line 84
    move v5, v4

    .line 85
    move v4, v3

    .line 86
    move v3, v2

    .line 87
    move v2, p0

    .line 88
    invoke-direct/range {v1 .. v8}, Ll8/i;-><init>(IIIIILjava/lang/String;Ln1/c;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll8/h;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, p0}, Ll8/h;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll8/h;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, p0}, Ll8/h;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
