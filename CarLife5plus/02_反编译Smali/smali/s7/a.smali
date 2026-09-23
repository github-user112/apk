.class public final Ls7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final a:Ls7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls7/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls7/a;->a:Ls7/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v5}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v5}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string p1, "\u663e\u793a\u65f6\u95f4"

    .line 27
    .line 28
    const-string p2, "\u8fde\u63a5\u540e\u663e\u793a\u65f6\u95f4"

    .line 29
    .line 30
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const p1, 0x6e3c21fe

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Lf1/s;->W(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lf1/n;->a:Lf1/w0;

    .line 49
    .line 50
    if-ne p1, p2, :cond_2

    .line 51
    .line 52
    new-instance p1, Lm7/j;

    .line 53
    .line 54
    const/16 p2, 0x1c

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lm7/j;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    move-object v4, p1

    .line 63
    check-cast v4, Lf9/k;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {v5, p1}, Lf1/s;->p(Z)V

    .line 67
    .line 68
    .line 69
    const/16 v6, 0x61b6

    .line 70
    .line 71
    const/16 v7, 0x8

    .line 72
    .line 73
    const-string v1, "TIME_SWITCH"

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v7}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 78
    .line 79
    .line 80
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 81
    .line 82
    return-object p1
.end method
