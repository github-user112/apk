.class public final Lz6/a;
.super Ly6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz6/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/d;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, La7/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz6/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Ly6/a;->d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 9
    .line 10
    const/16 p2, 0x1f

    .line 11
    .line 12
    const p3, 0x7fffffff

    .line 13
    .line 14
    .line 15
    const-string p5, "android.permission.ACCESS_FINE_LOCATION"

    .line 16
    .line 17
    if-lt p1, p2, :cond_0

    .line 18
    .line 19
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 20
    .line 21
    invoke-static {p4, p1, p3}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p4, p5, p3}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p4, p5, p3}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6
    .line 7
    const/16 v0, 0x1f

    .line 8
    .line 9
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    invoke-static {p2, v2}, Lm9/e0;->S(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p2, v1}, Lm9/e0;->S(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "Applying for background positioning permissions must include \"android.permission.ACCESS_FINE_LOCATION\""

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v3, -0x1

    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, -0x1

    .line 41
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-ge v0, v6, :cond_5

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ly6/a;

    .line 52
    .line 53
    invoke-virtual {v6}, Ly6/a;->n()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 58
    .line 59
    invoke-static {v7, v8}, Lm9/e0;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_2

    .line 64
    .line 65
    move v4, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v6}, Ly6/a;->n()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7, v1}, Lm9/e0;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    move v3, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v6}, Ly6/a;->n()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6, v2}, Lm9/e0;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    move v5, v0

    .line 90
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-eq v3, p1, :cond_7

    .line 94
    .line 95
    if-gt v3, v4, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "Please place the android.permission.ACCESS_BACKGROUND_LOCATION\" permission after the \"android.permission.ACCESS_FINE_LOCATION\" permission"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_7
    :goto_3
    if-eq v5, p1, :cond_9

    .line 107
    .line 108
    if-gt v5, v4, :cond_8

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    const-string p2, "Please place the \"android.permission.ACCESS_BACKGROUND_LOCATION\" permission after the \"android.permission.ACCESS_COARSE_LOCATION\" permission"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_9
    :goto_4
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, La/a;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x2

    .line 18
    new-array v4, v4, [Ly6/a;

    .line 19
    .line 20
    aput-object v0, v4, v2

    .line 21
    .line 22
    aput-object v3, v4, v1

    .line 23
    .line 24
    invoke-static {v4}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-array v1, v1, [Ly6/a;

    .line 34
    .line 35
    aput-object v0, v1, v2

    .line 36
    .line 37
    invoke-static {v1}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "location_group"

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly6/a;->A(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x96

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final s(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final u(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final v(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-static {}, La/a;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, v1}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1, v1}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    return v1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1, v1}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_2
    invoke-super {p0, p1}, Ly6/a;->v(Landroid/app/Activity;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method public final x(Landroid/content/Context;Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final y(Landroid/content/Context;Z)Z
    .locals 1

    .line 1
    invoke-static {}, La/a;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lw6/a;->b()Ly6/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1, p2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Ly6/a;->y(Landroid/content/Context;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method
