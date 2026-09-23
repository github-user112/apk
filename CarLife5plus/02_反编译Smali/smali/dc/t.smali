.class public final Ldc/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ldc/e;


# direct methods
.method public synthetic constructor <init>(Ldc/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldc/t;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldc/t;->b:Ldc/e;

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
    .locals 4

    .line 1
    iget v0, p0, Ldc/t;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lv7/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Lv7/e;

    .line 12
    .line 13
    iget v1, v0, Lv7/e;->e:I

    .line 14
    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    and-int v3, v1, v2

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    iput v1, v0, Lv7/e;->e:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lv7/e;

    .line 26
    .line 27
    invoke-direct {v0, p0, p2}, Lv7/e;-><init>(Ldc/t;Lw8/c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p2, v0, Lv7/e;->d:Ljava/lang/Object;

    .line 31
    .line 32
    iget v1, v0, Lv7/e;->e:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast p1, Lcom/google/protobuf/i;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/protobuf/i;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput v2, v0, Lv7/e;->e:I

    .line 70
    .line 71
    iget-object p2, p0, Ldc/t;->b:Ldc/e;

    .line 72
    .line 73
    invoke-interface {p2, p1, v0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 78
    .line 79
    if-ne p1, p2, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    :goto_2
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 83
    .line 84
    :goto_3
    return-object p2

    .line 85
    :pswitch_0
    instance-of v0, p2, Ldc/s;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    move-object v0, p2

    .line 90
    check-cast v0, Ldc/s;

    .line 91
    .line 92
    iget v1, v0, Ldc/s;->e:I

    .line 93
    .line 94
    const/high16 v2, -0x80000000

    .line 95
    .line 96
    and-int v3, v1, v2

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    sub-int/2addr v1, v2

    .line 101
    iput v1, v0, Ldc/s;->e:I

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    new-instance v0, Ldc/s;

    .line 105
    .line 106
    invoke-direct {v0, p0, p2}, Ldc/s;-><init>(Ldc/t;Lw8/c;)V

    .line 107
    .line 108
    .line 109
    :goto_4
    iget-object p2, v0, Ldc/s;->d:Ljava/lang/Object;

    .line 110
    .line 111
    iget v1, v0, Ldc/s;->e:I

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    if-ne v1, v2, :cond_6

    .line 117
    .line 118
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_7
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    iput v2, v0, Ldc/s;->e:I

    .line 136
    .line 137
    iget-object p2, p0, Ldc/t;->b:Ldc/e;

    .line 138
    .line 139
    invoke-interface {p2, p1, v0}, Ldc/e;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 144
    .line 145
    if-ne p1, p2, :cond_8

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    :goto_5
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 149
    .line 150
    :goto_6
    return-object p2

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
