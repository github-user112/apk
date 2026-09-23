.class public final synthetic Ll0/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ll0/s0;

.field public final synthetic b:Lw1/o;

.field public final synthetic c:Z

.field public final synthetic d:Lw0/r1;

.field public final synthetic e:Lg3/q;


# direct methods
.method public synthetic constructor <init>(Ll0/s0;Lw1/o;ZLw0/r1;Lg3/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/t;->a:Ll0/s0;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/t;->b:Lw1/o;

    .line 7
    .line 8
    iput-boolean p3, p0, Ll0/t;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Ll0/t;->d:Lw0/r1;

    .line 11
    .line 12
    iput-object p5, p0, Ll0/t;->e:Lg3/q;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lx1/b;

    .line 2
    .line 3
    iget-object v0, p0, Ll0/t;->a:Ll0/s0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll0/s0;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Ll0/t;->b:Lw1/o;

    .line 12
    .line 13
    invoke-static {v1}, Lw1/o;->b(Lw1/o;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Ll0/s0;->c:Lr2/m2;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v1, Lr2/j1;

    .line 22
    .line 23
    invoke-virtual {v1}, Lr2/j1;->b()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ll0/s0;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-boolean v1, p0, Ll0/t;->c:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Ll0/s0;->a()Ll0/i0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Ll0/i0;->b:Ll0/i0;

    .line 41
    .line 42
    if-eq v1, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-wide v2, p1, Lx1/b;->a:J

    .line 51
    .line 52
    iget-object p1, v0, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 53
    .line 54
    iget-object v4, v0, Ll0/s0;->v:Ll0/s;

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-virtual {v1, v2, v3, v5}, Ll0/q1;->b(JZ)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p0, Ll0/t;->e:Lg3/q;

    .line 62
    .line 63
    invoke-interface {v2, v1}, Lg3/q;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object p1, p1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lg3/w;

    .line 70
    .line 71
    invoke-static {v1, v1}, Lb3/d0;->b(II)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    const/4 v3, 0x5

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static {p1, v5, v1, v2, v3}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v4, p1}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object p1, v0, Ll0/s0;->a:Ll0/y0;

    .line 85
    .line 86
    iget-object p1, p1, Ll0/y0;->a:Lb3/g;

    .line 87
    .line 88
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-lez p1, :cond_3

    .line 95
    .line 96
    sget-object p1, Ll0/i0;->c:Ll0/i0;

    .line 97
    .line 98
    iget-object v0, v0, Ll0/s0;->k:Lf1/k1;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Ll0/t;->d:Lw0/r1;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lw0/r1;->g(Lx1/b;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 110
    .line 111
    return-object p1
.end method
