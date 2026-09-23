.class public final Ll0/i1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public e:I

.field public synthetic f:Lz/z0;

.field public synthetic g:J

.field public final synthetic h:Lac/w;

.field public final synthetic i:Lf1/b1;

.field public final synthetic j:Lb0/k;


# direct methods
.method public constructor <init>(Lac/w;Lf1/b1;Lb0/k;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/i1;->h:Lac/w;

    .line 2
    .line 3
    iput-object p2, p0, Ll0/i1;->i:Lf1/b1;

    .line 4
    .line 5
    iput-object p3, p0, Ll0/i1;->j:Lb0/k;

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lz/z0;

    .line 2
    .line 3
    check-cast p2, Lx1/b;

    .line 4
    .line 5
    iget-wide v0, p2, Lx1/b;->a:J

    .line 6
    .line 7
    check-cast p3, Lw8/c;

    .line 8
    .line 9
    new-instance p2, Ll0/i1;

    .line 10
    .line 11
    iget-object v2, p0, Ll0/i1;->i:Lf1/b1;

    .line 12
    .line 13
    iget-object v3, p0, Ll0/i1;->j:Lb0/k;

    .line 14
    .line 15
    iget-object v4, p0, Ll0/i1;->h:Lac/w;

    .line 16
    .line 17
    invoke-direct {p2, v4, v2, v3, p3}, Ll0/i1;-><init>(Lac/w;Lf1/b1;Lb0/k;Lw8/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p2, Ll0/i1;->f:Lz/z0;

    .line 21
    .line 22
    iput-wide v0, p2, Ll0/i1;->g:J

    .line 23
    .line 24
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ll0/i1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Ll0/i1;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Ll0/i1;->h:Lac/w;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v4, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ll0/i1;->f:Lz/z0;

    .line 28
    .line 29
    iget-wide v7, p0, Ll0/i1;->g:J

    .line 30
    .line 31
    new-instance v5, Ll0/g1;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    iget-object v6, p0, Ll0/i1;->i:Lf1/b1;

    .line 36
    .line 37
    iget-object v9, p0, Ll0/i1;->j:Lb0/k;

    .line 38
    .line 39
    invoke-direct/range {v5 .. v11}, Ll0/g1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lw8/c;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v5, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 43
    .line 44
    .line 45
    iput v4, p0, Ll0/i1;->e:I

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lz/z0;->e(Ly8/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 52
    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    new-instance v0, Ll0/h1;

    .line 63
    .line 64
    iget-object v4, p0, Ll0/i1;->i:Lf1/b1;

    .line 65
    .line 66
    iget-object v5, p0, Ll0/i1;->j:Lb0/k;

    .line 67
    .line 68
    invoke-direct {v0, v4, p1, v5, v3}, Ll0/h1;-><init>(Lf1/b1;ZLb0/k;Lw8/c;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3, v0, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 75
    .line 76
    return-object p1
.end method
