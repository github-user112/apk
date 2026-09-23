.class public final Lia/e;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/f;


# direct methods
.method public synthetic constructor <init>(Lia/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/e;->b:Lia/f;

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
    .locals 6

    .line 1
    iget v0, p0, Lia/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/e;->b:Lia/f;

    .line 7
    .line 8
    iget-object v1, v0, Lia/f;->b:Lba/e;

    .line 9
    .line 10
    invoke-virtual {v1}, Lba/e;->b()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lla/a;

    .line 34
    .line 35
    move-object v4, v3

    .line 36
    check-cast v4, Lba/f;

    .line 37
    .line 38
    iget-object v4, v4, Lba/f;->a:Lua/e;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    sget-object v4, Lea/y;->b:Lua/e;

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0, v3}, Lia/f;->c(Lla/a;)Lza/g;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    new-instance v5, Lr8/j;

    .line 51
    .line 52
    invoke-direct {v5, v4, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v5, 0x0

    .line 57
    :goto_1
    if-eqz v5, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {v2}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lia/e;->b:Lia/f;

    .line 69
    .line 70
    invoke-virtual {v0}, Lia/f;->a()Lua/c;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v0, Lia/f;->b:Lba/e;

    .line 75
    .line 76
    iget-object v0, v0, Lia/f;->a:Lba/a;

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Lba/e;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    filled-new-array {v0}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lnb/k;->E:Lnb/k;

    .line 89
    .line 90
    invoke-static {v1, v0}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lha/a;

    .line 98
    .line 99
    iget-object v3, v0, Lha/a;->o:Lv9/y;

    .line 100
    .line 101
    invoke-interface {v3}, Lv9/y;->j()Ls9/i;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v1, v4}, Lu9/e;->b(Lua/c;Ls9/i;)Lv9/e;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    new-instance v4, Lba/p;

    .line 112
    .line 113
    iget-object v2, v2, Lba/e;->a:Ljava/lang/annotation/Annotation;

    .line 114
    .line 115
    invoke-static {v2}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v4, v2}, Lba/p;-><init>(Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v0, Lha/a;->k:La2/d;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v2, v2, La2/d;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, La2/d;

    .line 134
    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    invoke-virtual {v2, v4}, La2/d;->u(Lba/p;)Lv9/e;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-nez v4, :cond_6

    .line 142
    .line 143
    new-instance v2, Lua/b;

    .line 144
    .line 145
    invoke-virtual {v1}, Lua/c;->b()Lua/c;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 150
    .line 151
    invoke-virtual {v1}, Lua/d;->f()Lua/e;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v2, v4, v1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lha/a;->d:Lna/f;

    .line 159
    .line 160
    invoke-virtual {v0}, Lna/f;->c()Lhb/i;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Lhb/i;->l:Lba/a;

    .line 165
    .line 166
    invoke-static {v3, v2, v0}, Lv9/v;->f(Lv9/y;Lua/b;Lba/a;)Lv9/e;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    const-string v0, "resolver"

    .line 172
    .line 173
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    throw v0

    .line 178
    :cond_6
    :goto_2
    invoke-interface {v4}, Lv9/e;->n()Llb/a0;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_3
    return-object v0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lia/e;->b:Lia/f;

    .line 184
    .line 185
    iget-object v0, v0, Lia/f;->b:Lba/e;

    .line 186
    .line 187
    iget-object v0, v0, Lba/e;->a:Ljava/lang/annotation/Annotation;

    .line 188
    .line 189
    invoke-static {v0}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
