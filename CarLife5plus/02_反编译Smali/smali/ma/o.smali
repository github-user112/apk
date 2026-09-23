.class public final Lma/o;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lma/o;

.field public static final c:Lma/o;

.field public static final d:Lma/o;

.field public static final e:Lma/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lma/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lma/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lma/o;->b:Lma/o;

    .line 8
    .line 9
    new-instance v0, Lma/o;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lma/o;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lma/o;->c:Lma/o;

    .line 16
    .line 17
    new-instance v0, Lma/o;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lma/o;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lma/o;->d:Lma/o;

    .line 24
    .line 25
    new-instance v0, Lma/o;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lma/o;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lma/o;->e:Lma/o;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lma/o;->a:I

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
    iget v0, p0, Lma/o;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "it"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lma/p;

    .line 11
    .line 12
    const-string v0, "$this$function"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "Spliterator"

    .line 18
    .line 19
    const-string v3, "java/util/"

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lma/e;

    .line 27
    .line 28
    sget-object v4, Lma/m;->b:Lma/e;

    .line 29
    .line 30
    aput-object v4, v3, v2

    .line 31
    .line 32
    aput-object v4, v3, v1

    .line 33
    .line 34
    invoke-virtual {p1, v0, v3}, Lma/p;->c(Ljava/lang/String;[Lma/e;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    return-object p1

    .line 40
    :pswitch_0
    check-cast p1, Llb/x0;

    .line 41
    .line 42
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Llb/k0;->k()Lv9/h;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v3, Lu9/d;->f:Lua/c;

    .line 60
    .line 61
    iget-object v4, v3, Lua/c;->a:Lua/d;

    .line 62
    .line 63
    invoke-virtual {v4}, Lua/d;->f()Lua/e;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v0, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-static {p1}, Lbb/e;->c(Lv9/l;)Lua/c;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    return-object p1

    .line 90
    :pswitch_1
    check-cast p1, Llb/x0;

    .line 91
    .line 92
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    instance-of p1, p1, Lja/h;

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :pswitch_2
    check-cast p1, Lv9/c;

    .line 103
    .line 104
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Lv9/b;->p()Llb/w;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :pswitch_3
    check-cast p1, Lv9/c;

    .line 116
    .line 117
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Lv9/b;->a0()Ly9/v;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ly9/v;->getType()Llb/w;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
