.class public final synthetic Lq0/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq0/f;

.field public final synthetic c:Ls0/e;


# direct methods
.method public synthetic constructor <init>(Lq0/f;Ls0/e;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq0/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/b;->b:Lq0/f;

    .line 4
    .line 5
    iput-object p2, p0, Lq0/b;->c:Ls0/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lq0/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq0/b;->b:Lq0/f;

    .line 7
    .line 8
    iget-object v0, v0, Lq0/f;->c:Lf9/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lo2/w;

    .line 15
    .line 16
    iget-object v1, p0, Lq0/b;->c:Ls0/e;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ls0/e;->A(Lo2/w;)Lx1/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-interface {v0, v2, v3}, Lo2/w;->F(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1, v2, v3}, Lx1/c;->i(J)Lx1/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lq0/b;->b:Lq0/f;

    .line 34
    .line 35
    iget-object v1, v0, Lq0/f;->g:Lq0/a;

    .line 36
    .line 37
    new-instance v2, Lq0/b;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    iget-object v4, p0, Lq0/b;->c:Ls0/e;

    .line 41
    .line 42
    invoke-direct {v2, v0, v4, v3}, Lq0/b;-><init>(Lq0/f;Ls0/e;I)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lg9/x;

    .line 46
    .line 47
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lq0/f;->e:Lp1/u;

    .line 51
    .line 52
    new-instance v4, La8/n0;

    .line 53
    .line 54
    const/16 v5, 0xc

    .line 55
    .line 56
    invoke-direct {v4, v5, v3, v2}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "positioner"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1, v4}, Lp1/u;->c(Ljava/lang/Object;Lf9/k;Lf9/a;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    check-cast v0, Lx1/c;

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_0
    const-string v0, "result"

    .line 72
    .line 73
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lq0/b;->b:Lq0/f;

    .line 79
    .line 80
    iget-object v1, v0, Lq0/f;->f:Lq0/a;

    .line 81
    .line 82
    new-instance v2, La5/e;

    .line 83
    .line 84
    const/16 v3, 0x15

    .line 85
    .line 86
    iget-object v4, p0, Lq0/b;->c:Ls0/e;

    .line 87
    .line 88
    invoke-direct {v2, v3, v4}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Lg9/x;

    .line 92
    .line 93
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v0, v0, Lq0/f;->e:Lp1/u;

    .line 97
    .line 98
    new-instance v4, La8/n0;

    .line 99
    .line 100
    const/16 v5, 0xc

    .line 101
    .line 102
    invoke-direct {v4, v5, v3, v2}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "dataBuilder"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v1, v4}, Lp1/u;->c(Ljava/lang/Object;Lf9/k;Lf9/a;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 111
    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    check-cast v0, Lo0/c;

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_1
    const-string v0, "result"

    .line 118
    .line 119
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    throw v0

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
