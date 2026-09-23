.class public final Lv/a1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/y0;
.implements Lv9/m;
.implements Lr3/y;
.implements Lz4/c;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lv/a1;->a:Ljava/lang/Object;

    return-void

    .line 4
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lv/a1;->a:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object p1

    iput-object p1, p0, Lv/a1;->a:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/a1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ly9/c0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Ly9/c0;->e:Lua/c;

    .line 11
    .line 12
    const-string v2, "package-fragment"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 22
    .line 23
    const-string v2, "fqName"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, v0, Lwa/g;->a:Lwa/k;

    .line 55
    .line 56
    invoke-virtual {v1}, Lwa/k;->l()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string v1, " in "

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ly9/c0;->C0()Lv9/y;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, p1, p2, v1}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 76
    .line 77
    return-object p1
.end method

.method public G(Ly9/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lwa/g;->Y(Lv9/q0;Ljava/lang/StringBuilder;Z)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object p1
.end method

.method public H(Ljava/lang/Object;Ly9/a0;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p2, p1, v1}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object p1
.end method

.method public K(Ly9/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p2, p1, v1}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Ly9/f;->f:Lea/o;

    .line 15
    .line 16
    const-string v2, "getVisibility(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p2}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lwa/g;->I(Lv9/w;Ljava/lang/StringBuilder;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "typealias"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " "

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p1, p2, v1}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ly9/f;->q()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, p2, v1, v2}, Lwa/g;->a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1, p2}, Lwa/g;->y(Lv9/i;Ljava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    const-string v1, " = "

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    check-cast p1, Ljb/u;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljb/u;->E0()Llb/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 75
    .line 76
    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lba/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public b(Ln3/k;JLn3/m;J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf9/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ln3/j;

    .line 10
    .line 11
    iget-wide v0, v0, Ln3/j;->a:J

    .line 12
    .line 13
    iget v2, p1, Ln3/k;->a:I

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    shr-long v4, v0, v3

    .line 18
    .line 19
    long-to-int v5, v4

    .line 20
    add-int/2addr v2, v5

    .line 21
    shr-long v4, p5, v3

    .line 22
    .line 23
    long-to-int v5, v4

    .line 24
    shr-long v6, p2, v3

    .line 25
    .line 26
    long-to-int v4, v6

    .line 27
    sget-object v6, Ln3/m;->a:Ln3/m;

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-ne p4, v6, :cond_0

    .line 31
    .line 32
    const/4 p4, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p4, 0x0

    .line 35
    :goto_0
    invoke-static {v2, v5, v4, p4}, Lp9/p1;->h(IIIZ)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    iget p1, p1, Ln3/k;->b:I

    .line 40
    .line 41
    const-wide v4, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v0, v4

    .line 47
    long-to-int v1, v0

    .line 48
    add-int/2addr p1, v1

    .line 49
    and-long/2addr p5, v4

    .line 50
    long-to-int p6, p5

    .line 51
    and-long/2addr p2, v4

    .line 52
    long-to-int p3, p2

    .line 53
    invoke-static {p1, p6, p3, v7}, Lp9/p1;->h(IIIZ)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-long p2, p4

    .line 58
    shl-long/2addr p2, v3

    .line 59
    int-to-long p4, p1

    .line 60
    and-long/2addr p4, v4

    .line 61
    or-long/2addr p2, p4

    .line 62
    return-wide p2
.end method

.method public c(Ly9/k0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "setter"

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lv/a1;->k(Ly9/g0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    return-object p1
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v1, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .locals 3

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x6

    .line 37
    const-string v2, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p1, v1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_1
    iget-object p2, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public f(Lva/d;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lva/d;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Lva/d;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lva/y;->h:[I

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    neg-int v0, v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 25
    .line 26
    aget v2, v1, v2

    .line 27
    .line 28
    iget-object v3, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/util/Stack;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_5

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lva/d;

    .line 43
    .line 44
    invoke-virtual {v4}, Lva/d;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lt v4, v2, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    aget v0, v1, v0

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lva/d;

    .line 58
    .line 59
    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lva/d;

    .line 70
    .line 71
    invoke-virtual {v2}, Lva/d;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ge v2, v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lva/d;

    .line 82
    .line 83
    new-instance v4, Lva/y;

    .line 84
    .line 85
    invoke-direct {v4, v2, v1}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 86
    .line 87
    .line 88
    move-object v1, v4

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance v0, Lva/y;

    .line 91
    .line 92
    invoke-direct {v0, v1, p1}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    sget-object p1, Lva/y;->h:[I

    .line 102
    .line 103
    iget v1, v0, Lva/y;->b:I

    .line 104
    .line 105
    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-gez v1, :cond_3

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    neg-int v1, v1

    .line 114
    add-int/lit8 v1, v1, -0x1

    .line 115
    .line 116
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    aget p1, p1, v1

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lva/d;

    .line 125
    .line 126
    invoke-virtual {v1}, Lva/d;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-ge v1, p1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lva/d;

    .line 137
    .line 138
    new-instance v1, Lva/y;

    .line 139
    .line 140
    invoke-direct {v1, p1, v0}, Lva/y;-><init>(Lva/d;Lva/d;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v1

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_5
    :goto_2
    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    instance-of v0, p1, Lva/y;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    check-cast p1, Lva/y;

    .line 158
    .line 159
    iget-object v0, p1, Lva/y;->c:Lva/d;

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lv/a1;->f(Lva/d;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p1, Lva/y;->d:Lva/d;

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lv/a1;->f(Lva/d;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    add-int/lit8 v2, v2, 0x31

    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    .line 190
    .line 191
    const-string v2, "Has a new type of ByteString been created? Found "

    .line 192
    .line 193
    invoke-static {v1, v2, p1}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0
.end method

.method public g(Lv/p;Lv/p;Lv/p;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lba/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lba/a;->g(Lv/p;Lv/p;Lv/p;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public h(Ly9/z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v1, p2

    .line 2
    check-cast v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    iget-object p2, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p2, Lwa/g;

    .line 7
    .line 8
    iget-object v0, p2, Lwa/g;->a:Lwa/k;

    .line 9
    .line 10
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lv9/f;->d:Lv9/f;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p2}, Lwa/g;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v7, "companion object"

    .line 29
    .line 30
    const-string v8, "getVisibility(...)"

    .line 31
    .line 32
    if-nez v3, :cond_12

    .line 33
    .line 34
    invoke-interface {p1}, Lv9/e;->w0()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v9, "getContextReceivers(...)"

    .line 39
    .line 40
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1, v3}, Lwa/g;->A(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1, p1, v6}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 47
    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Lv9/e;->d()Lea/o;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v3, v1}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v9, Lv9/f;->b:Lv9/f;

    .line 66
    .line 67
    if-ne v3, v9, :cond_2

    .line 68
    .line 69
    invoke-interface {p1}, Lv9/e;->h()Lv9/x;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v9, Lv9/x;->e:Lv9/x;

    .line 74
    .line 75
    if-eq v3, v9, :cond_4

    .line 76
    .line 77
    :cond_2
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lv9/f;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Lv9/e;->h()Lv9/x;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    sget-object v9, Lv9/x;->b:Lv9/x;

    .line 92
    .line 93
    if-eq v3, v9, :cond_4

    .line 94
    .line 95
    :cond_3
    invoke-interface {p1}, Lv9/e;->h()Lv9/x;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v9, "getModality(...)"

    .line 100
    .line 101
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lwa/g;->t(Lv9/w;)Lv9/x;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {p2, v3, v1, v9}, Lwa/g;->J(Lv9/x;Ljava/lang/StringBuilder;Lv9/x;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {p2, p1, v1}, Lwa/g;->I(Lv9/w;Ljava/lang/StringBuilder;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lwa/g;->o()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    sget-object v9, Lwa/h;->h:Lwa/h;

    .line 119
    .line 120
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    invoke-interface {p1}, Lv9/i;->I()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_5
    const/4 v3, 0x0

    .line 135
    :goto_1
    const-string v9, "inner"

    .line 136
    .line 137
    invoke-virtual {p2, v1, v3, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lwa/g;->o()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    sget-object v9, Lwa/h;->j:Lwa/h;

    .line 145
    .line 146
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    invoke-interface {p1}, Lv9/e;->z0()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    const/4 v3, 0x1

    .line 159
    goto :goto_2

    .line 160
    :cond_6
    const/4 v3, 0x0

    .line 161
    :goto_2
    const-string v9, "data"

    .line 162
    .line 163
    invoke-virtual {p2, v1, v3, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Lwa/g;->o()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    sget-object v9, Lwa/h;->k:Lwa/h;

    .line 171
    .line 172
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    invoke-interface {p1}, Lv9/e;->g()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    const/4 v3, 0x0

    .line 187
    :goto_3
    const-string v9, "inline"

    .line 188
    .line 189
    invoke-virtual {p2, v1, v3, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Lwa/g;->o()Ljava/util/Set;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    sget-object v9, Lwa/h;->q:Lwa/h;

    .line 197
    .line 198
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_8

    .line 203
    .line 204
    invoke-interface {p1}, Lv9/e;->i()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_8

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    goto :goto_4

    .line 212
    :cond_8
    const/4 v3, 0x0

    .line 213
    :goto_4
    const-string v9, "value"

    .line 214
    .line 215
    invoke-virtual {p2, v1, v3, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Lwa/g;->o()Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    sget-object v9, Lwa/h;->p:Lwa/h;

    .line 223
    .line 224
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_9

    .line 229
    .line 230
    invoke-interface {p1}, Lv9/e;->A()Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_9

    .line 235
    .line 236
    const/4 v3, 0x1

    .line 237
    goto :goto_5

    .line 238
    :cond_9
    const/4 v3, 0x0

    .line 239
    :goto_5
    const-string v9, "fun"

    .line 240
    .line 241
    invoke-virtual {p2, v1, v3, v9}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    instance-of v3, p1, Lv9/p0;

    .line 245
    .line 246
    if-eqz v3, :cond_a

    .line 247
    .line 248
    const-string v3, "typealias"

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_a
    invoke-interface {p1}, Lv9/e;->u()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    move-object v3, v7

    .line 258
    goto :goto_6

    .line 259
    :cond_b
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_11

    .line 268
    .line 269
    if-eq v3, v5, :cond_10

    .line 270
    .line 271
    const/4 v9, 0x2

    .line 272
    if-eq v3, v9, :cond_f

    .line 273
    .line 274
    const/4 v9, 0x3

    .line 275
    if-eq v3, v9, :cond_e

    .line 276
    .line 277
    const/4 v9, 0x4

    .line 278
    if-eq v3, v9, :cond_d

    .line 279
    .line 280
    const/4 v9, 0x5

    .line 281
    if-ne v3, v9, :cond_c

    .line 282
    .line 283
    const-string v3, "object"

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_c
    new-instance p1, Lac/p;

    .line 287
    .line 288
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 289
    .line 290
    .line 291
    throw p1

    .line 292
    :cond_d
    const-string v3, "annotation class"

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_e
    const-string v3, "enum entry"

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_f
    const-string v3, "enum class"

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_10
    const-string v3, "interface"

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_11
    const-string v3, "class"

    .line 305
    .line 306
    :goto_6
    invoke-virtual {p2, v3}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    :cond_12
    invoke-static {p1}, Lxa/d;->l(Lv9/k;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_14

    .line 318
    .line 319
    invoke-virtual {p2}, Lwa/g;->p()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-nez v3, :cond_13

    .line 324
    .line 325
    invoke-static {v1}, Lwa/g;->U(Ljava/lang/StringBuilder;)V

    .line 326
    .line 327
    .line 328
    :cond_13
    invoke-virtual {p2, p1, v1, v5}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_14
    iget-object v3, v0, Lwa/k;->G:Lwa/j;

    .line 333
    .line 334
    sget-object v9, Lwa/k;->Y:[Lm9/u;

    .line 335
    .line 336
    const/16 v10, 0x1f

    .line 337
    .line 338
    aget-object v9, v9, v10

    .line 339
    .line 340
    invoke-virtual {v3, v0, v9}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    check-cast v3, Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    const-string v9, "getName(...)"

    .line 351
    .line 352
    if-eqz v3, :cond_16

    .line 353
    .line 354
    invoke-virtual {p2}, Lwa/g;->p()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_15

    .line 359
    .line 360
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    :cond_15
    invoke-static {v1}, Lwa/g;->U(Ljava/lang/StringBuilder;)V

    .line 364
    .line 365
    .line 366
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    if-eqz v3, :cond_16

    .line 371
    .line 372
    const-string v7, "of "

    .line 373
    .line 374
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-interface {v3}, Lv9/k;->getName()Lua/e;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2, v3, v4}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    :cond_16
    invoke-virtual {p2}, Lwa/g;->s()Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-nez v3, :cond_17

    .line 396
    .line 397
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    sget-object v7, Lua/g;->b:Lua/e;

    .line 402
    .line 403
    invoke-static {v3, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-nez v3, :cond_19

    .line 408
    .line 409
    :cond_17
    invoke-virtual {p2}, Lwa/g;->p()Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_18

    .line 414
    .line 415
    invoke-static {v1}, Lwa/g;->U(Ljava/lang/StringBuilder;)V

    .line 416
    .line 417
    .line 418
    :cond_18
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p2, v3, v5}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    :cond_19
    :goto_7
    if-eqz v2, :cond_1a

    .line 433
    .line 434
    goto/16 :goto_9

    .line 435
    .line 436
    :cond_1a
    invoke-interface {p1}, Lv9/e;->q()Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    const-string v2, "getDeclaredTypeParameters(...)"

    .line 441
    .line 442
    invoke-static {v7, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2, v1, v7, v4}, Lwa/g;->a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2, p1, v1}, Lwa/g;->y(Lv9/i;Ljava/lang/StringBuilder;)V

    .line 449
    .line 450
    .line 451
    invoke-interface {p1}, Lv9/e;->f()Lv9/f;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v2}, Lv9/f;->a()Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-nez v2, :cond_1b

    .line 460
    .line 461
    iget-object v2, v0, Lwa/k;->i:Lwa/j;

    .line 462
    .line 463
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 464
    .line 465
    const/4 v4, 0x7

    .line 466
    aget-object v3, v3, v4

    .line 467
    .line 468
    invoke-virtual {v2, v0, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    check-cast v2, Ljava/lang/Boolean;

    .line 473
    .line 474
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_1b

    .line 479
    .line 480
    invoke-interface {p1}, Lv9/e;->N()Ly9/i;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    if-eqz v2, :cond_1b

    .line 485
    .line 486
    const-string v3, " "

    .line 487
    .line 488
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p2, v1, v2, v6}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 492
    .line 493
    .line 494
    move-object v3, v2

    .line 495
    check-cast v3, Ly9/u;

    .line 496
    .line 497
    invoke-virtual {v3}, Ly9/u;->d()Lea/o;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-static {v4, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p2, v4, v1}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 505
    .line 506
    .line 507
    const-string v4, "constructor"

    .line 508
    .line 509
    invoke-virtual {p2, v4}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3}, Ly9/u;->S()Ljava/util/List;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    const-string v4, "getValueParameters(...)"

    .line 521
    .line 522
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v2}, Lv9/b;->D()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    invoke-virtual {p2, v1, v3, v2}, Lwa/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 530
    .line 531
    .line 532
    :cond_1b
    iget-object v2, v0, Lwa/k;->x:Lwa/j;

    .line 533
    .line 534
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 535
    .line 536
    const/16 v4, 0x16

    .line 537
    .line 538
    aget-object v3, v3, v4

    .line 539
    .line 540
    invoke-virtual {v2, v0, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/lang/Boolean;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_1c

    .line 551
    .line 552
    goto :goto_8

    .line 553
    :cond_1c
    invoke-interface {p1}, Lv9/e;->n()Llb/a0;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v0}, Ls9/i;->F(Llb/w;)Z

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    if-eqz v0, :cond_1d

    .line 562
    .line 563
    goto :goto_8

    .line 564
    :cond_1d
    invoke-interface {p1}, Lv9/h;->t()Llb/k0;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-interface {p1}, Llb/k0;->l()Ljava/util/Collection;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    const-string v0, "getSupertypes(...)"

    .line 573
    .line 574
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_1f

    .line 582
    .line 583
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-ne v0, v5, :cond_1e

    .line 588
    .line 589
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    check-cast v0, Llb/w;

    .line 598
    .line 599
    invoke-static {v0}, Ls9/i;->y(Llb/w;)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-eqz v0, :cond_1e

    .line 604
    .line 605
    goto :goto_8

    .line 606
    :cond_1e
    invoke-static {v1}, Lwa/g;->U(Ljava/lang/StringBuilder;)V

    .line 607
    .line 608
    .line 609
    const-string v0, ": "

    .line 610
    .line 611
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    move-object v0, p1

    .line 615
    check-cast v0, Ljava/lang/Iterable;

    .line 616
    .line 617
    new-instance v5, Lwa/f;

    .line 618
    .line 619
    const/4 p1, 0x1

    .line 620
    invoke-direct {v5, p2, p1}, Lwa/f;-><init>(Lwa/g;I)V

    .line 621
    .line 622
    .line 623
    const/16 v6, 0x3c

    .line 624
    .line 625
    const-string v2, ", "

    .line 626
    .line 627
    const/4 v3, 0x0

    .line 628
    const/4 v4, 0x0

    .line 629
    invoke-static/range {v0 .. v6}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 630
    .line 631
    .line 632
    :cond_1f
    :goto_8
    invoke-virtual {p2, v1, v7}, Lwa/g;->f0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 633
    .line 634
    .line 635
    :goto_9
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 636
    .line 637
    return-object p1
.end method

.method public i(Lv/p;Lv/p;Lv/p;)Lv/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lba/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lba/a;->i(Lv/p;Lv/p;Lv/p;)Lv/p;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public j(Lv9/t;Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwa/g;

    .line 4
    .line 5
    iget-object v1, v0, Lwa/g;->a:Lwa/k;

    .line 6
    .line 7
    iget-object v2, v0, Lwa/g;->a:Lwa/k;

    .line 8
    .line 9
    invoke-virtual {v0}, Lwa/g;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v4, "getTypeParameters(...)"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-nez v3, :cond_c

    .line 17
    .line 18
    iget-object v3, v2, Lwa/k;->g:Lwa/j;

    .line 19
    .line 20
    sget-object v6, Lwa/k;->Y:[Lm9/u;

    .line 21
    .line 22
    const/4 v7, 0x5

    .line 23
    aget-object v7, v6, v7

    .line 24
    .line 25
    invoke-virtual {v3, v2, v7}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_b

    .line 36
    .line 37
    invoke-interface {p1}, Lv9/b;->f0()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v7, "getContextReceiverParameters(...)"

    .line 42
    .line 43
    invoke-static {v3, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2, v3}, Lwa/g;->A(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, p2, p1, v3}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lv9/w;->d()Lea/o;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v7, "getVisibility(...)"

    .line 58
    .line 59
    invoke-static {v3, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, p2}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2, p1}, Lwa/g;->K(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v2, Lwa/k;->T:Lwa/j;

    .line 69
    .line 70
    const/16 v7, 0x2c

    .line 71
    .line 72
    aget-object v8, v6, v7

    .line 73
    .line 74
    invoke-virtual {v3, v2, v8}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0, p1, p2}, Lwa/g;->I(Lv9/w;Ljava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {v0, p2, p1}, Lwa/g;->Q(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v2, Lwa/k;->T:Lwa/j;

    .line 93
    .line 94
    aget-object v6, v6, v7

    .line 95
    .line 96
    invoke-virtual {v3, v2, v6}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const-string v6, "suspend"

    .line 107
    .line 108
    if-eqz v3, :cond_9

    .line 109
    .line 110
    invoke-interface {p1}, Lv9/t;->M()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/16 v7, 0x27

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const-string v9, "getOverriddenDescriptors(...)"

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-interface {p1}, Lv9/c;->m()Ljava/util/Collection;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    check-cast v3, Ljava/lang/Iterable;

    .line 129
    .line 130
    move-object v10, v3

    .line 131
    check-cast v10, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_3

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    check-cast v10, Lv9/t;

    .line 155
    .line 156
    invoke-interface {v10}, Lv9/t;->M()Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-eqz v10, :cond_2

    .line 161
    .line 162
    iget-object v3, v2, Lwa/k;->O:Lwa/j;

    .line 163
    .line 164
    sget-object v10, Lwa/k;->Y:[Lm9/u;

    .line 165
    .line 166
    aget-object v10, v10, v7

    .line 167
    .line 168
    invoke-virtual {v3, v2, v10}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_4

    .line 179
    .line 180
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 181
    goto :goto_1

    .line 182
    :cond_4
    const/4 v3, 0x0

    .line 183
    :goto_1
    invoke-interface {p1}, Lv9/t;->x0()Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_8

    .line 188
    .line 189
    invoke-interface {p1}, Lv9/c;->m()Ljava/util/Collection;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-static {v10, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    check-cast v10, Ljava/lang/Iterable;

    .line 197
    .line 198
    move-object v9, v10

    .line 199
    check-cast v9, Ljava/util/Collection;

    .line 200
    .line 201
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_7

    .line 217
    .line 218
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    check-cast v10, Lv9/t;

    .line 223
    .line 224
    invoke-interface {v10}, Lv9/t;->x0()Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_6

    .line 229
    .line 230
    iget-object v9, v2, Lwa/k;->O:Lwa/j;

    .line 231
    .line 232
    sget-object v10, Lwa/k;->Y:[Lm9/u;

    .line 233
    .line 234
    aget-object v7, v10, v7

    .line 235
    .line 236
    invoke-virtual {v9, v2, v7}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_8

    .line 247
    .line 248
    :cond_7
    :goto_2
    const/4 v8, 0x1

    .line 249
    :cond_8
    invoke-interface {p1}, Lv9/t;->L()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    const-string v7, "tailrec"

    .line 254
    .line 255
    invoke-virtual {v0, p2, v2, v7}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {p1}, Lv9/t;->o()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-virtual {v0, p2, v2, v6}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {p1}, Lv9/t;->g()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    const-string v6, "inline"

    .line 270
    .line 271
    invoke-virtual {v0, p2, v2, v6}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v2, "infix"

    .line 275
    .line 276
    invoke-virtual {v0, p2, v8, v2}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v2, "operator"

    .line 280
    .line 281
    invoke-virtual {v0, p2, v3, v2}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_9
    invoke-interface {p1}, Lv9/t;->o()Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {v0, p2, v2, v6}, Lwa/g;->L(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :goto_3
    invoke-virtual {v0, p2, p1}, Lwa/g;->H(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lwa/g;->s()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_b

    .line 300
    .line 301
    invoke-interface {p1}, Lv9/t;->k0()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_a

    .line 306
    .line 307
    const-string v2, "/*isHiddenToOvercomeSignatureClash*/ "

    .line 308
    .line 309
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    :cond_a
    invoke-interface {p1}, Lv9/t;->q0()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_b

    .line 317
    .line 318
    const-string v2, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    .line 319
    .line 320
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    :cond_b
    const-string v2, "fun"

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v2, " "

    .line 333
    .line 334
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-interface {p1}, Lv9/b;->getTypeParameters()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-static {v2, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, p2, v2, v5}, Lwa/g;->a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, p2, p1}, Lwa/g;->S(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 348
    .line 349
    .line 350
    :cond_c
    invoke-virtual {v0, p1, p2, v5}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 351
    .line 352
    .line 353
    invoke-interface {p1}, Lv9/b;->S()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const-string v3, "getValueParameters(...)"

    .line 358
    .line 359
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-interface {p1}, Lv9/b;->D()Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    invoke-virtual {v0, p2, v2, v3}, Lwa/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, p2, p1}, Lwa/g;->T(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 370
    .line 371
    .line 372
    invoke-interface {p1}, Lv9/b;->p()Llb/w;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    iget-object v3, v1, Lwa/k;->l:Lwa/j;

    .line 377
    .line 378
    sget-object v5, Lwa/k;->Y:[Lm9/u;

    .line 379
    .line 380
    const/16 v6, 0xa

    .line 381
    .line 382
    aget-object v6, v5, v6

    .line 383
    .line 384
    invoke-virtual {v3, v1, v6}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    check-cast v3, Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-nez v3, :cond_f

    .line 395
    .line 396
    iget-object v3, v1, Lwa/k;->k:Lwa/j;

    .line 397
    .line 398
    const/16 v6, 0x9

    .line 399
    .line 400
    aget-object v5, v5, v6

    .line 401
    .line 402
    invoke-virtual {v3, v1, v5}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    check-cast v1, Ljava/lang/Boolean;

    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_d

    .line 413
    .line 414
    if-eqz v2, :cond_d

    .line 415
    .line 416
    sget-object v1, Ls9/i;->e:Lua/e;

    .line 417
    .line 418
    sget-object v1, Ls9/o;->d:Lua/d;

    .line 419
    .line 420
    invoke-static {v2, v1}, Ls9/i;->E(Llb/w;Lua/d;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_f

    .line 425
    .line 426
    :cond_d
    const-string v1, ": "

    .line 427
    .line 428
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    if-nez v2, :cond_e

    .line 432
    .line 433
    const-string v1, "[NULL]"

    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_e
    invoke-virtual {v0, v2}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    :cond_f
    invoke-interface {p1}, Lv9/b;->getTypeParameters()Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-static {p1, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, p2, p1}, Lwa/g;->f0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 451
    .line 452
    .line 453
    return-void
.end method

.method public k(Ly9/g0;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwa/g;

    .line 4
    .line 5
    iget-object v1, v0, Lwa/g;->a:Lwa/k;

    .line 6
    .line 7
    iget-object v2, v1, Lwa/k;->H:Lwa/j;

    .line 8
    .line 9
    sget-object v3, Lwa/k;->Y:[Lm9/u;

    .line 10
    .line 11
    const/16 v4, 0x20

    .line 12
    .line 13
    aget-object v3, v3, v4

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lwa/p;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    if-eq v1, p3, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    if-ne v1, p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Lac/p;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2}, Lv/a1;->j(Lv9/t;Ljava/lang/StringBuilder;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {v0, p1, p2}, Lwa/g;->I(Lv9/w;Ljava/lang/StringBuilder;)V

    .line 45
    .line 46
    .line 47
    const-string v1, " for "

    .line 48
    .line 49
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ly9/g0;->C0()Lv9/k0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p3, "getCorrespondingProperty(...)"

    .line 61
    .line 62
    invoke-static {p1, p3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1, p2}, Lwa/g;->l(Lwa/g;Lv9/k0;Ljava/lang/StringBuilder;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public l(Ly9/i0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lwa/g;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Lwa/g;->l(Lwa/g;Lv9/k0;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    return-object p1
.end method

.method public m(Ly9/j0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "getter"

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lv/a1;->k(Ly9/g0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    return-object p1
.end method

.method public n(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 7

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lba/a;

    .line 5
    .line 6
    move-wide v2, p1

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-virtual/range {v1 .. v6}, Lba/a;->n(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public p(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 7

    .line 1
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lba/a;

    .line 5
    .line 6
    move-wide v2, p1

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-virtual/range {v1 .. v6}, Lba/a;->p(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public s(Ly9/x;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Ly9/x;->d:Lua/c;

    .line 11
    .line 12
    const-string v2, "package"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 22
    .line 23
    const-string v2, "fqName"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, v0, Lwa/g;->a:Lwa/k;

    .line 55
    .line 56
    invoke-virtual {v1}, Lwa/k;->l()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string v1, " in context of "

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Ly9/x;->c:Ly9/a0;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, p1, p2, v1}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object p1
.end method

.method public t(Ly9/r0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v0, p0, Lv/a1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwa/g;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1, p2, v1}, Lwa/g;->c0(Ly9/r0;ZLjava/lang/StringBuilder;Z)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object p1
.end method

.method public bridge synthetic v(Lv9/t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lv/a1;->j(Lv9/t;Ljava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 7
    .line 8
    return-object p1
.end method

.method public y(Ly9/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-boolean v1, v0, Ly9/i;->D:Z

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    check-cast v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    move-object/from16 v3, p0

    .line 10
    .line 11
    iget-object v4, v3, Lv/a1;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lwa/g;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v4, v2, v0, v5}, Lwa/g;->w(Ljava/lang/StringBuilder;Lw9/a;Lw9/d;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v4, Lwa/g;->a:Lwa/k;

    .line 23
    .line 24
    iget-object v6, v5, Lwa/k;->o:Lwa/j;

    .line 25
    .line 26
    sget-object v7, Lwa/k;->Y:[Lm9/u;

    .line 27
    .line 28
    const/16 v8, 0xd

    .line 29
    .line 30
    aget-object v8, v7, v8

    .line 31
    .line 32
    invoke-virtual {v6, v5, v8}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ly9/i;->z()Lv9/e;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {v6}, Lv9/e;->h()Lv9/x;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    sget-object v10, Lv9/x;->c:Lv9/x;

    .line 55
    .line 56
    if-eq v6, v10, :cond_1

    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Ly9/u;->d()Lea/o;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v10, "getVisibility(...)"

    .line 63
    .line 64
    invoke-static {v6, v10}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6, v2}, Lwa/g;->e0(Lea/o;Ljava/lang/StringBuilder;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v6, 0x0

    .line 76
    :goto_0
    invoke-virtual {v4, v2, v0}, Lwa/g;->H(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 77
    .line 78
    .line 79
    iget-object v10, v5, Lwa/k;->P:Lwa/j;

    .line 80
    .line 81
    const/16 v11, 0x28

    .line 82
    .line 83
    aget-object v11, v7, v11

    .line 84
    .line 85
    invoke-virtual {v10, v5, v11}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    check-cast v10, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_3

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const/4 v6, 0x0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 105
    :goto_2
    if-eqz v6, :cond_4

    .line 106
    .line 107
    const-string v10, "constructor"

    .line 108
    .line 109
    invoke-virtual {v4, v10}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {v0}, Ly9/i;->O0()Lv9/e;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const-string v11, "getContainingDeclaration(...)"

    .line 121
    .line 122
    invoke-static {v10, v11}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v11, v5, Lwa/k;->A:Lwa/j;

    .line 126
    .line 127
    const/16 v12, 0x19

    .line 128
    .line 129
    aget-object v13, v7, v12

    .line 130
    .line 131
    invoke-virtual {v11, v5, v13}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-eqz v11, :cond_6

    .line 142
    .line 143
    if-eqz v6, :cond_5

    .line 144
    .line 145
    const-string v6, " "

    .line 146
    .line 147
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-virtual {v4, v10, v2, v9}, Lwa/g;->N(Lv9/k;Ljava/lang/StringBuilder;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ly9/u;->getTypeParameters()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v4, v2, v6, v8}, Lwa/g;->a0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-virtual {v0}, Ly9/u;->S()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v8, "getValueParameters(...)"

    .line 165
    .line 166
    invoke-static {v6, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0}, Lv9/b;->D()Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    invoke-virtual {v4, v2, v6, v9}, Lwa/g;->d0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v6, v5, Lwa/k;->q:Lwa/j;

    .line 177
    .line 178
    const/16 v9, 0xf

    .line 179
    .line 180
    aget-object v7, v7, v9

    .line 181
    .line 182
    invoke-virtual {v6, v5, v7}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_9

    .line 193
    .line 194
    if-nez v1, :cond_9

    .line 195
    .line 196
    invoke-interface {v10}, Lv9/e;->N()Ly9/i;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_9

    .line 201
    .line 202
    check-cast v1, Ly9/u;

    .line 203
    .line 204
    invoke-virtual {v1}, Ly9/u;->S()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v1, v8}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance v13, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    move-object v7, v6

    .line 231
    check-cast v7, Ly9/r0;

    .line 232
    .line 233
    invoke-virtual {v7}, Ly9/r0;->D0()Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-nez v8, :cond_7

    .line 238
    .line 239
    iget-object v7, v7, Ly9/r0;->j:Llb/w;

    .line 240
    .line 241
    if-nez v7, :cond_7

    .line 242
    .line 243
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_9

    .line 252
    .line 253
    const-string v1, " : "

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, "this"

    .line 259
    .line 260
    invoke-virtual {v4, v1}, Lwa/g;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    sget-object v17, Lwa/d;->n:Lwa/d;

    .line 268
    .line 269
    const/16 v18, 0x18

    .line 270
    .line 271
    const-string v14, ", "

    .line 272
    .line 273
    const-string v15, "("

    .line 274
    .line 275
    const-string v16, ")"

    .line 276
    .line 277
    invoke-static/range {v13 .. v18}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :cond_9
    iget-object v1, v5, Lwa/k;->A:Lwa/j;

    .line 285
    .line 286
    sget-object v6, Lwa/k;->Y:[Lm9/u;

    .line 287
    .line 288
    aget-object v6, v6, v12

    .line 289
    .line 290
    invoke-virtual {v1, v5, v6}, Lwa/j;->a(Ljava/lang/Object;Lm9/u;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_a

    .line 301
    .line 302
    invoke-virtual {v0}, Ly9/u;->getTypeParameters()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v4, v2, v0}, Lwa/g;->f0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    :cond_a
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 310
    .line 311
    return-object v0
.end method

.method public z(Ly9/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ly9/m;->getName()Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 11
    .line 12
    return-object p1
.end method
