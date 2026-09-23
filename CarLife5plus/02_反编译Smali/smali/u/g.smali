.class public abstract Lu/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    invoke-static {v1, v0}, Lv/d;->j(ILjava/lang/Object;)Lv/g0;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(JLv/v0;Lf1/s;I)Lf1/v2;
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ly1/q;->f(J)Lz1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 16
    .line 17
    if-ne v1, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Ly1/q;->f(J)Lz1/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lb2/a;

    .line 24
    .line 25
    const/16 v2, 0x11

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lv/w0;

    .line 31
    .line 32
    sget-object v2, Lu/c;->a:Lu/c;

    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Lv/w0;-><init>(Lf9/k;Lf9/k;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v0

    .line 41
    :cond_1
    move-object v3, v1

    .line 42
    check-cast v3, Lv/w0;

    .line 43
    .line 44
    new-instance v2, Ly1/q;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1}, Ly1/q;-><init>(J)V

    .line 47
    .line 48
    .line 49
    shl-int/lit8 p0, p4, 0x3

    .line 50
    .line 51
    and-int/lit16 v7, p0, 0x380

    .line 52
    .line 53
    const-string v5, "ColorAnimation"

    .line 54
    .line 55
    move-object v4, p2

    .line 56
    move-object v6, p3

    .line 57
    invoke-static/range {v2 .. v7}, Lv/e;->a(Ljava/lang/Object;Lv/w0;Lv/j;Ljava/lang/String;Lf1/s;I)Lf1/v2;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
