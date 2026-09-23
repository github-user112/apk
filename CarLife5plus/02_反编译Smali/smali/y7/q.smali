.class public final synthetic Ly7/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/n;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lf9/n;Ljava/lang/String;Lf1/b1;Lf1/h1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ly7/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/q;->b:Lf9/n;

    iput-object p2, p0, Ly7/q;->c:Ljava/lang/String;

    iput-object p3, p0, Ly7/q;->d:Lf1/b1;

    iput-object p4, p0, Ly7/q;->e:Lf1/h1;

    return-void
.end method

.method public synthetic constructor <init>(Lf9/n;Ljava/lang/String;Lf1/h1;Lf1/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ly7/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/q;->b:Lf9/n;

    iput-object p2, p0, Ly7/q;->c:Ljava/lang/String;

    iput-object p3, p0, Ly7/q;->e:Lf1/h1;

    iput-object p4, p0, Ly7/q;->d:Lf1/b1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ly7/q;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    iget-object v3, p0, Ly7/q;->e:Lf1/h1;

    .line 8
    .line 9
    iget-object v4, p0, Ly7/q;->d:Lf1/b1;

    .line 10
    .line 11
    iget-object v5, p0, Ly7/q;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Ly7/q;->b:Lf9/n;

    .line 14
    .line 15
    check-cast p1, Lj8/k0;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 24
    .line 25
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget v0, Ly7/u;->c:I

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v6, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v5, v0, p1}, Lb8/f;->a(Ljava/lang/String;IZ)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :pswitch_0
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 80
    .line 81
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    sget v0, Ly7/u;->c:I

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v6, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v3}, Lf1/h1;->f()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v5, v0, p1}, Lb8/f;->a(Ljava/lang/String;IZ)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
