.class public final Ld8/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Lt7/h;

.field public final b:Lt7/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lt7/h;->a:Lt7/h;

    .line 5
    .line 6
    iput-object v0, p0, Ld8/f;->a:Lt7/h;

    .line 7
    .line 8
    sget-object v0, Lt7/f;->b:Lt7/f;

    .line 9
    .line 10
    iput-object v0, p0, Ld8/f;->b:Lt7/f;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getPackageName(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "debug"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v0, v1, v2}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 25
    .line 26
    const-string v0, "TEST_LOGS_UPLOAD"

    .line 27
    .line 28
    invoke-static {v0, v2}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "128b87d879"

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Ll8/g;->a:Lr8/o;

    .line 49
    .line 50
    invoke-static {}, Ll8/g;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->setDeviceModel(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Ll8/g;->b:Lr8/o;

    .line 58
    .line 59
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 2

    .line 1
    const v0, -0x450bef8d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Ld8/j;->a:Ld8/j;

    .line 23
    .line 24
    sget-object v1, Ll8/p;->l:Ldc/l0;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v1, p2}, Ld8/j;->d(ILf1/s;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    new-instance v0, La8/d;

    .line 38
    .line 39
    const/4 v1, 0x6

    .line 40
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->e(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ld8/f;->a:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    const/16 v0, 0x3e7

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ld8/f;->b:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->h(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
