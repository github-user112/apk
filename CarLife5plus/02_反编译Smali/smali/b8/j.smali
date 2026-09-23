.class public final Lb8/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz7/b2;


# direct methods
.method public constructor <init>(ILz7/b2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb8/j;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lb8/j;->b:Lz7/b2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lz7/q1;

    .line 2
    .line 3
    sget-object p2, Lb8/o;->b:[I

    .line 4
    .line 5
    iget v0, p0, Lb8/j;->a:I

    .line 6
    .line 7
    aget p2, p2, v0

    .line 8
    .line 9
    iget-object v1, p0, Lb8/j;->b:Lz7/b2;

    .line 10
    .line 11
    iget-object v2, v1, Lz7/b2;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-ge p2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lz7/a2;

    .line 25
    .line 26
    iget-object v3, v3, Lz7/a2;->d:Lz7/q1;

    .line 27
    .line 28
    invoke-static {p1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    sget-object p1, Lb8/o;->b:[I

    .line 35
    .line 36
    add-int/lit8 v3, p2, 0x1

    .line 37
    .line 38
    aput v3, p1, v0

    .line 39
    .line 40
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 41
    .line 42
    iget-object v3, v1, Lz7/b2;->b:Ljava/lang/String;

    .line 43
    .line 44
    sget-object v5, Lb8/o;->b:[I

    .line 45
    .line 46
    aget v5, v5, v0

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lz7/a2;

    .line 57
    .line 58
    iget-object p2, p2, Lz7/a2;->c:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v8, "\u3010\u4efb\u52a1\u89e6\u53d1\u3011"

    .line 63
    .line 64
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, " \u7b2c"

    .line 71
    .line 72
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "/"

    .line 79
    .line 80
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, "\u6b65 "

    .line 87
    .line 88
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const/4 v3, 0x1

    .line 99
    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    aput-object p2, v3, v5

    .line 103
    .line 104
    const-string p2, "CarLife_Vehicle"

    .line 105
    .line 106
    invoke-virtual {p1, p2, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lb8/o;->b:[I

    .line 110
    .line 111
    aget p1, p1, v0

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-ne p1, p2, :cond_2

    .line 118
    .line 119
    sget-object p1, Lb8/o;->a:Lfc/c;

    .line 120
    .line 121
    new-instance p2, Lb8/h;

    .line 122
    .line 123
    invoke-direct {p2, v1, v4}, Lb8/h;-><init>(Lz7/b2;Lw8/c;)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x3

    .line 127
    invoke-static {p1, v4, p2, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 128
    .line 129
    .line 130
    sget-object p1, Lb8/o;->b:[I

    .line 131
    .line 132
    aput v5, p1, v0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    sget-object p2, Lb8/o;->b:[I

    .line 136
    .line 137
    invoke-static {v2}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lz7/a2;

    .line 142
    .line 143
    if-eqz v1, :cond_1

    .line 144
    .line 145
    iget-object v4, v1, Lz7/a2;->d:Lz7/q1;

    .line 146
    .line 147
    :cond_1
    invoke-static {p1, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    aput p1, p2, v0

    .line 152
    .line 153
    :cond_2
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 154
    .line 155
    return-object p1
.end method
