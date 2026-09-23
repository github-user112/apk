.class public final Lia/p;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/q;


# direct methods
.method public synthetic constructor <init>(Lia/q;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia/p;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/p;->b:Lia/q;

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
    .locals 7

    .line 1
    iget v0, p0, Lia/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lia/p;->b:Lia/q;

    .line 12
    .line 13
    iget-object v1, v1, Lia/q;->i:Lkb/j;

    .line 14
    .line 15
    sget-object v2, Lia/q;->m:[Lm9/u;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget-object v2, v2, v3

    .line 19
    .line 20
    invoke-static {v1, v2}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Laa/c;

    .line 57
    .line 58
    invoke-static {v3}, Lcb/b;->c(Ljava/lang/String;)Lcb/b;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v2, v2, Laa/c;->b:Loa/b;

    .line 63
    .line 64
    iget-object v4, v2, Loa/b;->a:Loa/a;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x2

    .line 71
    if-eq v5, v6, :cond_3

    .line 72
    .line 73
    const/4 v6, 0x5

    .line 74
    if-eq v5, v6, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, v2, Loa/b;->f:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v5, Loa/a;->i:Loa/a;

    .line 80
    .line 81
    if-ne v4, v5, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    :goto_1
    if-nez v2, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {v2}, Lcb/b;->c(Ljava/lang/String;)Lcb/b;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-object v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lia/p;->b:Lia/q;

    .line 102
    .line 103
    iget-object v0, v0, Lia/q;->g:Lba/z;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    const/16 v1, 0xa

    .line 111
    .line 112
    sget-object v2, Ls8/w;->a:Ls8/w;

    .line 113
    .line 114
    invoke-static {v2, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lia/p;->b:Lia/q;

    .line 123
    .line 124
    iget-object v1, v0, Lia/q;->h:Lba/a;

    .line 125
    .line 126
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Lha/a;

    .line 129
    .line 130
    iget-object v1, v1, Lha/a;->l:Lna/g;

    .line 131
    .line 132
    iget-object v0, v0, Ly9/c0;->e:Lua/c;

    .line 133
    .line 134
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 135
    .line 136
    iget-object v0, v0, Lua/d;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v1, "packageFqName"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Ls8/b0;->O(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
