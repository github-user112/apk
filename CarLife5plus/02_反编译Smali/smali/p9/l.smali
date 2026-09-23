.class public abstract Lp9/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static a:Le2/f;


# direct methods
.method public static a(Landroid/widget/EdgeEffect;FFLn3/c;)F
    .locals 8

    .line 1
    sget v0, Lx/a0;->a:F

    .line 2
    .line 3
    const v0, 0x43c10b3d

    .line 4
    .line 5
    .line 6
    invoke-interface {p3}, Ln3/c;->a()F

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    mul-float p3, p3, v0

    .line 11
    .line 12
    const/high16 v0, 0x43200000    # 160.0f

    .line 13
    .line 14
    mul-float p3, p3, v0

    .line 15
    .line 16
    const v0, 0x3f570a3d    # 0.84f

    .line 17
    .line 18
    .line 19
    mul-float p3, p3, v0

    .line 20
    .line 21
    float-to-double v0, p3

    .line 22
    const p3, 0x3eb33333    # 0.35f

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    mul-float v2, v2, p3

    .line 30
    .line 31
    float-to-double v2, v2

    .line 32
    sget p3, Lx/a0;->a:F

    .line 33
    .line 34
    float-to-double v4, p3

    .line 35
    mul-double v4, v4, v0

    .line 36
    .line 37
    div-double/2addr v2, v4

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    sget-wide v2, Lx/a0;->b:D

    .line 43
    .line 44
    sget-wide v6, Lx/a0;->c:D

    .line 45
    .line 46
    div-double/2addr v2, v6

    .line 47
    mul-double v2, v2, v0

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    mul-double v0, v0, v4

    .line 54
    .line 55
    double-to-float p3, v0

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    const/16 v2, 0x1f

    .line 60
    .line 61
    if-lt v0, v2, :cond_0

    .line 62
    .line 63
    invoke-static {p0}, Lx/k;->b(Landroid/widget/EdgeEffect;)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v3, 0x0

    .line 69
    :goto_0
    mul-float v3, v3, p2

    .line 70
    .line 71
    cmpg-float p2, p3, v3

    .line 72
    .line 73
    if-gtz p2, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Li9/a;->N(F)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-lt v0, v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 82
    .line 83
    .line 84
    return p1

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return p1

    .line 95
    :cond_3
    return v1
.end method

.method public static final b([Ljava/lang/Object;IILs8/g;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "["

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int v2, p1, v1

    .line 26
    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    if-ne v2, p3, :cond_1

    .line 30
    .line 31
    const-string v2, "(this Collection)"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "toString(...)"

    .line 53
    .line 54
    invoke-static {p0, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public static c(Ljava/lang/Appendable;Ljava/lang/Object;Lf9/k;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    .line 23
    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    check-cast p1, Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Character;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static e([Lx3/d;[Lx3/d;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    array-length v1, p0

    .line 8
    array-length v2, p1

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_4

    .line 15
    .line 16
    aget-object v2, p0, v1

    .line 17
    .line 18
    iget-char v3, v2, Lx3/d;->a:C

    .line 19
    .line 20
    aget-object v4, p1, v1

    .line 21
    .line 22
    iget-char v5, v4, Lx3/d;->a:C

    .line 23
    .line 24
    if-ne v3, v5, :cond_3

    .line 25
    .line 26
    iget-object v2, v2, Lx3/d;->b:[F

    .line 27
    .line 28
    array-length v2, v2

    .line 29
    iget-object v3, v4, Lx3/d;->b:[F

    .line 30
    .line 31
    array-length v3, v3

    .line 32
    if-eq v2, v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v0

    .line 39
    :cond_4
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_5
    :goto_2
    return v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v4, 0x17

    .line 24
    .line 25
    if-lt v0, v4, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lu3/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    const/4 v5, 0x0

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_2
    if-nez v2, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    array-length v6, v2

    .line 51
    if-gtz v6, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    aget-object v2, v2, v5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    return v3

    .line 58
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v7, 0x1

    .line 67
    if-ne v3, v1, :cond_a

    .line 68
    .line 69
    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_a

    .line 74
    .line 75
    const/16 v3, 0x1d

    .line 76
    .line 77
    if-lt v0, v3, :cond_9

    .line 78
    .line 79
    invoke-static {p0}, Lu3/g;->b(Landroid/content/Context;)Landroid/app/AppOpsManager;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    invoke-virtual {v0, p1, v3, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :goto_3
    if-eqz v2, :cond_7

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    invoke-static {p0}, Lu3/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-nez v0, :cond_8

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    invoke-virtual {v0, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    goto :goto_4

    .line 110
    :cond_9
    if-lt v0, v4, :cond_b

    .line 111
    .line 112
    invoke-static {p0}, Lu3/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/app/AppOpsManager;

    .line 117
    .line 118
    invoke-static {p0, p1, v2}, Lu3/a;->b(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    goto :goto_4

    .line 123
    :cond_a
    if-lt v0, v4, :cond_b

    .line 124
    .line 125
    invoke-static {p0}, Lu3/a;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Landroid/app/AppOpsManager;

    .line 130
    .line 131
    invoke-static {p0, p1, v2}, Lu3/a;->b(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    :cond_b
    :goto_4
    move v2, v7

    .line 136
    :goto_5
    if-nez v2, :cond_c

    .line 137
    .line 138
    :goto_6
    return v5

    .line 139
    :cond_c
    const/4 p0, -0x2

    .line 140
    return p0
.end method

.method public static final g(Lq2/l;)Lo0/c;
    .locals 13

    .line 1
    new-instance v2, Ln0/a;

    .line 2
    .line 3
    invoke-direct {v2}, Ln0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lac/y0;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x6

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v3, Ln0/a;

    .line 12
    .line 13
    const-string v4, "addFilter"

    .line 14
    .line 15
    const-string v5, "addFilter$foundation_release(Lkotlin/jvm/functions/Function1;)V"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-direct/range {v0 .. v8}, Lac/y0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    new-instance v1, La8/q;

    .line 22
    .line 23
    const/16 v3, 0x1c

    .line 24
    .line 25
    invoke-direct {v1, v3, v2}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, La8/q;

    .line 29
    .line 30
    const/16 v4, 0x1d

    .line 31
    .line 32
    invoke-direct {v3, v4, v1, v0}, La8/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lr0/c;->a:Lr0/c;

    .line 36
    .line 37
    invoke-static {p0, v0, v3}, Lq2/f;->y(Lq2/l;Ljava/lang/Object;Lf9/k;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Ls/d0;

    .line 41
    .line 42
    invoke-direct {p0}, Ls/d0;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v2, Ln0/a;->a:Ls/d0;

    .line 46
    .line 47
    iget-object v1, v0, Ls/d0;->a:[Ljava/lang/Object;

    .line 48
    .line 49
    iget v0, v0, Ls/d0;->b:I

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x1

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v8, v5

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x1

    .line 57
    :goto_0
    sget-object v9, Lo0/f;->b:Lo0/f;

    .line 58
    .line 59
    if-ge v6, v0, :cond_6

    .line 60
    .line 61
    aget-object v10, v1, v6

    .line 62
    .line 63
    check-cast v10, Lo0/b;

    .line 64
    .line 65
    if-eqz v7, :cond_0

    .line 66
    .line 67
    if-eq v10, v9, :cond_5

    .line 68
    .line 69
    :cond_0
    if-ne v10, v9, :cond_1

    .line 70
    .line 71
    if-ne v8, v9, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    if-ne v10, v9, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iget-object v7, v2, Ln0/a;->b:Ls/d0;

    .line 78
    .line 79
    iget-object v9, v7, Ls/d0;->a:[Ljava/lang/Object;

    .line 80
    .line 81
    iget v7, v7, Ls/d0;->b:I

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    :goto_1
    if-ge v11, v7, :cond_4

    .line 85
    .line 86
    aget-object v12, v9, v11

    .line 87
    .line 88
    check-cast v12, Lf9/k;

    .line 89
    .line 90
    invoke-interface {v12, v10}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    check-cast v12, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_3

    .line 101
    .line 102
    :goto_2
    const/4 v7, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    :goto_3
    invoke-virtual {p0, v10}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object v8, v10

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {p0}, Ls/d0;->g()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    iget-object v0, p0, Ls/d0;->a:[Ljava/lang/Object;

    .line 123
    .line 124
    iget v1, p0, Ls/d0;->b:I

    .line 125
    .line 126
    sub-int/2addr v1, v4

    .line 127
    aget-object v5, v0, v1

    .line 128
    .line 129
    :goto_5
    check-cast v5, Lo0/b;

    .line 130
    .line 131
    if-ne v5, v9, :cond_8

    .line 132
    .line 133
    iget v0, p0, Ls/d0;->b:I

    .line 134
    .line 135
    sub-int/2addr v0, v4

    .line 136
    invoke-virtual {p0, v0}, Ls/d0;->j(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_8
    new-instance v0, Lo0/c;

    .line 140
    .line 141
    iget-object v1, p0, Ls/d0;->c:Lh1/b;

    .line 142
    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_9
    new-instance v1, Lh1/b;

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    invoke-direct {v1, v2, p0}, Lh1/b;-><init>(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, p0, Ls/d0;->c:Lh1/b;

    .line 153
    .line 154
    :goto_6
    invoke-direct {v0, v1}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    return-object v0
.end method

.method public static h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    if-nez p0, :cond_1

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final i(Lx1/c;FF)Z
    .locals 2

    .line 1
    iget v0, p0, Lx1/c;->a:F

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->c:F

    .line 4
    .line 5
    cmpg-float v1, p1, v1

    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    cmpg-float p1, v0, p1

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lx1/c;->b:F

    .line 14
    .line 15
    iget p0, p0, Lx1/c;->d:F

    .line 16
    .line 17
    cmpg-float p0, p2, p0

    .line 18
    .line 19
    if-gtz p0, :cond_0

    .line 20
    .line 21
    cmpg-float p0, p1, p2

    .line 22
    .line 23
    if-gtz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static j([FI)[F
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array p1, p1, [F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public static final k(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "annotationClass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "methods"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, La8/g0;

    .line 12
    .line 13
    const/16 v1, 0x16

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    new-instance v0, La8/f0;

    .line 23
    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    invoke-direct {v0, v1, p0, p1}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Ljava/lang/Class;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p0, v1, v2

    .line 42
    .line 43
    new-instance v2, Lq9/d;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    move-object v7, p2

    .line 48
    invoke-direct/range {v2 .. v7}, Lq9/d;-><init>(Ljava/lang/Class;Ljava/util/Map;Lr8/o;Lr8/o;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance"

    .line 56
    .line 57
    invoke-static {p0, p1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public static l(Ljava/lang/String;)[Lx3/d;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-ge v4, v6, :cond_f

    .line 16
    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/16 v7, 0x45

    .line 22
    .line 23
    const/16 v8, 0x65

    .line 24
    .line 25
    if-ge v4, v6, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v9, v6, -0x41

    .line 32
    .line 33
    add-int/lit8 v10, v6, -0x5a

    .line 34
    .line 35
    mul-int v10, v10, v9

    .line 36
    .line 37
    if-lez v10, :cond_0

    .line 38
    .line 39
    add-int/lit8 v9, v6, -0x61

    .line 40
    .line 41
    add-int/lit8 v10, v6, -0x7a

    .line 42
    .line 43
    mul-int v10, v10, v9

    .line 44
    .line 45
    if-gtz v10, :cond_1

    .line 46
    .line 47
    :cond_0
    if-eq v6, v8, :cond_1

    .line 48
    .line 49
    if-eq v6, v7, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_e

    .line 68
    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/16 v9, 0x7a

    .line 74
    .line 75
    if-eq v6, v9, :cond_d

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/16 v9, 0x5a

    .line 82
    .line 83
    if-ne v6, v9, :cond_3

    .line 84
    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    new-array v6, v6, [F

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/4 v10, 0x1

    .line 98
    const/4 v11, 0x0

    .line 99
    :goto_3
    if-ge v10, v9, :cond_c

    .line 100
    .line 101
    move v12, v10

    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v14, 0x0

    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-ge v12, v3, :cond_9

    .line 112
    .line 113
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const/16 v2, 0x20

    .line 118
    .line 119
    if-eq v3, v2, :cond_7

    .line 120
    .line 121
    if-eq v3, v7, :cond_6

    .line 122
    .line 123
    if-eq v3, v8, :cond_6

    .line 124
    .line 125
    packed-switch v3, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :pswitch_0
    if-nez v14, :cond_4

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    const/4 v14, 0x1

    .line 133
    goto :goto_7

    .line 134
    :cond_4
    :goto_5
    const/4 v13, 0x0

    .line 135
    const/4 v15, 0x1

    .line 136
    const/16 v16, 0x1

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :pswitch_1
    if-eq v12, v10, :cond_5

    .line 140
    .line 141
    if-nez v13, :cond_5

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_5
    :goto_6
    const/4 v13, 0x0

    .line 145
    goto :goto_7

    .line 146
    :cond_6
    const/4 v13, 0x1

    .line 147
    goto :goto_7

    .line 148
    :cond_7
    :pswitch_2
    const/4 v13, 0x0

    .line 149
    const/4 v15, 0x1

    .line 150
    :goto_7
    if-eqz v15, :cond_8

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    goto :goto_4

    .line 157
    :cond_9
    :goto_8
    if-ge v10, v12, :cond_a

    .line 158
    .line 159
    add-int/lit8 v2, v11, 0x1

    .line 160
    .line 161
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    aput v3, v6, v11

    .line 170
    .line 171
    move v11, v2

    .line 172
    goto :goto_9

    .line 173
    :catch_0
    move-exception v0

    .line 174
    goto :goto_b

    .line 175
    :cond_a
    :goto_9
    if-eqz v16, :cond_b

    .line 176
    .line 177
    move v10, v12

    .line 178
    :goto_a
    const/4 v2, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_b
    add-int/lit8 v10, v12, 0x1

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_c
    invoke-static {v6, v11}, Lp9/l;->j([FI)[F

    .line 184
    .line 185
    .line 186
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    move-object v3, v2

    .line 188
    const/4 v2, 0x0

    .line 189
    goto :goto_d

    .line 190
    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 191
    .line 192
    const-string v2, "error in parsing \""

    .line 193
    .line 194
    const-string v3, "\""

    .line 195
    .line 196
    invoke-static {v2, v5, v3}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_d
    :goto_c
    new-array v3, v2, [F

    .line 205
    .line 206
    :goto_d
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    new-instance v2, Lx3/d;

    .line 211
    .line 212
    invoke-direct {v2, v5, v3}, Lx3/d;-><init>(C[F)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_e
    add-int/lit8 v2, v4, 0x1

    .line 219
    .line 220
    move v5, v4

    .line 221
    move v4, v2

    .line 222
    const/4 v2, 0x0

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_f
    sub-int/2addr v4, v5

    .line 226
    const/4 v2, 0x1

    .line 227
    if-ne v4, v2, :cond_10

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-ge v5, v2, :cond_10

    .line 234
    .line 235
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    const/4 v2, 0x0

    .line 240
    new-array v3, v2, [F

    .line 241
    .line 242
    new-instance v4, Lx3/d;

    .line 243
    .line 244
    invoke-direct {v4, v0, v3}, Lx3/d;-><init>(C[F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_e

    .line 251
    :cond_10
    const/4 v2, 0x0

    .line 252
    :goto_e
    new-array v0, v2, [Lx3/d;

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, [Lx3/d;

    .line 259
    .line 260
    return-object v0

    .line 261
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m([Lx3/d;)[Lx3/d;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Lx3/d;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Lx3/d;

    .line 9
    .line 10
    aget-object v3, p0, v1

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lx3/d;-><init>(Lx3/d;)V

    .line 13
    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method public static final n(JZIF)J
    .locals 0

    .line 1
    if-nez p2, :cond_2

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    if-ne p3, p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x4

    .line 8
    if-ne p3, p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p2, 0x5

    .line 12
    if-ne p3, p2, :cond_3

    .line 13
    .line 14
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Ln3/a;->d(J)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-static {p0, p1}, Ln3/a;->h(J)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    const p2, 0x7fffffff

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-static {p0, p1}, Ln3/a;->j(J)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-ne p3, p2, :cond_4

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_4
    invoke-static {p4}, Ll0/p0;->k(F)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-static {p0, p1}, Ln3/a;->j(J)I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    invoke-static {p3, p4, p2}, Li9/a;->n(III)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_2
    invoke-static {p0, p1}, Ln3/a;->g(J)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p1, p2, p1, p0}, Lc7/a;->q(IIII)J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    return-wide p0
.end method

.method public static o(Lf1/s;)Lz/h;
    .locals 4

    .line 1
    sget v0, Lu/h;->a:F

    .line 2
    .line 3
    sget-object v0, Lr2/i1;->h:Lf1/w2;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ln3/c;

    .line 10
    .line 11
    invoke-interface {v0}, Ln3/c;->a()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Lf1/s;->c(F)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v1, Lkb/a;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lkb/a;-><init>(Ln3/c;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lv/s;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lv/s;-><init>(Lkb/a;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast v2, Lv/s;

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-ne v1, v3, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance v1, Lz/h;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lz/h;-><init>(Lv/s;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    check-cast v1, Lz/h;

    .line 65
    .line 66
    return-object v1
.end method

.method public static p(Lrb/e;Lga/e;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lrb/e;->b(Lga/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lrb/e;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static final q(Lv9/e;)Z
    .locals 1

    .line 1
    sget-object v0, Ls9/d;->a:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lxa/d;->l(Lv9/k;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Ls9/d;->a:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-static {p0}, Lbb/e;->f(Lv9/h;)Lua/b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lua/b;->e()Lua/b;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-static {v0, p0}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static final r([Ljava/lang/Object;II)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge p1, p2, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aput-object v0, p0, p1

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public static s(Ls5/b;IILs5/f;)Ls5/b;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-lez v1, :cond_11

    .line 10
    .line 11
    if-lez v2, :cond_11

    .line 12
    .line 13
    new-instance v4, Ls5/b;

    .line 14
    .line 15
    invoke-direct {v4, v1, v2}, Ls5/b;-><init>(II)V

    .line 16
    .line 17
    .line 18
    mul-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    new-array v5, v1, [F

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-ge v7, v2, :cond_10

    .line 24
    .line 25
    int-to-float v8, v7

    .line 26
    const/high16 v9, 0x3f000000    # 0.5f

    .line 27
    .line 28
    add-float/2addr v8, v9

    .line 29
    const/4 v10, 0x0

    .line 30
    :goto_1
    if-ge v10, v1, :cond_0

    .line 31
    .line 32
    div-int/lit8 v11, v10, 0x2

    .line 33
    .line 34
    int-to-float v11, v11

    .line 35
    add-float/2addr v11, v9

    .line 36
    aput v11, v5, v10

    .line 37
    .line 38
    add-int/lit8 v11, v10, 0x1

    .line 39
    .line 40
    aput v8, v5, v11

    .line 41
    .line 42
    add-int/lit8 v10, v10, 0x2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget v8, v3, Ls5/f;->a:F

    .line 46
    .line 47
    iget v9, v3, Ls5/f;->b:F

    .line 48
    .line 49
    iget v10, v3, Ls5/f;->c:F

    .line 50
    .line 51
    iget v11, v3, Ls5/f;->d:F

    .line 52
    .line 53
    iget v12, v3, Ls5/f;->e:F

    .line 54
    .line 55
    iget v13, v3, Ls5/f;->f:F

    .line 56
    .line 57
    iget v14, v3, Ls5/f;->g:F

    .line 58
    .line 59
    iget v15, v3, Ls5/f;->h:F

    .line 60
    .line 61
    iget v6, v3, Ls5/f;->i:F

    .line 62
    .line 63
    add-int/lit8 v2, v1, -0x1

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_2
    if-ge v3, v2, :cond_1

    .line 67
    .line 68
    aget v16, v5, v3

    .line 69
    .line 70
    add-int/lit8 v17, v3, 0x1

    .line 71
    .line 72
    aget v18, v5, v17

    .line 73
    .line 74
    mul-float v19, v10, v16

    .line 75
    .line 76
    mul-float v20, v13, v18

    .line 77
    .line 78
    add-float v20, v20, v19

    .line 79
    .line 80
    add-float v20, v20, v6

    .line 81
    .line 82
    mul-float v19, v8, v16

    .line 83
    .line 84
    mul-float v21, v11, v18

    .line 85
    .line 86
    add-float v21, v21, v19

    .line 87
    .line 88
    add-float v21, v21, v14

    .line 89
    .line 90
    div-float v21, v21, v20

    .line 91
    .line 92
    aput v21, v5, v3

    .line 93
    .line 94
    mul-float v16, v16, v9

    .line 95
    .line 96
    mul-float v18, v18, v12

    .line 97
    .line 98
    add-float v18, v18, v16

    .line 99
    .line 100
    add-float v18, v18, v15

    .line 101
    .line 102
    div-float v18, v18, v20

    .line 103
    .line 104
    aput v18, v5, v17

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x2

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    iget v3, v0, Ls5/b;->a:I

    .line 110
    .line 111
    iget v6, v0, Ls5/b;->b:I

    .line 112
    .line 113
    const/4 v8, 0x1

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x1

    .line 116
    :goto_3
    const/4 v11, 0x0

    .line 117
    const/4 v12, -0x1

    .line 118
    if-ge v9, v2, :cond_7

    .line 119
    .line 120
    if-eqz v10, :cond_7

    .line 121
    .line 122
    aget v10, v5, v9

    .line 123
    .line 124
    float-to-int v10, v10

    .line 125
    add-int/lit8 v13, v9, 0x1

    .line 126
    .line 127
    aget v14, v5, v13

    .line 128
    .line 129
    float-to-int v14, v14

    .line 130
    if-lt v10, v12, :cond_6

    .line 131
    .line 132
    if-gt v10, v3, :cond_6

    .line 133
    .line 134
    if-lt v14, v12, :cond_6

    .line 135
    .line 136
    if-gt v14, v6, :cond_6

    .line 137
    .line 138
    if-ne v10, v12, :cond_2

    .line 139
    .line 140
    aput v11, v5, v9

    .line 141
    .line 142
    :goto_4
    const/4 v10, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_2
    if-ne v10, v3, :cond_3

    .line 145
    .line 146
    add-int/lit8 v10, v3, -0x1

    .line 147
    .line 148
    int-to-float v10, v10

    .line 149
    aput v10, v5, v9

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_3
    const/4 v10, 0x0

    .line 153
    :goto_5
    if-ne v14, v12, :cond_4

    .line 154
    .line 155
    aput v11, v5, v13

    .line 156
    .line 157
    :goto_6
    const/4 v10, 0x1

    .line 158
    goto :goto_7

    .line 159
    :cond_4
    if-ne v14, v6, :cond_5

    .line 160
    .line 161
    add-int/lit8 v10, v6, -0x1

    .line 162
    .line 163
    int-to-float v10, v10

    .line 164
    aput v10, v5, v13

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_5
    :goto_7
    add-int/lit8 v9, v9, 0x2

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 171
    .line 172
    throw v0

    .line 173
    :cond_7
    add-int/lit8 v2, v1, -0x2

    .line 174
    .line 175
    const/4 v9, 0x1

    .line 176
    :goto_8
    if-ltz v2, :cond_d

    .line 177
    .line 178
    if-eqz v9, :cond_d

    .line 179
    .line 180
    aget v9, v5, v2

    .line 181
    .line 182
    float-to-int v9, v9

    .line 183
    add-int/lit8 v10, v2, 0x1

    .line 184
    .line 185
    aget v13, v5, v10

    .line 186
    .line 187
    float-to-int v13, v13

    .line 188
    if-lt v9, v12, :cond_c

    .line 189
    .line 190
    if-gt v9, v3, :cond_c

    .line 191
    .line 192
    if-lt v13, v12, :cond_c

    .line 193
    .line 194
    if-gt v13, v6, :cond_c

    .line 195
    .line 196
    if-ne v9, v12, :cond_8

    .line 197
    .line 198
    aput v11, v5, v2

    .line 199
    .line 200
    :goto_9
    const/4 v9, 0x1

    .line 201
    goto :goto_a

    .line 202
    :cond_8
    if-ne v9, v3, :cond_9

    .line 203
    .line 204
    add-int/lit8 v9, v3, -0x1

    .line 205
    .line 206
    int-to-float v9, v9

    .line 207
    aput v9, v5, v2

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    const/4 v9, 0x0

    .line 211
    :goto_a
    if-ne v13, v12, :cond_a

    .line 212
    .line 213
    aput v11, v5, v10

    .line 214
    .line 215
    :goto_b
    const/4 v9, 0x1

    .line 216
    goto :goto_c

    .line 217
    :cond_a
    if-ne v13, v6, :cond_b

    .line 218
    .line 219
    add-int/lit8 v9, v6, -0x1

    .line 220
    .line 221
    int-to-float v9, v9

    .line 222
    aput v9, v5, v10

    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_b
    :goto_c
    add-int/lit8 v2, v2, -0x2

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 229
    .line 230
    throw v0

    .line 231
    :cond_d
    const/4 v2, 0x0

    .line 232
    :goto_d
    if-ge v2, v1, :cond_f

    .line 233
    .line 234
    :try_start_0
    aget v3, v5, v2

    .line 235
    .line 236
    float-to-int v3, v3

    .line 237
    add-int/lit8 v6, v2, 0x1

    .line 238
    .line 239
    aget v6, v5, v6

    .line 240
    .line 241
    float-to-int v6, v6

    .line 242
    invoke-virtual {v0, v3, v6}, Ls5/b;->b(II)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_e

    .line 247
    .line 248
    div-int/lit8 v3, v2, 0x2

    .line 249
    .line 250
    invoke-virtual {v4, v3, v7}, Ls5/b;->f(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    :cond_e
    add-int/lit8 v2, v2, 0x2

    .line 254
    .line 255
    goto :goto_d

    .line 256
    :catch_0
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 257
    .line 258
    throw v0

    .line 259
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 260
    .line 261
    move/from16 v2, p2

    .line 262
    .line 263
    move-object/from16 v3, p3

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_10
    return-object v4

    .line 268
    :cond_11
    sget-object v0, Lm5/i;->c:Lm5/i;

    .line 269
    .line 270
    throw v0
.end method

.method public static final t(F)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "NaN"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    cmpg-float p0, p0, v0

    .line 18
    .line 19
    if-gez p0, :cond_1

    .line 20
    .line 21
    const-string p0, "-Infinity"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "Infinity"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/high16 v1, 0x41200000    # 10.0f

    .line 34
    .line 35
    float-to-double v1, v1

    .line 36
    int-to-double v3, v0

    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    double-to-float v1, v1

    .line 42
    mul-float p0, p0, v1

    .line 43
    .line 44
    float-to-int v2, p0

    .line 45
    int-to-float v3, v2

    .line 46
    sub-float/2addr p0, v3

    .line 47
    const/high16 v3, 0x3f000000    # 0.5f

    .line 48
    .line 49
    cmpl-float p0, p0, v3

    .line 50
    .line 51
    if-ltz p0, :cond_3

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    :cond_3
    int-to-float p0, v2

    .line 56
    div-float/2addr p0, v1

    .line 57
    if-lez v0, :cond_4

    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_4
    float-to-int p0, p0

    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static u(Lf9/k;)Lwa/g;
    .locals 1

    .line 1
    const-string v0, "changeOptions"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lwa/k;

    .line 7
    .line 8
    invoke-direct {v0}, Lwa/k;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    iput-boolean p0, v0, Lwa/k;->a:Z

    .line 16
    .line 17
    new-instance p0, Lwa/g;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lwa/g;-><init>(Lwa/k;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public abstract d()Ljava/lang/String;
.end method
