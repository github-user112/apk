.class public final La8/t0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:La8/t0;

.field public static final c:La8/t0;

.field public static final d:La8/t0;

.field public static final e:La8/t0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La8/t0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La8/t0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, La8/t0;->b:La8/t0;

    .line 8
    .line 9
    new-instance v0, La8/t0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, La8/t0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, La8/t0;->c:La8/t0;

    .line 16
    .line 17
    new-instance v0, La8/t0;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, La8/t0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, La8/t0;->d:La8/t0;

    .line 24
    .line 25
    new-instance v0, La8/t0;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, La8/t0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, La8/t0;->e:La8/t0;

    .line 32
    .line 33
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La8/t0;->a:I

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
    .locals 1

    .line 1
    iget v0, p0, La8/t0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lz7/v1;

    .line 7
    .line 8
    sget-object v0, Lz7/u1;->b:Lz7/u1;

    .line 9
    .line 10
    invoke-interface {p1}, Lz7/v1;->getType()Lz7/u1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Lz7/v1;

    .line 25
    .line 26
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 27
    .line 28
    invoke-interface {p1}, Lz7/v1;->getType()Lz7/u1;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_1
    check-cast p1, Lz7/v1;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Lm9/c;->k()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const-string p1, "Unknown"

    .line 62
    .line 63
    :goto_2
    return-object p1

    .line 64
    :pswitch_2
    check-cast p1, Lz7/v1;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lm9/c;->j()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :pswitch_3
    check-cast p1, Lz7/v1;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Lm9/c;->k()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const-string p1, "Unknown"

    .line 101
    .line 102
    :goto_3
    return-object p1

    .line 103
    :pswitch_4
    check-cast p1, Lz7/v1;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lm9/c;->j()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
