.class public final Loa/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lna/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Loa/g;


# direct methods
.method public synthetic constructor <init>(Loa/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Loa/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Loa/e;->b:Loa/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Lua/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Lua/e;Lza/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(Lua/e;Lza/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final i(Lua/e;Lza/f;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j()V
    .locals 0

    .line 1
    return-void
.end method

.method private final k()V
    .locals 0

    .line 1
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method

.method private final n(Lua/e;Lua/b;Lua/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final o(Lua/e;Lua/b;Lua/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final p(Lua/e;Lua/b;Lua/e;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget v0, p0, Loa/e;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final c(Lua/e;)Lna/n;
    .locals 1

    .line 1
    iget v0, p0, Loa/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "data"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string v0, "filePartClassNames"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "strings"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Loa/f;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-direct {p1, p0, v0}, Loa/f;-><init>(Loa/e;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    new-instance p1, Loa/f;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {p1, p0, v0}, Loa/f;-><init>(Loa/e;I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object p1

    .line 51
    :pswitch_0
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "b"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    new-instance p1, Loa/d;

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-direct {p1, p0, v0}, Loa/d;-><init>(Lna/m;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const/4 p1, 0x0

    .line 71
    :goto_2
    return-object p1

    .line 72
    :pswitch_1
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "d1"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    new-instance p1, Loa/d;

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-direct {p1, p0, v0}, Loa/d;-><init>(Lna/m;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const-string v0, "d2"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    new-instance p1, Loa/d;

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    invoke-direct {p1, p0, v0}, Loa/d;-><init>(Lna/m;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const/4 p1, 0x0

    .line 107
    :goto_3
    return-object p1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lua/e;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Loa/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "version"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Loa/e;->b:Loa/g;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    instance-of p1, p2, [I

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    check-cast p2, [I

    .line 25
    .line 26
    iput-object p2, v1, Loa/g;->a:[I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v0, "multifileClassName"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    instance-of p1, p2, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    check-cast p2, Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p2, 0x0

    .line 45
    :goto_0
    iput-object p2, v1, Loa/g;->b:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "k"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v1, p0, Loa/e;->b:Loa/g;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    instance-of p1, p2, Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz p1, :cond_8

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Integer;

    .line 67
    .line 68
    sget-object p1, Loa/a;->b:Ln6/a;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    sget-object p1, Loa/a;->c:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Loa/a;

    .line 80
    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    sget-object p1, Loa/a;->d:Loa/a;

    .line 84
    .line 85
    :cond_3
    iput-object p1, v1, Loa/g;->g:Loa/a;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-string v0, "mv"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    instance-of p1, p2, [I

    .line 97
    .line 98
    if-eqz p1, :cond_8

    .line 99
    .line 100
    check-cast p2, [I

    .line 101
    .line 102
    iput-object p2, v1, Loa/g;->a:[I

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const-string v0, "xs"

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    instance-of p1, p2, Ljava/lang/String;

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    check-cast p2, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_8

    .line 124
    .line 125
    iput-object p2, v1, Loa/g;->b:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    const-string v0, "xi"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    instance-of p1, p2, Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    check-cast p2, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, v1, Loa/g;->c:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    const-string p2, "pn"

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_2
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lua/e;Lza/f;)V
    .locals 0

    .line 1
    iget p1, p0, Loa/e;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final f(Lua/e;Lua/b;Lua/e;)V
    .locals 0

    .line 1
    iget p1, p0, Loa/e;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final l(Lua/b;Lua/e;)Lna/m;
    .locals 0

    .line 1
    iget p1, p0, Loa/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :pswitch_0
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :pswitch_1
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
