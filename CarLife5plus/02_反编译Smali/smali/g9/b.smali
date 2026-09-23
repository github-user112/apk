.class public Lg9/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh9/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lg9/b;->a:I

    iput-object p2, p0, Lg9/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llc/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg9/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Llc/e;->k()I

    move-result p1

    iput p1, p0, Lg9/b;->b:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg9/b;->a:I

    const-string v0, "array"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg9/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lg9/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lg9/b;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ls8/e;

    .line 11
    .line 12
    invoke-virtual {v1}, Ls8/a;->b()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 22
    :pswitch_0
    iget v0, p0, Lg9/b;->b:I

    .line 23
    .line 24
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, [S

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_1
    return v0

    .line 35
    :pswitch_1
    iget v0, p0, Lg9/b;->b:I

    .line 36
    .line 37
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, [J

    .line 40
    .line 41
    array-length v1, v1

    .line 42
    if-ge v0, v1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_2
    return v0

    .line 48
    :pswitch_2
    iget v0, p0, Lg9/b;->b:I

    .line 49
    .line 50
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, [I

    .line 53
    .line 54
    array-length v1, v1

    .line 55
    if-ge v0, v1, :cond_3

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    :goto_3
    return v0

    .line 61
    :pswitch_3
    iget v0, p0, Lg9/b;->b:I

    .line 62
    .line 63
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, [B

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    if-ge v0, v1, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    const/4 v0, 0x0

    .line 73
    :goto_4
    return v0

    .line 74
    :pswitch_4
    iget v0, p0, Lg9/b;->b:I

    .line 75
    .line 76
    if-lez v0, :cond_5

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_5

    .line 80
    :cond_5
    const/4 v0, 0x0

    .line 81
    :goto_5
    return v0

    .line 82
    :pswitch_5
    iget v0, p0, Lg9/b;->b:I

    .line 83
    .line 84
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, [Ljava/lang/Object;

    .line 87
    .line 88
    array-length v1, v1

    .line 89
    if-ge v0, v1, :cond_6

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_6

    .line 93
    :cond_6
    const/4 v0, 0x0

    .line 94
    :goto_6
    return v0

    .line 95
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

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lg9/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lg9/b;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ls8/e;

    .line 15
    .line 16
    iget v1, p0, Lg9/b;->b:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lg9/b;->b:I

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :pswitch_0
    iget v0, p0, Lg9/b;->b:I

    .line 34
    .line 35
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, [S

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-ge v0, v2, :cond_1

    .line 41
    .line 42
    add-int/lit8 v2, v0, 0x1

    .line 43
    .line 44
    iput v2, p0, Lg9/b;->b:I

    .line 45
    .line 46
    aget-short v0, v1, v0

    .line 47
    .line 48
    new-instance v1, Lr8/x;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lr8/x;-><init>(S)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    iget v1, p0, Lg9/b;->b:I

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :pswitch_1
    iget v0, p0, Lg9/b;->b:I

    .line 67
    .line 68
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, [J

    .line 71
    .line 72
    array-length v2, v1

    .line 73
    if-ge v0, v2, :cond_2

    .line 74
    .line 75
    add-int/lit8 v2, v0, 0x1

    .line 76
    .line 77
    iput v2, p0, Lg9/b;->b:I

    .line 78
    .line 79
    aget-wide v0, v1, v0

    .line 80
    .line 81
    new-instance v2, Lr8/u;

    .line 82
    .line 83
    invoke-direct {v2, v0, v1}, Lr8/u;-><init>(J)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 88
    .line 89
    iget v1, p0, Lg9/b;->b:I

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :pswitch_2
    iget v0, p0, Lg9/b;->b:I

    .line 100
    .line 101
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, [I

    .line 104
    .line 105
    array-length v2, v1

    .line 106
    if-ge v0, v2, :cond_3

    .line 107
    .line 108
    add-int/lit8 v2, v0, 0x1

    .line 109
    .line 110
    iput v2, p0, Lg9/b;->b:I

    .line 111
    .line 112
    aget v0, v1, v0

    .line 113
    .line 114
    new-instance v1, Lr8/s;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Lr8/s;-><init>(I)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 121
    .line 122
    iget v1, p0, Lg9/b;->b:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :pswitch_3
    iget v0, p0, Lg9/b;->b:I

    .line 133
    .line 134
    iget-object v1, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, [B

    .line 137
    .line 138
    array-length v2, v1

    .line 139
    if-ge v0, v2, :cond_4

    .line 140
    .line 141
    add-int/lit8 v2, v0, 0x1

    .line 142
    .line 143
    iput v2, p0, Lg9/b;->b:I

    .line 144
    .line 145
    aget-byte v0, v1, v0

    .line 146
    .line 147
    new-instance v1, Lr8/q;

    .line 148
    .line 149
    invoke-direct {v1, v0}, Lr8/q;-><init>(B)V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 154
    .line 155
    iget v1, p0, Lg9/b;->b:I

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :pswitch_4
    iget-object v0, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Llc/e;

    .line 168
    .line 169
    invoke-interface {v0}, Llc/e;->k()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    iget v2, p0, Lg9/b;->b:I

    .line 174
    .line 175
    add-int/lit8 v3, v2, -0x1

    .line 176
    .line 177
    iput v3, p0, Lg9/b;->b:I

    .line 178
    .line 179
    sub-int/2addr v1, v2

    .line 180
    invoke-interface {v0, v1}, Llc/e;->n(I)Llc/e;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0

    .line 185
    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lg9/b;->c:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, [Ljava/lang/Object;

    .line 188
    .line 189
    iget v1, p0, Lg9/b;->b:I

    .line 190
    .line 191
    add-int/lit8 v2, v1, 0x1

    .line 192
    .line 193
    iput v2, p0, Lg9/b;->b:I

    .line 194
    .line 195
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget v1, p0, Lg9/b;->b:I

    .line 200
    .line 201
    add-int/lit8 v1, v1, -0x1

    .line 202
    .line 203
    iput v1, p0, Lg9/b;->b:I

    .line 204
    .line 205
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
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

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lg9/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v1, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string v1, "Operation is not supported for read-only collection"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    const-string v1, "Operation is not supported for read-only collection"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    const-string v1, "Operation is not supported for read-only collection"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :pswitch_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 47
    .line 48
    const-string v1, "Operation is not supported for read-only collection"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :pswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 55
    .line 56
    const-string v1, "Operation is not supported for read-only collection"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    nop

    .line 63
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
