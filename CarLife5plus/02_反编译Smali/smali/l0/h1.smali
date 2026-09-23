.class public final Ll0/h1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lf1/b1;

.field public f:I

.field public final synthetic g:Lf1/b1;

.field public final synthetic h:Z

.field public final synthetic i:Lb0/k;


# direct methods
.method public constructor <init>(Lf1/b1;ZLb0/k;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/h1;->g:Lf1/b1;

    .line 2
    .line 3
    iput-boolean p2, p0, Ll0/h1;->h:Z

    .line 4
    .line 5
    iput-object p3, p0, Ll0/h1;->i:Lb0/k;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ll0/h1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ll0/h1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ll0/h1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance p1, Ll0/h1;

    .line 2
    .line 3
    iget-boolean v0, p0, Ll0/h1;->h:Z

    .line 4
    .line 5
    iget-object v1, p0, Ll0/h1;->i:Lb0/k;

    .line 6
    .line 7
    iget-object v2, p0, Ll0/h1;->g:Lf1/b1;

    .line 8
    .line 9
    invoke-direct {p1, v2, v0, v1, p2}, Ll0/h1;-><init>(Lf1/b1;ZLb0/k;Lw8/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ll0/h1;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ll0/h1;->e:Lf1/b1;

    .line 9
    .line 10
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Ll0/h1;->g:Lf1/b1;

    .line 26
    .line 27
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lb0/m;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-boolean v2, p0, Ll0/h1;->h:Z

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    new-instance v2, Lb0/n;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Lb0/n;-><init>(Lb0/m;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v2, Lb0/l;

    .line 46
    .line 47
    invoke-direct {v2, p1}, Lb0/l;-><init>(Lb0/m;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Ll0/h1;->i:Lb0/k;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iput-object v0, p0, Ll0/h1;->e:Lf1/b1;

    .line 55
    .line 56
    iput v1, p0, Ll0/h1;->f:I

    .line 57
    .line 58
    invoke-virtual {p1, v2, p0}, Lb0/k;->a(Lb0/j;Lw8/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v1, Lx8/a;->a:Lx8/a;

    .line 63
    .line 64
    if-ne p1, v1, :cond_3

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 68
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 72
    .line 73
    return-object p1
.end method
