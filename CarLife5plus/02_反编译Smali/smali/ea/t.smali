.class public final synthetic Lea/t;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final i:Lea/t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lea/t;

    .line 2
    .line 3
    const-string v4, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v2, Lea/r;

    .line 8
    .line 9
    const-string v3, "getDefaultReportLevelForAnnotation"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lg9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lea/t;->i:Lea/t;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lua/c;

    .line 2
    .line 3
    const-string v0, "p0"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lea/r;->a:Lua/c;

    .line 9
    .line 10
    sget-object v0, Lea/b0;->b0:Lea/a0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lea/a0;->b:Landroid/support/v4/media/session/t;

    .line 16
    .line 17
    new-instance v1, Lr8/g;

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    const/16 v3, 0x14

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v1, v4, v2, v3}, Lr8/g;-><init>(III)V

    .line 24
    .line 25
    .line 26
    const-string v2, "configuredReportLevels"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lf1/e;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lea/c0;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lea/r;->c:Landroid/support/v4/media/session/t;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lf1/e;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lea/s;

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    sget-object p1, Lea/c0;->b:Lea/c0;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_1
    iget-object v0, p1, Lea/s;->b:Lr8/g;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget v0, v0, Lr8/g;->d:I

    .line 69
    .line 70
    iget v1, v1, Lr8/g;->d:I

    .line 71
    .line 72
    sub-int/2addr v0, v1

    .line 73
    if-gtz v0, :cond_2

    .line 74
    .line 75
    iget-object p1, p1, Lea/s;->c:Lea/c0;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_2
    iget-object p1, p1, Lea/s;->a:Lea/c0;

    .line 79
    .line 80
    return-object p1
.end method
