.class public final Lw1/u;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw1/s;

.field public final synthetic c:Lw1/s;

.field public final synthetic d:I

.field public final synthetic e:Lq3/e;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lw1/s;Lw1/s;Ljava/lang/Object;ILq3/e;I)V
    .locals 0

    .line 1
    iput p6, p0, Lw1/u;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/u;->b:Lw1/s;

    .line 4
    .line 5
    iput-object p2, p0, Lw1/u;->c:Lw1/s;

    .line 6
    .line 7
    iput-object p3, p0, Lw1/u;->f:Ljava/lang/Object;

    .line 8
    .line 9
    iput p4, p0, Lw1/u;->d:I

    .line 10
    .line 11
    iput-object p5, p0, Lw1/u;->e:Lq3/e;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lw1/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lo2/d;

    .line 7
    .line 8
    iget-object v0, p0, Lw1/u;->c:Lw1/s;

    .line 9
    .line 10
    invoke-static {v0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lr2/u;

    .line 15
    .line 16
    invoke-virtual {v1}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw1/j;

    .line 21
    .line 22
    iget-object v1, v1, Lw1/j;->h:Lw1/s;

    .line 23
    .line 24
    iget-object v2, p0, Lw1/u;->b:Lw1/s;

    .line 25
    .line 26
    if-eq v2, v1, :cond_0

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v1, p0, Lw1/u;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lx1/c;

    .line 34
    .line 35
    iget v2, p0, Lw1/u;->d:I

    .line 36
    .line 37
    iget-object v3, p0, Lw1/u;->e:Lq3/e;

    .line 38
    .line 39
    invoke-static {v2, v3, v0, v1}, Lw1/f;->A(ILq3/e;Lw1/s;Lx1/c;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lo2/d;->a()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    move-object p1, v1

    .line 59
    :goto_1
    return-object p1

    .line 60
    :pswitch_0
    check-cast p1, Lo2/d;

    .line 61
    .line 62
    iget-object v0, p0, Lw1/u;->c:Lw1/s;

    .line 63
    .line 64
    invoke-static {v0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lr2/u;

    .line 69
    .line 70
    invoke-virtual {v1}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lw1/j;

    .line 75
    .line 76
    iget-object v1, v1, Lw1/j;->h:Lw1/s;

    .line 77
    .line 78
    iget-object v2, p0, Lw1/u;->b:Lw1/s;

    .line 79
    .line 80
    if-eq v2, v1, :cond_3

    .line 81
    .line 82
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget-object v1, p0, Lw1/u;->f:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lw1/s;

    .line 88
    .line 89
    iget v2, p0, Lw1/u;->d:I

    .line 90
    .line 91
    iget-object v3, p0, Lw1/u;->e:Lq3/e;

    .line 92
    .line 93
    invoke-static {v0, v1, v2, v3}, Lw1/f;->B(Lw1/s;Lw1/s;ILq3/e;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    invoke-interface {p1}, Lo2/d;->a()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/4 p1, 0x0

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    :goto_2
    move-object p1, v1

    .line 113
    :goto_3
    return-object p1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
