.class public final synthetic La8/l0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lp1/p;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, La8/l0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/l0;->b:Lp1/p;

    .line 4
    .line 5
    iput-object p2, p0, La8/l0;->c:Lf1/b1;

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
    .locals 9

    .line 1
    iget v0, p0, La8/l0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, La8/l0;->c:Lf1/b1;

    .line 6
    .line 7
    iget-object v3, p0, La8/l0;->b:Lp1/p;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 13
    .line 14
    invoke-static {v3}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/16 v4, 0xa

    .line 23
    .line 24
    invoke-static {v0, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v3}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Ll8/d;->c()Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "<get-sharedPreferences>(...)"

    .line 60
    .line 61
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v4, "CONNECT_USB_DEVICE_IGNORE"

    .line 69
    .line 70
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    .line 76
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-interface {v2, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :pswitch_0
    invoke-virtual {v3}, Lp1/p;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lp1/v;

    .line 87
    .line 88
    invoke-virtual {v0}, Lp1/v;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_1

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-virtual {v0}, Lp1/v;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lz7/b2;

    .line 101
    .line 102
    iget v3, v3, Lz7/b2;->a:I

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lp1/v;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Lp1/v;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lz7/b2;

    .line 119
    .line 120
    iget v4, v4, Lz7/b2;->a:I

    .line 121
    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-gez v5, :cond_2

    .line 131
    .line 132
    move-object v3, v4

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move-object v0, v3

    .line 135
    :goto_2
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    const/4 v0, -0x1

    .line 143
    :goto_3
    add-int/lit8 v4, v0, 0x1

    .line 144
    .line 145
    new-instance v3, Lz7/b2;

    .line 146
    .line 147
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 148
    .line 149
    const/4 v8, 0x1

    .line 150
    const-string v5, ""

    .line 151
    .line 152
    move-object v7, v6

    .line 153
    invoke-direct/range {v3 .. v8}, Lz7/b2;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v2, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-object v1

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
