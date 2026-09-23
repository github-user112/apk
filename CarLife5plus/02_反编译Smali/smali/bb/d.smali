.class public final Lbb/d;
.super Lub/k;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg9/x;Lf9/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbb/d;->b:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbb/d;->c:Ljava/io/Serializable;

    iput-object p2, p0, Lbb/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lbb/d;->b:I

    iput-object p1, p0, Lbb/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbb/d;->c:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lbb/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    check-cast p1, Lv9/c;

    .line 8
    .line 9
    const-string v0, "current"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v0, Lg9/x;

    .line 17
    .line 18
    iget-object v1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lbb/d;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lf9/k;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lbb/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, [Z

    .line 9
    .line 10
    iget-object v1, p0, Lbb/d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lf9/k;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    aput-boolean v1, v0, v2

    .line 29
    .line 30
    :cond_0
    aget-boolean p1, v0, v2

    .line 31
    .line 32
    xor-int/2addr p1, v1

    .line 33
    return p1

    .line 34
    :pswitch_0
    check-cast p1, Lv9/e;

    .line 35
    .line 36
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 37
    .line 38
    check-cast v0, Lg9/x;

    .line 39
    .line 40
    const-string v1, "javaClassDescriptor"

    .line 41
    .line 42
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lbb/d;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, v1}, Li9/a;->U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v1, Lu9/p;->b:Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    sget-object p1, Lu9/k;->a:Lu9/k;

    .line 62
    .line 63
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lu9/p;->d:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    sget-object p1, Lu9/k;->b:Lu9/k;

    .line 75
    .line 76
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lu9/p;->c:Ljava/util/LinkedHashSet;

    .line 80
    .line 81
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    sget-object p1, Lu9/k;->c:Lu9/k;

    .line 88
    .line 89
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget-object v1, Lu9/p;->a:Ljava/util/LinkedHashSet;

    .line 93
    .line 94
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    sget-object p1, Lu9/k;->e:Lu9/k;

    .line 101
    .line 102
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 103
    .line 104
    :cond_4
    :goto_0
    iget-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 105
    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    const/4 p1, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 p1, 0x0

    .line 111
    :goto_1
    return p1

    .line 112
    :pswitch_1
    check-cast p1, Lv9/c;

    .line 113
    .line 114
    const-string v0, "current"

    .line 115
    .line 116
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 120
    .line 121
    check-cast p1, Lg9/x;

    .line 122
    .line 123
    iget-object p1, p1, Lg9/x;->b:Ljava/lang/Object;

    .line 124
    .line 125
    if-nez p1, :cond_6

    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    const/4 p1, 0x0

    .line 130
    :goto_2
    return p1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lbb/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, [Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-boolean v0, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 19
    .line 20
    check-cast v0, Lg9/x;

    .line 21
    .line 22
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lu9/k;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-object v0, Lu9/k;->d:Lu9/k;

    .line 29
    .line 30
    :cond_0
    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Lbb/d;->c:Ljava/io/Serializable;

    .line 32
    .line 33
    check-cast v0, Lg9/x;

    .line 34
    .line 35
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lv9/c;

    .line 38
    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
