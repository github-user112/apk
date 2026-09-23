.class public final Lma/k;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lma/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lma/k;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lma/k;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lma/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const-string v5, "$this$function"

    .line 9
    .line 10
    iget-object v6, p0, Lma/k;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v7, p0, Lma/k;->b:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    check-cast p1, Lma/p;

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-array v0, v9, [Lma/e;

    .line 25
    .line 26
    sget-object v1, Lma/m;->a:Lma/e;

    .line 27
    .line 28
    aput-object v1, v0, v8

    .line 29
    .line 30
    invoke-virtual {p1, v7, v0}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 31
    .line 32
    .line 33
    new-array v0, v4, [Lma/e;

    .line 34
    .line 35
    sget-object v1, Lma/m;->b:Lma/e;

    .line 36
    .line 37
    aput-object v1, v0, v8

    .line 38
    .line 39
    sget-object v1, Lma/m;->c:Lma/e;

    .line 40
    .line 41
    aput-object v1, v0, v9

    .line 42
    .line 43
    invoke-virtual {p1, v6, v0}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_0
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lma/m;->c:Lma/e;

    .line 51
    .line 52
    new-array v1, v9, [Lma/e;

    .line 53
    .line 54
    aput-object v0, v1, v8

    .line 55
    .line 56
    invoke-virtual {p1, v7, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 57
    .line 58
    .line 59
    new-array v1, v4, [Lma/e;

    .line 60
    .line 61
    sget-object v2, Lma/m;->b:Lma/e;

    .line 62
    .line 63
    aput-object v2, v1, v8

    .line 64
    .line 65
    aput-object v0, v1, v9

    .line 66
    .line 67
    invoke-virtual {p1, v6, v1}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :pswitch_1
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lma/m;->b:Lma/e;

    .line 75
    .line 76
    new-array v5, v9, [Lma/e;

    .line 77
    .line 78
    aput-object v0, v5, v8

    .line 79
    .line 80
    invoke-virtual {p1, v7, v5}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 81
    .line 82
    .line 83
    sget-object v5, Lma/m;->c:Lma/e;

    .line 84
    .line 85
    new-array v10, v9, [Lma/e;

    .line 86
    .line 87
    aput-object v5, v10, v8

    .line 88
    .line 89
    invoke-virtual {p1, v7, v10}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 90
    .line 91
    .line 92
    sget-object v10, Lma/m;->a:Lma/e;

    .line 93
    .line 94
    new-array v1, v1, [Lma/e;

    .line 95
    .line 96
    aput-object v0, v1, v8

    .line 97
    .line 98
    aput-object v5, v1, v9

    .line 99
    .line 100
    aput-object v5, v1, v4

    .line 101
    .line 102
    aput-object v10, v1, v2

    .line 103
    .line 104
    invoke-virtual {p1, v6, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 105
    .line 106
    .line 107
    new-array v0, v9, [Lma/e;

    .line 108
    .line 109
    aput-object v10, v0, v8

    .line 110
    .line 111
    invoke-virtual {p1, v7, v0}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 112
    .line 113
    .line 114
    return-object v3

    .line 115
    :pswitch_2
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lma/m;->b:Lma/e;

    .line 119
    .line 120
    new-array v5, v9, [Lma/e;

    .line 121
    .line 122
    aput-object v0, v5, v8

    .line 123
    .line 124
    invoke-virtual {p1, v7, v5}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 125
    .line 126
    .line 127
    sget-object v5, Lma/m;->a:Lma/e;

    .line 128
    .line 129
    new-array v1, v1, [Lma/e;

    .line 130
    .line 131
    aput-object v0, v1, v8

    .line 132
    .line 133
    aput-object v0, v1, v9

    .line 134
    .line 135
    sget-object v0, Lma/m;->c:Lma/e;

    .line 136
    .line 137
    aput-object v0, v1, v4

    .line 138
    .line 139
    aput-object v5, v1, v2

    .line 140
    .line 141
    invoke-virtual {p1, v6, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 142
    .line 143
    .line 144
    new-array v0, v9, [Lma/e;

    .line 145
    .line 146
    aput-object v5, v0, v8

    .line 147
    .line 148
    invoke-virtual {p1, v7, v0}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 149
    .line 150
    .line 151
    return-object v3

    .line 152
    :pswitch_3
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object v0, Lma/m;->b:Lma/e;

    .line 156
    .line 157
    new-array v1, v9, [Lma/e;

    .line 158
    .line 159
    aput-object v0, v1, v8

    .line 160
    .line 161
    invoke-virtual {p1, v7, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 162
    .line 163
    .line 164
    new-array v1, v2, [Lma/e;

    .line 165
    .line 166
    aput-object v0, v1, v8

    .line 167
    .line 168
    aput-object v0, v1, v9

    .line 169
    .line 170
    aput-object v0, v1, v4

    .line 171
    .line 172
    invoke-virtual {p1, v6, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 173
    .line 174
    .line 175
    new-array v1, v9, [Lma/e;

    .line 176
    .line 177
    aput-object v0, v1, v8

    .line 178
    .line 179
    invoke-virtual {p1, v7, v1}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 180
    .line 181
    .line 182
    return-object v3

    .line 183
    :pswitch_4
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v0, Lma/m;->b:Lma/e;

    .line 187
    .line 188
    new-array v5, v9, [Lma/e;

    .line 189
    .line 190
    aput-object v0, v5, v8

    .line 191
    .line 192
    invoke-virtual {p1, v7, v5}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 193
    .line 194
    .line 195
    sget-object v5, Lma/m;->a:Lma/e;

    .line 196
    .line 197
    new-array v1, v1, [Lma/e;

    .line 198
    .line 199
    aput-object v0, v1, v8

    .line 200
    .line 201
    aput-object v0, v1, v9

    .line 202
    .line 203
    aput-object v5, v1, v4

    .line 204
    .line 205
    aput-object v5, v1, v2

    .line 206
    .line 207
    invoke-virtual {p1, v6, v1}, Lma/p;->a(Ljava/lang/String;[Lma/e;)V

    .line 208
    .line 209
    .line 210
    new-array v0, v9, [Lma/e;

    .line 211
    .line 212
    aput-object v5, v0, v8

    .line 213
    .line 214
    invoke-virtual {p1, v7, v0}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 215
    .line 216
    .line 217
    return-object v3

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
