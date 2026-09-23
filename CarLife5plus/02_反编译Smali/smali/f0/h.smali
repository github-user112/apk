.class public final Lf0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lh0/v;


# direct methods
.method public synthetic constructor <init>(Lh0/v;II)V
    .locals 0

    .line 1
    iput p3, p0, Lf0/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf0/h;->c:Lh0/v;

    .line 4
    .line 5
    iput p2, p0, Lf0/h;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lf0/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 v0, p2, 0x3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    and-int/2addr p2, v2

    .line 24
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lf0/h;->c:Lh0/v;

    .line 31
    .line 32
    check-cast p2, Lg0/h;

    .line 33
    .line 34
    iget-object p2, p2, Lg0/h;->b:Lg0/g;

    .line 35
    .line 36
    iget-object p2, p2, Lg0/g;->c:Le7/l;

    .line 37
    .line 38
    iget v0, p0, Lf0/h;->b:I

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Le7/l;->c(I)Lh0/i;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget v1, p2, Lh0/i;->a:I

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    iget-object p2, p2, Lh0/i;->c:Lh0/p;

    .line 48
    .line 49
    check-cast p2, Lg0/f;

    .line 50
    .line 51
    iget-object p2, p2, Lg0/f;->c:Ln1/c;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lg0/i;->a:Lg0/i;

    .line 63
    .line 64
    invoke-virtual {p2, v2, v0, p1, v1}, Ln1/c;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 69
    .line 70
    .line 71
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    and-int/lit8 v0, p2, 0x3

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x1

    .line 87
    if-eq v0, v1, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_2
    and-int/2addr p2, v3

    .line 93
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget-object p2, p0, Lf0/h;->c:Lh0/v;

    .line 100
    .line 101
    check-cast p2, Lf0/i;

    .line 102
    .line 103
    iget-object v0, p2, Lf0/i;->b:Lf0/g;

    .line 104
    .line 105
    iget-object v0, v0, Lf0/g;->b:Le7/l;

    .line 106
    .line 107
    iget v1, p0, Lf0/h;->b:I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Le7/l;->c(I)Lh0/i;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v3, v0, Lh0/i;->a:I

    .line 114
    .line 115
    sub-int/2addr v1, v3

    .line 116
    iget-object v0, v0, Lh0/i;->c:Lh0/p;

    .line 117
    .line 118
    check-cast v0, Lf0/f;

    .line 119
    .line 120
    iget-object v0, v0, Lf0/f;->b:Ln1/c;

    .line 121
    .line 122
    iget-object p2, p2, Lf0/i;->c:Lf0/c;

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, p2, v1, p1, v2}, Ln1/c;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 137
    .line 138
    .line 139
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 140
    .line 141
    return-object p1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
