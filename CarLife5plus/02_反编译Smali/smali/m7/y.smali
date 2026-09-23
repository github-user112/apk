.class public final Lm7/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Lp1/p;

.field public final synthetic b:Lp1/p;


# direct methods
.method public constructor <init>(Lp1/p;Lp1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/y;->a:Lp1/p;

    .line 5
    .line 6
    iput-object p2, p0, Lm7/y;->b:Lp1/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lf0/c;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    move-object v4, p3

    .line 10
    check-cast v4, Lf1/s;

    .line 11
    .line 12
    check-cast p4, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const-string p4, "$this$items"

    .line 19
    .line 20
    invoke-static {p1, p4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    and-int/lit8 p1, p3, 0x30

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4, p2}, Lf1/s;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/16 p1, 0x20

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 p1, 0x10

    .line 37
    .line 38
    :goto_0
    or-int/2addr p3, p1

    .line 39
    :cond_1
    and-int/lit16 p1, p3, 0x91

    .line 40
    .line 41
    const/16 p3, 0x90

    .line 42
    .line 43
    if-ne p1, p3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    :goto_1
    iget-object p1, p0, Lm7/y;->a:Lp1/p;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lp1/p;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    new-instance p4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, "-"

    .line 81
    .line 82
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object p3, p0, Lm7/y;->b:Lp1/p;

    .line 93
    .line 94
    invoke-virtual {p3, p2}, Lp1/p;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    new-instance v0, Lc8/s;

    .line 99
    .line 100
    const/16 v1, 0xb

    .line 101
    .line 102
    invoke-direct {v0, v1, p1, p2}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const p1, 0xaf33e6b

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance p1, Lm7/x;

    .line 113
    .line 114
    invoke-direct {p1, p4}, Lm7/x;-><init>(Z)V

    .line 115
    .line 116
    .line 117
    const v1, 0x1d8d9b4a

    .line 118
    .line 119
    .line 120
    invoke-static {v1, p1, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const p1, -0x6815fd56

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p1}, Lf1/s;->W(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, p4}, Lf1/s;->g(Z)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    or-int/2addr p1, v2

    .line 139
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    sget-object p1, Lf1/n;->a:Lf1/w0;

    .line 146
    .line 147
    if-ne v2, p1, :cond_5

    .line 148
    .line 149
    :cond_4
    new-instance v2, Lm7/w;

    .line 150
    .line 151
    const/4 p1, 0x0

    .line 152
    invoke-direct {v2, p1, p3, p2, p4}, Lm7/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    move-object v3, v2

    .line 159
    check-cast v3, Lf9/a;

    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 163
    .line 164
    .line 165
    const/16 v5, 0x36

    .line 166
    .line 167
    const/4 v6, 0x4

    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 170
    .line 171
    .line 172
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 173
    .line 174
    return-object p1
.end method
