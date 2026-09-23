.class public final Lia/w;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/a0;


# direct methods
.method public synthetic constructor <init>(Lia/a0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia/w;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/w;->b:Lia/a0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lia/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Leb/f;->o:Leb/f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lia/w;->b:Lia/a0;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Lia/a0;->h(Leb/f;Lf9/k;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :pswitch_0
    iget-object v0, p0, Lia/w;->b:Lia/a0;

    .line 17
    .line 18
    sget-object v1, Leb/f;->q:Leb/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lia/a0;->o(Leb/f;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_1
    sget-object v0, Leb/f;->p:Leb/f;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lia/w;->b:Lia/a0;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Lia/a0;->i(Leb/f;Leb/l;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lia/w;->b:Lia/a0;

    .line 36
    .line 37
    invoke-virtual {v0}, Lia/a0;->k()Lia/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_3
    sget-object v0, Leb/f;->m:Leb/f;

    .line 43
    .line 44
    sget-object v1, Leb/o;->a:Leb/m;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v1, Leb/l;->b:Leb/l;

    .line 50
    .line 51
    const-string v2, "kindFilter"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v0, Leb/f;->a:Ljava/util/List;

    .line 57
    .line 58
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    sget v4, Leb/f;->l:I

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Leb/f;->a(I)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget-object v5, p0, Lia/w;->b:Lia/a0;

    .line 70
    .line 71
    sget-object v6, Lda/b;->d:Lda/b;

    .line 72
    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    invoke-virtual {v5, v0, v1}, Lia/a0;->h(Leb/f;Lf9/k;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_0

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lua/e;

    .line 94
    .line 95
    invoke-virtual {v1, v7}, Leb/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v7, v6}, Leb/p;->e(Lua/e;Lda/b;)Lv9/h;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {v3, v7}, Lub/k;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    sget v4, Leb/f;->i:I

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Leb/f;->a(I)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_1

    .line 113
    .line 114
    sget-object v4, Leb/b;->a:Leb/b;

    .line 115
    .line 116
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_1

    .line 121
    .line 122
    invoke-virtual {v5, v0, v1}, Lia/a0;->i(Leb/f;Leb/l;)Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_1

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    check-cast v7, Lua/e;

    .line 141
    .line 142
    invoke-virtual {v1, v7}, Leb/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v7, v6}, Lia/a0;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    sget v4, Leb/f;->j:I

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Leb/f;->a(I)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_2

    .line 160
    .line 161
    sget-object v4, Leb/b;->a:Leb/b;

    .line 162
    .line 163
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_2

    .line 168
    .line 169
    invoke-virtual {v5, v0}, Lia/a0;->o(Leb/f;)Ljava/util/Set;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_2

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lua/e;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Leb/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v2, v6}, Lia/a0;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_2
    invoke-static {v3}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
