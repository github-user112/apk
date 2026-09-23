.class public Lc/x;
.super Lc/v;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public T(Lc/p0;Lc/p0;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 1

    .line 1
    const-string v0, "statusBarStyle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "navigationBarStyle"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "window"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "view"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p3, p1}, Li2/c;->K(Landroid/view/Window;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lc/w;->p(Landroid/view/Window;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p3}, Lc/w;->w(Landroid/view/Window;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, La2/d;

    .line 38
    .line 39
    invoke-direct {p1, p4}, La2/d;-><init>(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 p4, 0x23

    .line 45
    .line 46
    if-lt p2, p4, :cond_0

    .line 47
    .line 48
    new-instance p2, Le4/v1;

    .line 49
    .line 50
    const/4 p4, 0x1

    .line 51
    invoke-direct {p2, p3, p1, p4}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 p4, 0x1e

    .line 56
    .line 57
    if-lt p2, p4, :cond_1

    .line 58
    .line 59
    new-instance p2, Le4/s1;

    .line 60
    .line 61
    const/4 p4, 0x1

    .line 62
    invoke-direct {p2, p3, p1, p4}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/16 p4, 0x1a

    .line 67
    .line 68
    if-lt p2, p4, :cond_2

    .line 69
    .line 70
    new-instance p2, Le4/u1;

    .line 71
    .line 72
    const/4 p4, 0x0

    .line 73
    invoke-direct {p2, p3, p1, p4}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 p4, 0x17

    .line 78
    .line 79
    if-lt p2, p4, :cond_3

    .line 80
    .line 81
    new-instance p2, Le4/t1;

    .line 82
    .line 83
    const/4 p4, 0x0

    .line 84
    invoke-direct {p2, p3, p1, p4}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    new-instance p2, Le4/s1;

    .line 89
    .line 90
    const/4 p4, 0x0

    .line 91
    invoke-direct {p2, p3, p1, p4}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    xor-int/lit8 p1, p5, 0x1

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lm9/e0;->A0(Z)V

    .line 97
    .line 98
    .line 99
    xor-int/lit8 p1, p6, 0x1

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Lm9/e0;->z0(Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
