.class public final Lc/s;
.super Li9/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public T(Lc/p0;Lc/p0;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    const-string p5, "statusBarStyle"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    const/high16 p1, 0x4000000

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroid/view/Window;->addFlags(I)V

    .line 28
    .line 29
    .line 30
    const/high16 p1, 0x8000000

    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroid/view/Window;->addFlags(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
