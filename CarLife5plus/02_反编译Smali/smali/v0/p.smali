.class public final synthetic Lv0/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lv0/p;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lv0/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lz/l1;

    .line 9
    .line 10
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcc/l;

    .line 20
    .line 21
    invoke-interface {v0}, Lcc/w;->j()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcc/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lz/q0;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lx/o1;

    .line 35
    .line 36
    sget-object v1, Lx/d1;->a:Lf1/c0;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lx/i;

    .line 43
    .line 44
    iput-object v1, v0, Lx/o1;->z:Lx/i;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    new-instance v2, Lx/h;

    .line 49
    .line 50
    iget-object v3, v1, Lx/i;->a:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v4, v1, Lx/i;->b:Ln3/c;

    .line 53
    .line 54
    iget-wide v5, v1, Lx/i;->c:J

    .line 55
    .line 56
    iget-object v7, v1, Lx/i;->d:Ld0/h0;

    .line 57
    .line 58
    invoke-direct/range {v2 .. v7}, Lx/h;-><init>(Landroid/content/Context;Ln3/c;JLd0/h0;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    iput-object v2, v0, Lx/o1;->A:Lx/h;

    .line 64
    .line 65
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_2
    iget-object v0, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lx/x;

    .line 71
    .line 72
    iget-object v0, v0, Lx/x;->K:Lf9/a;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lv0/p;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lv0/r;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    iput-object v1, v0, Lv0/r;->z:Lv0/q;

    .line 88
    .line 89
    invoke-static {v0}, Lq2/f;->n(Lq2/y1;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lq2/f;->m(Lq2/x;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lq2/f;->l(Lq2/o;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    return-object v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
