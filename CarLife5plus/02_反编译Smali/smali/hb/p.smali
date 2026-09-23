.class public final Lhb/p;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lhb/t;

.field public final c:Lpa/i0;

.field public final d:Ljb/s;


# direct methods
.method public synthetic constructor <init>(Lhb/t;Lpa/i0;Ljb/s;I)V
    .locals 0

    .line 1
    iput p4, p0, Lhb/p;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhb/p;->b:Lhb/t;

    .line 4
    .line 5
    iput-object p2, p0, Lhb/p;->c:Lpa/i0;

    .line 6
    .line 7
    iput-object p3, p0, Lhb/p;->d:Ljb/s;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lhb/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhb/p;->b:Lhb/t;

    .line 7
    .line 8
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 9
    .line 10
    iget-object v2, v1, Lhb/k;->c:Lv9/k;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 20
    .line 21
    iget-object v1, v1, Lhb/i;->e:Lhb/a;

    .line 22
    .line 23
    iget-object v2, p0, Lhb/p;->d:Ljb/s;

    .line 24
    .line 25
    invoke-virtual {v2}, Ly9/i0;->p()Llb/w;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "getReturnType(...)"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lhb/p;->c:Lpa/i0;

    .line 35
    .line 36
    invoke-interface {v1, v0, v3, v2}, Lhb/a;->f(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lza/g;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lhb/p;->b:Lhb/t;

    .line 44
    .line 45
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 46
    .line 47
    iget-object v2, v1, Lhb/k;->c:Lv9/k;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 57
    .line 58
    iget-object v1, v1, Lhb/i;->e:Lhb/a;

    .line 59
    .line 60
    iget-object v2, p0, Lhb/p;->d:Ljb/s;

    .line 61
    .line 62
    invoke-virtual {v2}, Ly9/i0;->p()Llb/w;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "getReturnType(...)"

    .line 67
    .line 68
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lhb/p;->c:Lpa/i0;

    .line 72
    .line 73
    invoke-interface {v1, v0, v3, v2}, Lhb/a;->M(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lza/g;

    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lhb/p;->b:Lhb/t;

    .line 81
    .line 82
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 83
    .line 84
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 85
    .line 86
    iget-object v1, v1, Lhb/i;->a:Lkb/l;

    .line 87
    .line 88
    new-instance v2, Lhb/p;

    .line 89
    .line 90
    const/4 v3, 0x3

    .line 91
    iget-object v4, p0, Lhb/p;->c:Lpa/i0;

    .line 92
    .line 93
    iget-object v5, p0, Lhb/p;->d:Ljb/s;

    .line 94
    .line 95
    invoke-direct {v2, v0, v4, v5, v3}, Lhb/p;-><init>(Lhb/t;Lpa/i0;Ljb/s;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v0, Lkb/i;

    .line 102
    .line 103
    invoke-direct {v0, v1, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lhb/p;->b:Lhb/t;

    .line 108
    .line 109
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 110
    .line 111
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 112
    .line 113
    iget-object v1, v1, Lhb/i;->a:Lkb/l;

    .line 114
    .line 115
    new-instance v2, Lhb/p;

    .line 116
    .line 117
    const/4 v3, 0x2

    .line 118
    iget-object v4, p0, Lhb/p;->c:Lpa/i0;

    .line 119
    .line 120
    iget-object v5, p0, Lhb/p;->d:Ljb/s;

    .line 121
    .line 122
    invoke-direct {v2, v0, v4, v5, v3}, Lhb/p;-><init>(Lhb/t;Lpa/i0;Ljb/s;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v0, Lkb/i;

    .line 129
    .line 130
    invoke-direct {v0, v1, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
