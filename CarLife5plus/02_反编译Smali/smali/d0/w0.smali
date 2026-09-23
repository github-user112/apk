.class public final Ld0/w0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld0/w0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ld0/w0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 5
    .line 6
    const v3, 0x15733969

    .line 7
    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lr1/p;

    .line 13
    .line 14
    check-cast p2, Lf1/s;

    .line 15
    .line 16
    check-cast p3, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v3}, Lf1/s;->W(I)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Ld0/v0;->u:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    invoke-static {p2}, Ld0/b;->f(Lf1/s;)Ld0/v0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object p1, p1, Ld0/v0;->f:Ld0/a;

    .line 43
    .line 44
    new-instance v0, Ld0/a0;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ld0/a0;-><init>(Ld0/a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    check-cast v0, Ld0/a0;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Lf1/s;->p(Z)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_0
    check-cast p1, Lr1/p;

    .line 59
    .line 60
    check-cast p2, Lf1/s;

    .line 61
    .line 62
    check-cast p3, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v3}, Lf1/s;->W(I)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Ld0/v0;->u:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    invoke-static {p2}, Ld0/b;->f(Lf1/s;)Ld0/v0;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez p3, :cond_2

    .line 85
    .line 86
    if-ne v0, v2, :cond_3

    .line 87
    .line 88
    :cond_2
    iget-object p1, p1, Ld0/v0;->e:Ld0/a;

    .line 89
    .line 90
    new-instance v0, Ld0/a0;

    .line 91
    .line 92
    invoke-direct {v0, p1}, Ld0/a0;-><init>(Ld0/a;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    check-cast v0, Ld0/a0;

    .line 99
    .line 100
    invoke-virtual {p2, v1}, Lf1/s;->p(Z)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
