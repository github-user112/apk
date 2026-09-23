.class public abstract Lb8/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:J

.field public static b:I

.field public static c:J

.field public static d:Z

.field public static final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lb8/b;->e:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lz7/l0;

    .line 17
    .line 18
    iget v2, v1, Lz7/l0;->b:I

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    iget v1, v1, Lz7/l0;->c:I

    .line 27
    .line 28
    if-ne v1, p3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    check-cast v0, Lz7/l0;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean p0, v0, Lz7/l0;->d:Z

    .line 37
    .line 38
    iput-boolean p0, p1, Lg9/t;->a:Z

    .line 39
    .line 40
    sget-object p0, Lb8/o;->a:Lfc/c;

    .line 41
    .line 42
    new-instance p0, Lz7/l0;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget-boolean p1, p1, Lg9/t;->a:Z

    .line 49
    .line 50
    invoke-direct {p0, p2, p3, p1}, Lz7/l0;-><init>(IIZ)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lb8/o;->a(Lz7/q1;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public static final b(ILandroid/view/KeyEvent;)V
    .locals 5

    .line 1
    sget-object v0, Lz7/b2;->Companion:Lz7/x1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lz7/b2;->h:Ldc/l0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lz7/b2;

    .line 34
    .line 35
    iget-object v2, v2, Lz7/b2;->c:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v2, v1}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/16 v2, 0xa

    .line 44
    .line 45
    invoke-static {v1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lz7/a2;

    .line 67
    .line 68
    iget-object v2, v2, Lz7/a2;->d:Lz7/q1;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    instance-of v3, v2, Lz7/r0;

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    move-object v2, v1

    .line 116
    check-cast v2, Lz7/r0;

    .line 117
    .line 118
    iget v3, v2, Lz7/r0;->b:I

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v3, v4, :cond_4

    .line 125
    .line 126
    iget v2, v2, Lz7/r0;->c:I

    .line 127
    .line 128
    if-ne v2, p0, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    const/4 v1, 0x0

    .line 132
    :goto_3
    check-cast v1, Lz7/r0;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    sget-object v0, Lb8/o;->a:Lfc/c;

    .line 137
    .line 138
    new-instance v0, Lz7/r0;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-direct {v0, p1, p0}, Lz7/r0;-><init>(II)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lb8/o;->a(Lz7/q1;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return-void
.end method
