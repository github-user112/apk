.class public final Lp9/b;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lp9/b;

.field public static final c:Lp9/b;

.field public static final d:Lp9/b;

.field public static final e:Lp9/b;

.field public static final f:Lp9/b;

.field public static final g:Lp9/b;

.field public static final h:Lp9/b;

.field public static final i:Lp9/b;

.field public static final j:Lp9/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp9/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp9/b;->b:Lp9/b;

    .line 8
    .line 9
    new-instance v0, Lp9/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lp9/b;->c:Lp9/b;

    .line 16
    .line 17
    new-instance v0, Lp9/b;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lp9/b;->d:Lp9/b;

    .line 24
    .line 25
    new-instance v0, Lp9/b;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lp9/b;->e:Lp9/b;

    .line 32
    .line 33
    new-instance v0, Lp9/b;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lp9/b;->f:Lp9/b;

    .line 40
    .line 41
    new-instance v0, Lp9/b;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lp9/b;->g:Lp9/b;

    .line 48
    .line 49
    new-instance v0, Lp9/b;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lp9/b;->h:Lp9/b;

    .line 56
    .line 57
    new-instance v0, Lp9/b;

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lp9/b;->i:Lp9/b;

    .line 64
    .line 65
    new-instance v0, Lp9/b;

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lp9/b;-><init>(I)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lp9/b;->j:Lp9/b;

    .line 73
    .line 74
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp9/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lp9/b;->a:I

    .line 2
    .line 3
    const-string v1, "it"

    .line 4
    .line 5
    const-string v2, " | "

    .line 6
    .line 7
    const-string v3, "descriptor"

    .line 8
    .line 9
    const-string v4, "getType(...)"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Ly9/r0;

    .line 25
    .line 26
    sget-object v0, Lp9/z1;->a:Lwa/g;

    .line 27
    .line 28
    check-cast p1, Ly9/s0;

    .line 29
    .line 30
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_1
    check-cast p1, Ly9/r0;

    .line 43
    .line 44
    sget-object v0, Lp9/z1;->a:Lwa/g;

    .line 45
    .line 46
    check-cast p1, Ly9/s0;

    .line 47
    .line 48
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :pswitch_2
    check-cast p1, Lv9/t;

    .line 61
    .line 62
    sget-object v0, Lp9/h0;->a:Lg9/x;

    .line 63
    .line 64
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lwa/g;->e:Lwa/g;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lwa/g;->u(Lv9/k;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lp9/a2;->c(Lv9/t;)Lp9/l;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lp9/l;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_3
    check-cast p1, Lv9/k0;

    .line 101
    .line 102
    sget-object v0, Lp9/h0;->a:Lg9/x;

    .line 103
    .line 104
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lwa/g;->e:Lwa/g;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Lwa/g;->u(Lv9/k;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lp9/q;->j()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :pswitch_4
    check-cast p1, Ljava/lang/Class;

    .line 141
    .line 142
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :pswitch_5
    check-cast p1, Ljava/lang/reflect/Method;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "getReturnType(...)"

    .line 157
    .line 158
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lba/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    :pswitch_6
    check-cast p1, Ljava/lang/Class;

    .line 167
    .line 168
    sget-object v0, Lp9/c;->a:Lu0/j;

    .line 169
    .line 170
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lp9/v0;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Lp9/v0;-><init>(Ljava/lang/Class;)V

    .line 176
    .line 177
    .line 178
    return-object v0

    .line 179
    :pswitch_7
    check-cast p1, Ljava/lang/Class;

    .line 180
    .line 181
    sget-object v0, Lp9/c;->a:Lu0/j;

    .line 182
    .line 183
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lp9/d0;

    .line 187
    .line 188
    invoke-direct {v0, p1}, Lp9/d0;-><init>(Ljava/lang/Class;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
