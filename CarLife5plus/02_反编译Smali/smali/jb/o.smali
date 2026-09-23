.class public final Ljb/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ljb/o;->a:I

    iput-object p1, p0, Ljb/o;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljb/o;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljb/o;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly9/h;Lkb/o;Lv9/n0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ljb/o;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb/o;->d:Ljava/lang/Object;

    iput-object p2, p0, Ljb/o;->b:Ljava/lang/Object;

    iput-object p3, p0, Ljb/o;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Ljb/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly9/g;

    .line 7
    .line 8
    iget-object v1, p0, Ljb/o;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ly9/h;

    .line 11
    .line 12
    iget-object v2, p0, Ljb/o;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lkb/o;

    .line 15
    .line 16
    iget-object v3, p0, Ljb/o;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lv9/n0;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Ly9/g;-><init>(Ly9/h;Lkb/o;Lv9/n0;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    iget-object v0, p0, Ljb/o;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Llb/w;

    .line 27
    .line 28
    iget-object v1, p0, Ljb/o;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lp9/z;

    .line 31
    .line 32
    iget-object v2, p0, Ljb/o;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lp9/d0;

    .line 35
    .line 36
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    instance-of v3, v0, Lv9/e;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    move-object v3, v0

    .line 49
    check-cast v3, Lv9/e;

    .line 50
    .line 51
    invoke-static {v3}, Lp9/c2;->k(Lv9/e;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v2, v2, Lp9/d0;->b:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "getInterfaces(...)"

    .line 82
    .line 83
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v4}, Ls8/l;->b0(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ltz v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    aget-object v0, v0, v3

    .line 97
    .line 98
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-object v0

    .line 102
    :cond_1
    new-instance v2, Lac/y;

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "No superclass of "

    .line 107
    .line 108
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " in Java reflection for "

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/4 v1, 0x2

    .line 127
    invoke-direct {v2, v1, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v2

    .line 131
    :cond_2
    new-instance v2, Lac/y;

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "Unsupported superclass of "

    .line 136
    .line 137
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ": "

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/4 v1, 0x2

    .line 156
    invoke-direct {v2, v1, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v2

    .line 160
    :cond_3
    new-instance v1, Lac/y;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "Supertype not a class: "

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/4 v2, 0x2

    .line 177
    invoke-direct {v1, v2, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :pswitch_1
    iget-object v0, p0, Ljb/o;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Lva/v;

    .line 184
    .line 185
    iget-object v1, p0, Ljb/o;->c:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Ljava/io/ByteArrayInputStream;

    .line 188
    .line 189
    iget-object v2, p0, Ljb/o;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v2, Ljb/q;

    .line 192
    .line 193
    iget-object v2, v2, Ljb/q;->b:Lhb/k;

    .line 194
    .line 195
    iget-object v2, v2, Lhb/k;->a:Lhb/i;

    .line 196
    .line 197
    iget-object v2, v2, Lhb/i;->p:Lva/g;

    .line 198
    .line 199
    check-cast v0, Lva/b;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lva/b;->c(Ljava/io/ByteArrayInputStream;Lva/g;)Lva/a;

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
