.class public final Lhb/q;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:I


# direct methods
.method public synthetic constructor <init>(Lhb/t;Lva/a;II)V
    .locals 0

    .line 1
    iput p4, p0, Lhb/q;->a:I

    iput-object p1, p0, Lhb/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhb/q;->c:Ljava/lang/Object;

    iput p3, p0, Lhb/q;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp9/r1;ILr8/h;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lhb/q;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/q;->b:Ljava/lang/Object;

    iput p2, p0, Lhb/q;->d:I

    iput-object p3, p0, Lhb/q;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lhb/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhb/q;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp9/r1;

    .line 9
    .line 10
    iget-object v1, v0, Lp9/r1;->b:Lp9/v1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/reflect/Type;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    instance-of v2, v1, Ljava/lang/Class;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 40
    .line 41
    :goto_1
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    instance-of v2, v1, Ljava/lang/reflect/GenericArrayType;

    .line 46
    .line 47
    iget v3, p0, Lhb/q;->d:I

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    new-instance v1, Lac/y;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "Array type has been queried for a non-0th argument: "

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-direct {v1, v2, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_4
    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    iget-object v0, p0, Lhb/q;->c:Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/reflect/Type;

    .line 101
    .line 102
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "getLowerBounds(...)"

    .line 114
    .line 115
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ls8/l;->X([Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/reflect/Type;

    .line 123
    .line 124
    if-nez v1, :cond_6

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "getUpperBounds(...)"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Ls8/l;->W([Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/reflect/Type;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move-object v0, v1

    .line 143
    :goto_2
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-object v0

    .line 147
    :cond_7
    new-instance v1, Lac/y;

    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v3, "Non-generic type has been queried for arguments: "

    .line 152
    .line 153
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v2, 0x2

    .line 164
    invoke-direct {v1, v2, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1

    .line 168
    :pswitch_0
    iget-object v0, p0, Lhb/q;->b:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Lhb/t;

    .line 171
    .line 172
    iget-object v1, p0, Lhb/q;->c:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Lva/a;

    .line 175
    .line 176
    iget-object v2, v0, Lhb/t;->a:Lhb/k;

    .line 177
    .line 178
    iget-object v3, v2, Lhb/k;->c:Lv9/k;

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    iget-object v2, v2, Lhb/k;->a:Lhb/i;

    .line 187
    .line 188
    iget-object v2, v2, Lhb/i;->e:Lhb/a;

    .line 189
    .line 190
    iget v3, p0, Lhb/q;->d:I

    .line 191
    .line 192
    invoke-interface {v2, v0, v1, v3}, Lhb/c;->G(Lhb/w;Lva/a;I)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    const/4 v0, 0x0

    .line 198
    :goto_4
    if-nez v0, :cond_9

    .line 199
    .line 200
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 201
    .line 202
    :cond_9
    return-object v0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lhb/q;->b:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v0, Lhb/t;

    .line 206
    .line 207
    iget-object v1, p0, Lhb/q;->c:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Lva/a;

    .line 210
    .line 211
    iget-object v2, v0, Lhb/t;->a:Lhb/k;

    .line 212
    .line 213
    iget-object v3, v2, Lhb/k;->c:Lv9/k;

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    iget-object v2, v2, Lhb/k;->a:Lhb/i;

    .line 222
    .line 223
    iget-object v2, v2, Lhb/i;->e:Lhb/a;

    .line 224
    .line 225
    iget v3, p0, Lhb/q;->d:I

    .line 226
    .line 227
    invoke-interface {v2, v0, v1, v3}, Lhb/c;->m0(Lhb/w;Lva/a;I)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    goto :goto_5

    .line 236
    :cond_a
    const/4 v0, 0x0

    .line 237
    :goto_5
    if-nez v0, :cond_b

    .line 238
    .line 239
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 240
    .line 241
    :cond_b
    return-object v0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
