.class public final Ll0/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll0/e0;->a:I

    iput-object p2, p0, Ll0/e0;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll0/e0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw0/n;Ll0/z0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll0/e0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/e0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0/e0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Lk2/a0;Lw8/c;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Ll0/e0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll0/v0;

    .line 7
    .line 8
    iget-object v1, p0, Ll0/e0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw0/w0;

    .line 11
    .line 12
    iget-object v2, p0, Ll0/e0;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lw0/f0;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Ll0/v0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, p2}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 26
    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    :goto_0
    return-object p1

    .line 33
    :pswitch_0
    new-instance v2, Le7/l;

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Lk2/n0;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lq2/h0;->z:Lr2/q2;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Le7/l;-><init>(Lr2/q2;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lo7/f;

    .line 51
    .line 52
    iget-object v1, p0, Ll0/e0;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lw0/n;

    .line 55
    .line 56
    iget-object v3, p0, Ll0/e0;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Ll0/z0;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-direct/range {v0 .. v5}, Lo7/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0, p2}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 70
    .line 71
    if-ne p1, p2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 75
    .line 76
    :goto_1
    return-object p1

    .line 77
    :pswitch_1
    new-instance v0, Lj8/x;

    .line 78
    .line 79
    iget-object v1, p0, Ll0/e0;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ll0/z0;

    .line 82
    .line 83
    iget-object v2, p0, Ll0/e0;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Lw0/r1;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-direct {v0, p1, v1, v2, v3}, Lj8/x;-><init>(Lk2/a0;Ll0/z0;Lw0/r1;Lw8/c;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 96
    .line 97
    if-ne p1, p2, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 101
    .line 102
    :goto_2
    return-object p1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
