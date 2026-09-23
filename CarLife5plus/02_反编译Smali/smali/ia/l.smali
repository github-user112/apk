.class public final Lia/l;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/o;


# direct methods
.method public synthetic constructor <init>(Lia/o;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/l;->b:Lia/o;

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
    .locals 4

    .line 1
    iget v0, p0, Lia/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/l;->b:Lia/o;

    .line 7
    .line 8
    invoke-virtual {v0}, Lia/a0;->b()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lia/a0;->g()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-static {v1, v0}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lia/l;->b:Lia/o;

    .line 24
    .line 25
    iget-object v0, v0, Lia/o;->o:Lba/p;

    .line 26
    .line 27
    invoke-virtual {v0}, Lba/p;->b()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v3, v2

    .line 51
    check-cast v3, Lba/v;

    .line 52
    .line 53
    iget-object v3, v3, Lba/v;->a:Ljava/lang/reflect/Field;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v0, 0xa

    .line 66
    .line 67
    invoke-static {v1, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ls8/c0;->H(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v2, 0x10

    .line 76
    .line 77
    if-ge v0, v2, :cond_2

    .line 78
    .line 79
    const/16 v0, 0x10

    .line 80
    .line 81
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object v3, v1

    .line 101
    check-cast v3, Lba/v;

    .line 102
    .line 103
    invoke-virtual {v3}, Lba/x;->c()Lua/e;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    return-object v2

    .line 112
    :pswitch_1
    iget-object v0, p0, Lia/l;->b:Lia/o;

    .line 113
    .line 114
    iget-object v0, v0, Lia/o;->o:Lba/p;

    .line 115
    .line 116
    iget-object v0, v0, Lba/p;->a:Ljava/lang/Class;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "getDeclaredClasses(...)"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Ls8/l;->K([Ljava/lang/Object;)Lwb/j;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v1, Lba/c;->d:Lba/c;

    .line 132
    .line 133
    new-instance v2, Lwb/h;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    invoke-direct {v2, v0, v3, v1}, Lwb/h;-><init>(Lwb/j;ZLf9/k;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lba/c;->e:Lba/c;

    .line 140
    .line 141
    invoke-static {v2, v0}, Lwb/l;->O(Lwb/j;Lf9/k;)Lwb/h;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lwb/l;->P(Lwb/j;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
