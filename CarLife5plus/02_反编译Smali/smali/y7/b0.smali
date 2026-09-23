.class public final synthetic Ly7/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Lz7/v1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p4, p0, Ly7/b0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/b0;->b:Lf9/k;

    .line 4
    .line 5
    iput-object p3, p0, Ly7/b0;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ly7/b0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ly7/b0;->c:Lf1/b1;

    .line 6
    .line 7
    iget-object v3, p0, Ly7/b0;->b:Lf9/k;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lz7/a2;

    .line 13
    .line 14
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const-string v4, "\u6253\u5f00"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v4, "\u5173\u95ed"

    .line 30
    .line 31
    :goto_0
    const-string v5, "WiFi"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Lz7/p1;

    .line 38
    .line 39
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v5, v2}, Lz7/p1;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    const-string v2, "Wifi"

    .line 53
    .line 54
    const-string v6, "WiFi\u5f00\u5173"

    .line 55
    .line 56
    invoke-direct {v0, v2, v6, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v3, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_0
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 76
    .line 77
    const-string v0, "\u94fe\u63a5\u4e0d\u80fd\u4e3a\u7a7a"

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Lz7/a2;

    .line 85
    .line 86
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 91
    .line 92
    const-string v5, "\u8bf7\u6c42 "

    .line 93
    .line 94
    invoke-static {v5, v4}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-instance v5, Lz7/x0;

    .line 99
    .line 100
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v5, v2}, Lz7/x0;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v2, "NetWork"

    .line 110
    .line 111
    const-string v6, "\u7f51\u7edc\u8bf7\u6c42"

    .line 112
    .line 113
    invoke-direct {v0, v2, v6, v4, v5}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v3, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :goto_1
    return-object v1

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
