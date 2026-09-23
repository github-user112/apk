.class public final Lc1/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;


# direct methods
.method public synthetic constructor <init>(Lp1/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc1/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc1/c;->b:Lp1/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p2, p0, Lc1/c;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lb0/j;

    .line 7
    .line 8
    instance-of p2, p1, Lb0/m;

    .line 9
    .line 10
    iget-object v0, p0, Lc1/c;->b:Lp1/p;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of p2, p1, Lb0/n;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    check-cast p1, Lb0/n;

    .line 23
    .line 24
    iget-object p1, p1, Lb0/n;->a:Lb0/m;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    instance-of p2, p1, Lb0/l;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    check-cast p1, Lb0/l;

    .line 35
    .line 36
    iget-object p1, p1, Lb0/l;->a:Lb0/m;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of p2, p1, Lb0/b;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    instance-of p2, p1, Lb0/c;

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    check-cast p1, Lb0/c;

    .line 55
    .line 56
    iget-object p1, p1, Lb0/c;->a:Lb0/b;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    instance-of p2, p1, Lb0/a;

    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    check-cast p1, Lb0/a;

    .line 67
    .line 68
    iget-object p1, p1, Lb0/a;->a:Lb0/b;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_0
    check-cast p1, Lb0/j;

    .line 77
    .line 78
    instance-of p2, p1, Lb0/h;

    .line 79
    .line 80
    iget-object v0, p0, Lc1/c;->b:Lp1/p;

    .line 81
    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    instance-of p2, p1, Lb0/i;

    .line 89
    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    check-cast p1, Lb0/i;

    .line 93
    .line 94
    iget-object p1, p1, Lb0/i;->a:Lb0/h;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_7
    instance-of p2, p1, Lb0/d;

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_8
    instance-of p2, p1, Lb0/e;

    .line 109
    .line 110
    if-eqz p2, :cond_9

    .line 111
    .line 112
    check-cast p1, Lb0/e;

    .line 113
    .line 114
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_9
    instance-of p2, p1, Lb0/m;

    .line 121
    .line 122
    if-eqz p2, :cond_a

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_a
    instance-of p2, p1, Lb0/n;

    .line 129
    .line 130
    if-eqz p2, :cond_b

    .line 131
    .line 132
    check-cast p1, Lb0/n;

    .line 133
    .line 134
    iget-object p1, p1, Lb0/n;->a:Lb0/m;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_b
    instance-of p2, p1, Lb0/l;

    .line 141
    .line 142
    if-eqz p2, :cond_c

    .line 143
    .line 144
    check-cast p1, Lb0/l;

    .line 145
    .line 146
    iget-object p1, p1, Lb0/l;->a:Lb0/m;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_c
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 152
    .line 153
    return-object p1

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
