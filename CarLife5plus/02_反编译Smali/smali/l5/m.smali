.class public final synthetic Ll5/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ll5/l;

.field public final synthetic b:Lf9/n;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ll5/l;Lf9/n;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/m;->a:Ll5/l;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/m;->b:Lf9/n;

    .line 7
    .line 8
    iput-boolean p3, p0, Ll5/m;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, La2/g;

    .line 2
    .line 3
    const-string v0, "$controller"

    .line 4
    .line 5
    iget-object v1, p0, Ll5/m;->a:Ll5/l;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "$draw"

    .line 11
    .line 12
    iget-object v2, p0, Ll5/m;->b:Lf9/n;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "$this$Canvas"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ly1/o;->f()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, La2/g;->g()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v4, v5}, Lx1/e;->d(J)F

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-interface {p1}, La2/g;->g()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-static {v4, v5}, Lx1/e;->b(J)F

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x1

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-interface/range {v3 .. v8}, Ly1/o;->k(FFFFI)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, La2/g;->g()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    new-instance v0, Lx1/e;

    .line 60
    .line 61
    invoke-direct {v0, v4, v5}, Lx1/e;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v3, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3}, Ly1/o;->n()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v1, Ll5/l;->d:Lf1/k1;

    .line 71
    .line 72
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lx1/b;

    .line 77
    .line 78
    iget-wide v4, v0, Lx1/b;->a:J

    .line 79
    .line 80
    iget v0, v1, Ll5/l;->l:F

    .line 81
    .line 82
    invoke-interface {p1, v0}, Ln3/c;->S(F)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iget-object v0, v1, Ll5/l;->m:Ld7/q;

    .line 87
    .line 88
    iget-boolean v2, p0, Ll5/m;->c:Z

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-interface {v3, p1, v4, v5, v0}, Ly1/o;->e(FJLd7/q;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object p1, v1, Ll5/l;->q:Lf1/h1;

    .line 96
    .line 97
    invoke-virtual {p1}, Lf1/h1;->f()I

    .line 98
    .line 99
    .line 100
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 101
    .line 102
    return-object p1
.end method
