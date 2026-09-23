.class public abstract Lm0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 14

    .line 1
    invoke-static/range {p4 .. p5}, Lb3/n0;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x17

    .line 17
    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1}, Lm0/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Ln0/a;->a()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    move-object v8, v5

    .line 52
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    new-instance v5, Lo0/a;

    .line 55
    .line 56
    invoke-direct {v5, v4}, Lo0/a;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    new-instance v6, Lm0/c;

    .line 68
    .line 69
    move-object v7, p1

    .line 70
    move/from16 v9, p2

    .line 71
    .line 72
    move-object/from16 v10, p3

    .line 73
    .line 74
    move-wide/from16 v11, p4

    .line 75
    .line 76
    invoke-direct/range {v6 .. v12}, Lm0/c;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;J)V

    .line 77
    .line 78
    .line 79
    new-instance v7, Lo0/d;

    .line 80
    .line 81
    invoke-direct {v7, v5, v13, v3, v6}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Ln0/a;->a:Ls/d0;

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Ln0/a;->a()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    return-void
.end method
