.class public Le4/s1;
.super Lm9/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic i:I

.field public final j:Landroid/view/Window;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/Window;La2/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le4/s1;->j:Landroid/view/Window;

    .line 10
    .line 11
    iput-object p2, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {p1}, Le4/o1;->d(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p1, p0, Le4/s1;->j:Landroid/view/Window;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A0(Z)V
    .locals 2

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const/16 v0, 0x2000

    .line 8
    .line 9
    iget-object v1, p0, Le4/s1;->j:Landroid/view/Window;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Le4/s1;->K0(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/view/WindowInsetsController;

    .line 21
    .line 22
    invoke-static {p1}, Le4/o1;->g(Landroid/view/WindowInsetsController;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Le4/s1;->L0(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/view/WindowInsetsController;

    .line 34
    .line 35
    invoke-static {p1}, Le4/o1;->k(Landroid/view/WindowInsetsController;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public B0()V
    .locals 3

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x1538b9a6

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x800

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Le4/s1;->L0(I)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x1000

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Le4/s1;->K0(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/view/WindowInsetsController;

    .line 39
    .line 40
    invoke-static {v0}, Le4/o1;->q(Landroid/view/WindowInsetsController;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const v1, 0x1538b9a6

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x800

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Le4/s1;->L0(I)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x1000

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Le4/s1;->K0(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final C0(I)V
    .locals 4

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/WindowInsetsController;

    .line 9
    .line 10
    and-int/lit8 p1, p1, -0x9

    .line 11
    .line 12
    invoke-static {v0, p1}, La7/c;->r(Landroid/view/WindowInsetsController;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x1

    .line 18
    :goto_0
    const/16 v2, 0x200

    .line 19
    .line 20
    if-gt v1, v2, :cond_4

    .line 21
    .line 22
    and-int v2, p1, v1

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eq v1, v0, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v2, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, La2/d;

    .line 40
    .line 41
    iget-object v2, v2, La2/d;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, La2/d;

    .line 44
    .line 45
    invoke-virtual {v2}, La2/d;->x()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0, v2}, Le4/s1;->L0(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v2, 0x4

    .line 54
    invoke-virtual {p0, v2}, Le4/s1;->L0(I)V

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x400

    .line 58
    .line 59
    iget-object v3, p0, Le4/s1;->j:Landroid/view/Window;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final K0(I)V
    .locals 2

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    or-int/2addr p1, v1

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    or-int/2addr p1, v1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final L0(I)V
    .locals 2

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    not-int p1, p1

    .line 17
    and-int/2addr p1, v1

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    not-int p1, p1

    .line 33
    and-int/2addr p1, v1

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n0(I)V
    .locals 3

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/WindowInsetsController;

    .line 9
    .line 10
    and-int/lit8 p1, p1, -0x9

    .line 11
    .line 12
    invoke-static {v0, p1}, La7/c;->B(Landroid/view/WindowInsetsController;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x1

    .line 18
    :goto_0
    const/16 v2, 0x200

    .line 19
    .line 20
    if-gt v1, v2, :cond_4

    .line 21
    .line 22
    and-int v2, p1, v1

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eq v1, v0, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v2, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, La2/d;

    .line 40
    .line 41
    iget-object v2, v2, La2/d;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, La2/d;

    .line 44
    .line 45
    invoke-virtual {v2}, La2/d;->m()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0, v2}, Le4/s1;->K0(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v2, 0x4

    .line 54
    invoke-virtual {p0, v2}, Le4/s1;->K0(I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public z0(Z)V
    .locals 2

    .line 1
    iget v0, p0, Le4/s1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Le4/s1;->j:Landroid/view/Window;

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Le4/s1;->K0(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/view/WindowInsetsController;

    .line 21
    .line 22
    invoke-static {p1}, Le4/o1;->m(Landroid/view/WindowInsetsController;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Le4/s1;->L0(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Le4/s1;->k:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/view/WindowInsetsController;

    .line 34
    .line 35
    invoke-static {p1}, Le4/o1;->o(Landroid/view/WindowInsetsController;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
