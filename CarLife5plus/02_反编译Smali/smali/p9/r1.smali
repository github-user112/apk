.class public final Lp9/r1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lg9/m;


# static fields
.field public static final synthetic e:[Lm9/u;


# instance fields
.field public final a:Llb/w;

.field public final b:Lp9/v1;

.field public final c:Lp9/v1;

.field public final d:Lp9/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lp9/r1;

    .line 4
    .line 5
    const-string v2, "classifier"

    .line 6
    .line 7
    const-string v3, "getClassifier()Lkotlin/reflect/KClassifier;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "arguments"

    .line 20
    .line 21
    const-string v5, "getArguments()Ljava/util/List;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lm9/u;

    .line 29
    .line 30
    aput-object v0, v2, v4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    sput-object v2, Lp9/r1;->e:[Lm9/u;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Llb/w;Lf9/a;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp9/r1;->a:Llb/w;

    .line 10
    .line 11
    instance-of p1, p2, Lp9/v1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object p1, p2

    .line 17
    check-cast p1, Lp9/v1;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {v0, p2}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object p1, v0

    .line 31
    :cond_2
    :goto_1
    iput-object p1, p0, Lp9/r1;->b:Lp9/v1;

    .line 32
    .line 33
    new-instance p1, Lp9/q1;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {p1, p0, v1}, Lp9/q1;-><init>(Lp9/r1;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lp9/r1;->c:Lp9/v1;

    .line 44
    .line 45
    new-instance p1, La8/f0;

    .line 46
    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    invoke-direct {p1, v1, p0, p2}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lp9/r1;->d:Lp9/v1;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(Llb/w;)Lm9/d;
    .locals 3

    .line 1
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lv9/e;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    check-cast v0, Lv9/e;

    .line 15
    .line 16
    invoke-static {v0}, Lp9/c2;->k(Lv9/e;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Llb/w;->B0()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ls8/p;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Llb/n0;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Llb/n0;->b()Llb/w;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lp9/r1;->a(Llb/w;)Lm9/d;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    new-instance v0, Lp9/d0;

    .line 56
    .line 57
    invoke-static {p1}, Lg5/a;->I(Lm9/d;)Lm9/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Lp9/d0;-><init>(Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_2
    new-instance p1, Lac/y;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "Cannot determine classifier for array element type: "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x2

    .line 95
    invoke-direct {p1, v1, v0}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    :goto_0
    new-instance p1, Lp9/d0;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Lp9/d0;-><init>(Ljava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_4
    invoke-static {p1}, Llb/v0;->e(Llb/w;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_6

    .line 110
    .line 111
    new-instance p1, Lp9/d0;

    .line 112
    .line 113
    sget-object v1, Lba/d;->b:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/Class;

    .line 120
    .line 121
    if-nez v1, :cond_5

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    move-object v0, v1

    .line 125
    :goto_1
    invoke-direct {p1, v0}, Lp9/d0;-><init>(Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_6
    new-instance p1, Lp9/d0;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Lp9/d0;-><init>(Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_7
    instance-of p1, v0, Lv9/q0;

    .line 136
    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    new-instance p1, Lp9/s1;

    .line 140
    .line 141
    check-cast v0, Lv9/q0;

    .line 142
    .line 143
    invoke-direct {p1, v2, v0}, Lp9/s1;-><init>(Lp9/t1;Lv9/q0;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_8
    instance-of p1, v0, Lv9/p0;

    .line 148
    .line 149
    if-nez p1, :cond_9

    .line 150
    .line 151
    :goto_2
    return-object v2

    .line 152
    :cond_9
    new-instance p1, Lac/y;

    .line 153
    .line 154
    const-string v0, "An operation is not implemented: Type alias classifiers are not yet supported"

    .line 155
    .line 156
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lp9/r1;->e:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lp9/r1;->d:Lp9/v1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getValue(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    return-object v0
.end method

.method public final c()Lm9/d;
    .locals 2

    .line 1
    sget-object v0, Lp9/r1;->e:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lp9/r1;->c:Lp9/v1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lm9/d;

    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp9/r1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lp9/r1;

    .line 6
    .line 7
    iget-object v0, p1, Lp9/r1;->a:Llb/w;

    .line 8
    .line 9
    iget-object v1, p0, Lp9/r1;->a:Llb/w;

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
    invoke-virtual {p0}, Lp9/r1;->c()Lm9/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lp9/r1;->c()Lm9/d;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lp9/r1;->b()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lp9/r1;->b()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/r1;->a:Llb/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Llb/w;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    invoke-virtual {p0}, Lp9/r1;->c()Lm9/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    invoke-virtual {p0}, Lp9/r1;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp9/z1;->a:Lwa/g;

    .line 2
    .line 3
    iget-object v0, p0, Lp9/r1;->a:Llb/w;

    .line 4
    .line 5
    invoke-static {v0}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
