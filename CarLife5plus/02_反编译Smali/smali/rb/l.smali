.class public final Lrb/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lrb/e;


# static fields
.field public static final b:Lrb/l;

.field public static final c:Lrb/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrb/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lrb/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lrb/l;->b:Lrb/l;

    .line 8
    .line 9
    new-instance v0, Lrb/l;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lrb/l;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lrb/l;->c:Lrb/l;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrb/l;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lrb/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "should not have varargs or parameters with default values"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, "second parameter must be of type KProperty<*> or its supertype"

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lga/e;)Z
    .locals 5

    .line 1
    iget v0, p0, Lrb/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ly9/u;->S()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getValueParameters(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ly9/r0;

    .line 37
    .line 38
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lbb/e;->a(Ly9/r0;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v0, v0, Ly9/r0;->j:Llb/w;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 55
    :goto_2
    return p1

    .line 56
    :pswitch_0
    invoke-virtual {p1}, Ly9/u;->S()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ly9/r0;

    .line 66
    .line 67
    sget-object v0, Ls9/n;->d:Ls9/m;

    .line 68
    .line 69
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v0, Ls9/o;->R:Lua/b;

    .line 80
    .line 81
    invoke-static {v1, v0}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    sget-object v1, Llb/h0;->b:Lu0/j;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v1, Llb/h0;->c:Llb/h0;

    .line 95
    .line 96
    new-instance v2, Llb/f0;

    .line 97
    .line 98
    invoke-interface {v0}, Lv9/h;->t()Llb/k0;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v3}, Llb/k0;->m()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, "getParameters(...)"

    .line 107
    .line 108
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v3}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const-string v4, "single(...)"

    .line 116
    .line 117
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    check-cast v3, Lv9/q0;

    .line 121
    .line 122
    invoke-direct {v2, v3}, Llb/f0;-><init>(Lv9/q0;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v1, v0, v2}, Llb/c;->s(Llb/h0;Lv9/e;Ljava/util/List;)Llb/a0;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_3
    const/4 v1, 0x0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    check-cast p1, Ly9/s0;

    .line 137
    .line 138
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v2, "getType(...)"

    .line 143
    .line 144
    invoke-static {p1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v1}, Llb/v0;->g(Llb/w;Z)Llb/x0;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object v1, Lmb/d;->a:Lmb/l;

    .line 152
    .line 153
    invoke-virtual {v1, v0, p1}, Lmb/l;->b(Llb/w;Llb/w;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :cond_4
    return v1

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lga/e;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lrb/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp9/l;->p(Lrb/e;Lga/e;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-static {p0, p1}, Lp9/l;->p(Lrb/e;Lga/e;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
