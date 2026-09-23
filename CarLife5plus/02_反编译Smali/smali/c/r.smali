.class public abstract Lc/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:I

.field public static final b:I

.field public static c:Lc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xe6

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lc/r;->a:I

    .line 10
    .line 11
    const/16 v0, 0x80

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lc/r;->b:I

    .line 20
    .line 21
    return-void
.end method

.method public static a(Lj/j;)V
    .locals 8

    .line 1
    new-instance v1, Lc/p0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v2, Lc/o0;->a:Lc/o0;

    .line 5
    .line 6
    invoke-direct {v1, v0, v0, v2}, Lc/p0;-><init>(IILf9/k;)V

    .line 7
    .line 8
    .line 9
    move-object v0, v2

    .line 10
    new-instance v2, Lc/p0;

    .line 11
    .line 12
    sget v3, Lc/r;->a:I

    .line 13
    .line 14
    sget v4, Lc/r;->b:I

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v0}, Lc/p0;-><init>(IILf9/k;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v3, "window.decorView"

    .line 28
    .line 29
    invoke-static {v4, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v5, "view.resources"

    .line 37
    .line 38
    invoke-static {v3, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v3}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v6, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v6}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sget-object v0, Lc/r;->c:Lc/s;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v5, 0x1e

    .line 75
    .line 76
    if-lt v0, v5, :cond_0

    .line 77
    .line 78
    new-instance v0, Lc/y;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/16 v5, 0x1d

    .line 85
    .line 86
    if-lt v0, v5, :cond_1

    .line 87
    .line 88
    new-instance v0, Lc/x;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/16 v5, 0x1c

    .line 95
    .line 96
    if-lt v0, v5, :cond_2

    .line 97
    .line 98
    new-instance v0, Lc/v;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const/16 v5, 0x1a

    .line 105
    .line 106
    if-lt v0, v5, :cond_3

    .line 107
    .line 108
    new-instance v0, Lc/u;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const/16 v5, 0x17

    .line 115
    .line 116
    if-lt v0, v5, :cond_4

    .line 117
    .line 118
    new-instance v0, Lc/t;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance v0, Lc/s;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lc/r;->c:Lc/s;

    .line 130
    .line 131
    :cond_5
    :goto_0
    move v5, v3

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v7, "window"

    .line 137
    .line 138
    invoke-static {v3, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v0 .. v6}, Li9/a;->T(Lc/p0;Lc/p0;Landroid/view/Window;Landroid/view/View;ZZ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p0, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Li9/a;->g(Landroid/view/Window;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
