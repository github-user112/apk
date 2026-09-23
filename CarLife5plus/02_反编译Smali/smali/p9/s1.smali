.class public final Lp9/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/v;


# static fields
.field public static final synthetic d:[Lm9/u;


# instance fields
.field public final a:Lv9/q0;

.field public final b:Lp9/v1;

.field public final c:Lp9/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lp9/s1;

    .line 4
    .line 5
    const-string v2, "upperBounds"

    .line 6
    .line 7
    const-string v3, "getUpperBounds()Ljava/util/List;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Lm9/u;

    .line 21
    .line 22
    aput-object v0, v1, v4

    .line 23
    .line 24
    sput-object v1, Lp9/s1;->d:[Lm9/u;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lp9/t1;Lv9/q0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lp9/s1;->a:Lv9/q0;

    .line 5
    .line 6
    new-instance v0, La8/g0;

    .line 7
    .line 8
    const/16 v1, 0x15

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lp9/s1;->b:Lp9/v1;

    .line 19
    .line 20
    if-nez p1, :cond_9

    .line 21
    .line 22
    invoke-interface {p2}, Lv9/k;->k()Lv9/k;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "getContainingDeclaration(...)"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    instance-of v0, p1, Lv9/e;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    check-cast p1, Lv9/e;

    .line 36
    .line 37
    invoke-static {p1}, Lp9/s1;->b(Lv9/e;)Lp9/d0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_4

    .line 42
    :cond_0
    instance-of v0, p1, Lv9/c;

    .line 43
    .line 44
    if-eqz v0, :cond_8

    .line 45
    .line 46
    move-object v0, p1

    .line 47
    check-cast v0, Lv9/c;

    .line 48
    .line 49
    invoke-interface {v0}, Lv9/k;->k()Lv9/k;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    instance-of p2, v0, Lv9/e;

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    check-cast v0, Lv9/e;

    .line 61
    .line 62
    invoke-static {v0}, Lp9/s1;->b(Lv9/e;)Lp9/d0;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    instance-of p2, p1, Ljb/l;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    move-object p2, p1

    .line 72
    check-cast p2, Ljb/l;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object p2, v1

    .line 76
    :goto_0
    if-eqz p2, :cond_7

    .line 77
    .line 78
    invoke-interface {p2}, Ljb/l;->U()Ljb/k;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    instance-of v2, v0, Lna/h;

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    check-cast v0, Lna/h;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v0, v1

    .line 90
    :goto_1
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, v0, Lna/h;->c:Laa/c;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object v0, v1

    .line 96
    :goto_2
    instance-of v2, v0, Laa/c;

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    :cond_5
    if-eqz v1, :cond_6

    .line 102
    .line 103
    iget-object v0, v1, Laa/c;->a:Ljava/lang/Class;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-static {v0}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lp9/d0;

    .line 112
    .line 113
    :goto_3
    new-instance v0, Lkb/a;

    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    invoke-direct {v0, v1, p2}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 121
    .line 122
    invoke-interface {p1, v0, p2}, Lv9/k;->G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_4
    check-cast p1, Lp9/t1;

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    new-instance p1, Lac/y;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "Container of deserialized member is not resolved: "

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const/4 v0, 0x2

    .line 146
    invoke-direct {p1, v0, p2}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_7
    new-instance p2, Lac/y;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v1, "Non-class callable descriptor must be deserialized: "

    .line 155
    .line 156
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/4 v0, 0x2

    .line 167
    invoke-direct {p2, v0, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p2

    .line 171
    :cond_8
    new-instance p2, Lac/y;

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v1, "Unknown type parameter container: "

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const/4 v0, 0x2

    .line 188
    invoke-direct {p2, v0, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :cond_9
    :goto_5
    iput-object p1, p0, Lp9/s1;->c:Lp9/t1;

    .line 193
    .line 194
    return-void
.end method

.method public static b(Lv9/e;)Lp9/d0;
    .locals 3

    .line 1
    invoke-static {p0}, Lp9/c2;->k(Lv9/e;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    check-cast v0, Lp9/d0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lac/y;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Type parameter container is not resolved: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, v1, p0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/s1;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/k;->getName()Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "asString(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp9/s1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lp9/s1;

    .line 6
    .line 7
    iget-object v0, p1, Lp9/s1;->c:Lp9/t1;

    .line 8
    .line 9
    iget-object v1, p0, Lp9/s1;->c:Lp9/t1;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lp9/s1;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lp9/s1;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/s1;->c:Lp9/t1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    invoke-virtual {p0}, Lp9/s1;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lp9/s1;->a:Lv9/q0;

    .line 7
    .line 8
    invoke-interface {v1}, Lv9/q0;->J()Llb/y0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    sget-object v1, Lm9/y;->c:Lm9/y;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lac/p;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    sget-object v1, Lm9/y;->b:Lm9/y;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object v1, Lm9/y;->a:Lm9/y;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    if-eq v1, v3, :cond_4

    .line 45
    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    const-string v1, "out "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    new-instance v0, Lac/p;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_4
    const-string v1, "in "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lp9/s1;->a()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
