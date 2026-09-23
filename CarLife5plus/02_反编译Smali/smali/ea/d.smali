.class public final Lea/d;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lea/d;

.field public static final c:Lea/d;

.field public static final d:Lea/d;

.field public static final e:Lea/d;

.field public static final f:Lea/d;

.field public static final g:Lea/d;

.field public static final h:Lea/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lea/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lea/d;->b:Lea/d;

    .line 8
    .line 9
    new-instance v0, Lea/d;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lea/d;->c:Lea/d;

    .line 16
    .line 17
    new-instance v0, Lea/d;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lea/d;->d:Lea/d;

    .line 24
    .line 25
    new-instance v0, Lea/d;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lea/d;->e:Lea/d;

    .line 32
    .line 33
    new-instance v0, Lea/d;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lea/d;->f:Lea/d;

    .line 40
    .line 41
    new-instance v0, Lea/d;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lea/d;->g:Lea/d;

    .line 48
    .line 49
    new-instance v0, Lea/d;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Lea/d;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lea/d;->h:Lea/d;

    .line 56
    .line 57
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lea/d;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lea/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "it"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lv9/c;

    .line 11
    .line 12
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ls9/i;->A(Lv9/k;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    sget v0, Lea/e;->l:I

    .line 22
    .line 23
    sget-object v0, Lea/h0;->e:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lea/d;->c:Lea/d;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-static {p1}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lea/h0;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    sget-object v3, Lea/e0;->a:Lea/e0;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object v0, Lea/h0;->d:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-static {p1, v0}, Ls8/b0;->K(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lea/g0;

    .line 70
    .line 71
    sget-object v0, Lea/g0;->b:Lea/g0;

    .line 72
    .line 73
    if-ne p1, v0, :cond_3

    .line 74
    .line 75
    sget-object v3, Lea/e0;->c:Lea/e0;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    sget-object v3, Lea/e0;->b:Lea/e0;

    .line 79
    .line 80
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :pswitch_0
    check-cast p1, Lv9/c;

    .line 89
    .line 90
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget v0, Lea/c;->l:I

    .line 94
    .line 95
    check-cast p1, Ly9/l0;

    .line 96
    .line 97
    invoke-static {p1}, Ls9/i;->A(Lv9/k;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    new-instance v0, Lba/j;

    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    invoke-direct {v0, v3, p1}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lbb/e;->b(Lv9/c;Lf9/k;)Lv9/c;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :pswitch_1
    check-cast p1, Lv9/c;

    .line 122
    .line 123
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lbb/e;->k(Lv9/c;)Lv9/c;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Li2/c;->G(Lv9/c;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :pswitch_2
    check-cast p1, Ly9/r0;

    .line 140
    .line 141
    check-cast p1, Ly9/s0;

    .line 142
    .line 143
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :pswitch_3
    check-cast p1, Lv9/c;

    .line 149
    .line 150
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Li2/c;->G(Lv9/c;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :pswitch_4
    check-cast p1, Lv9/c;

    .line 163
    .line 164
    sget v0, Lea/e;->l:I

    .line 165
    .line 166
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    instance-of v0, p1, Lv9/t;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    sget-object v0, Lea/h0;->f:Ljava/util/Set;

    .line 174
    .line 175
    check-cast v0, Ljava/lang/Iterable;

    .line 176
    .line 177
    invoke-static {p1}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v0, p1}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    const/4 v1, 0x1

    .line 188
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :pswitch_5
    check-cast p1, Lv9/c;

    .line 194
    .line 195
    sget v0, Lea/e;->l:I

    .line 196
    .line 197
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lea/h0;->f:Ljava/util/Set;

    .line 201
    .line 202
    check-cast v0, Ljava/lang/Iterable;

    .line 203
    .line 204
    invoke-static {p1}, Lm9/e0;->Q(Lv9/b;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
