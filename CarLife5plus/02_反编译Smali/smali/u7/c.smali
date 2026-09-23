.class public final Lu7/c;
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
    iput-object v0, p0, Lu7/c;->a:Lt7/h;

    .line 7
    .line 8
    sget-object v0, Lt7/f;->c:Lt7/f;

    .line 9
    .line 10
    iput-object v0, p0, Lu7/c;->b:Lt7/f;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 2

    .line 1
    const v0, -0x4e9d29d6

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
    sget-object v0, Lu7/h;->a:Lu7/h;

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    invoke-virtual {v0, v1, p2}, Lu7/h;->d(ILf1/s;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    new-instance v0, La8/d;

    .line 35
    .line 36
    const/16 v1, 0x18

    .line 37
    .line 38
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 42
    .line 43
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
    iget-object v0, p0, Lu7/c;->a:Lt7/h;

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
    iget-object v0, p0, Lu7/c;->b:Lt7/f;

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
