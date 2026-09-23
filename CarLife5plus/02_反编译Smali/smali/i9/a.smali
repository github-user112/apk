.class public abstract Li9/a;
.super Ljava/lang/Object;

# interfaces
.implements Li4/h;


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public static A()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final B(Lra/f;I)Lua/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lra/f;->b(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p0, p1}, Lra/f;->f(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v0, p0}, Lp9/p1;->r(Ljava/lang/String;Z)Lua/b;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static C(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, Li9/a;->z(Landroid/content/Context;[Ly6/a;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Li9/a;->D()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Li9/a;->A()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Li9/a;->y()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static D()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final E(Lra/f;I)Lua/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lua/e;->d(Ljava/lang/String;)Lua/e;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final F(Lv9/e;)Lia/d0;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lbb/e;->a:I

    .line 7
    .line 8
    invoke-interface {p0}, Lv9/e;->n()Llb/a0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Llb/w;->D0()Llb/k0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Llb/k0;->l()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Llb/w;

    .line 36
    .line 37
    invoke-static {v0}, Ls9/i;->y(Llb/w;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v2, Lv9/f;->a:Lv9/f;

    .line 52
    .line 53
    invoke-static {v0, v2}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    sget-object v2, Lv9/f;->c:Lv9/f;

    .line 60
    .line 61
    invoke-static {v0, v2}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    :cond_1
    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 68
    .line 69
    invoke-static {v0, p0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v0, Lv9/e;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v0, v1

    .line 76
    :goto_0
    if-nez v0, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    invoke-interface {v0}, Lv9/e;->O()Leb/o;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    instance-of v2, p0, Lia/d0;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    check-cast v1, Lia/d0;

    .line 89
    .line 90
    :cond_4
    if-nez v1, :cond_5

    .line 91
    .line 92
    invoke-static {v0}, Li9/a;->F(Lv9/e;)Lia/d0;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_5
    return-object v1
.end method

.method public static G([IIZ)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    if-ge v4, v2, :cond_0

    .line 9
    .line 10
    aget v6, v0, v4

    .line 11
    .line 12
    add-int/2addr v5, v6

    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v2, v0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_1
    add-int/lit8 v8, v2, -0x1

    .line 21
    .line 22
    if-ge v4, v8, :cond_6

    .line 23
    .line 24
    const/4 v9, 0x1

    .line 25
    shl-int v10, v9, v4

    .line 26
    .line 27
    or-int/2addr v7, v10

    .line 28
    const/4 v11, 0x1

    .line 29
    :goto_2
    aget v12, v0, v4

    .line 30
    .line 31
    if-ge v11, v12, :cond_5

    .line 32
    .line 33
    sub-int v12, v5, v11

    .line 34
    .line 35
    add-int/lit8 v13, v12, -0x1

    .line 36
    .line 37
    sub-int v14, v2, v4

    .line 38
    .line 39
    add-int/lit8 v15, v14, -0x2

    .line 40
    .line 41
    invoke-static {v13, v15}, Li9/a;->p(II)I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    add-int/lit8 v3, v14, -0x1

    .line 50
    .line 51
    sub-int v9, v12, v3

    .line 52
    .line 53
    if-lt v9, v3, :cond_1

    .line 54
    .line 55
    sub-int v3, v12, v14

    .line 56
    .line 57
    invoke-static {v3, v15}, Li9/a;->p(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    sub-int/2addr v13, v3

    .line 62
    :cond_1
    add-int/lit8 v3, v14, -0x1

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    if-le v3, v9, :cond_3

    .line 66
    .line 67
    sub-int v3, v12, v15

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    :goto_3
    if-le v3, v1, :cond_2

    .line 71
    .line 72
    sub-int v16, v12, v3

    .line 73
    .line 74
    const/16 v17, 0x1

    .line 75
    .line 76
    add-int/lit8 v9, v16, -0x1

    .line 77
    .line 78
    add-int/lit8 v0, v14, -0x3

    .line 79
    .line 80
    invoke-static {v9, v0}, Li9/a;->p(II)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v15, v0

    .line 85
    add-int/lit8 v3, v3, -0x1

    .line 86
    .line 87
    move-object/from16 v0, p0

    .line 88
    .line 89
    const/4 v9, 0x1

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    const/16 v17, 0x1

    .line 92
    .line 93
    sub-int v0, v8, v4

    .line 94
    .line 95
    mul-int v0, v0, v15

    .line 96
    .line 97
    sub-int/2addr v13, v0

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    const/16 v17, 0x1

    .line 100
    .line 101
    if-le v12, v1, :cond_4

    .line 102
    .line 103
    add-int/lit8 v13, v13, -0x1

    .line 104
    .line 105
    :cond_4
    :goto_4
    add-int/2addr v6, v13

    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 107
    .line 108
    not-int v0, v10

    .line 109
    and-int/2addr v7, v0

    .line 110
    const/4 v9, 0x1

    .line 111
    move-object/from16 v0, p0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    sub-int/2addr v5, v11

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    move-object/from16 v0, p0

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    return v6
.end method

.method public static H(Lp/b1;)Lc4/a;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lc4/a;

    .line 8
    .line 9
    invoke-static {p0}, La4/b;->j(Lp/b1;)Landroid/text/PrecomputedText$Params;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lc4/a;-><init>(Landroid/text/PrecomputedText$Params;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/16 v4, 0x17

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-lt v0, v4, :cond_1

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 38
    .line 39
    if-lt v0, v4, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Li4/b;->a(Lp/b1;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {p0}, Li4/b;->e(Lp/b1;)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    if-lt v0, v1, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    and-int/lit8 v0, v0, 0xf

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    if-ne v0, v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, La4/d;->b(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, La4/b;->c(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    aget-object p0, p0, v3

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eq p0, v5, :cond_5

    .line 94
    .line 95
    const/4 v0, 0x2

    .line 96
    if-ne p0, v0, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    :goto_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ne v0, v5, :cond_7

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_8

    .line 120
    .line 121
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :pswitch_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_2
    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_3
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :pswitch_4
    sget-object v8, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 137
    .line 138
    :cond_8
    :goto_2
    :pswitch_5
    new-instance p0, Lc4/a;

    .line 139
    .line 140
    invoke-direct {p0, v2, v8, v6, v7}, Lc4/a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 141
    .line 142
    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static I(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "extra_pkgname"

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static J(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq p0, v1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-eq p0, v2, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "type needs to be >= FIRST and <= LAST, type="

    .line 44
    .line 45
    invoke-static {p0, v1}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    return v1

    .line 54
    :cond_2
    const/4 p0, 0x7

    .line 55
    return p0

    .line 56
    :cond_3
    const/4 p0, 0x6

    .line 57
    return p0

    .line 58
    :cond_4
    const/4 p0, 0x5

    .line 59
    return p0

    .line 60
    :cond_5
    return v0

    .line 61
    :cond_6
    const/4 p0, 0x3

    .line 62
    return p0

    .line 63
    :cond_7
    return v1

    .line 64
    :cond_8
    return v0

    .line 65
    :cond_9
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static final K(JJ)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v2, v1

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    shr-long v2, p2, v0

    .line 11
    .line 12
    long-to-int v3, v2

    .line 13
    int-to-float v2, v3

    .line 14
    add-float/2addr v1, v2

    .line 15
    const-wide v2, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr p0, v2

    .line 21
    long-to-int p1, p0

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-long/2addr p2, v2

    .line 27
    long-to-int p1, p2

    .line 28
    int-to-float p1, p1

    .line 29
    add-float/2addr p0, p1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    int-to-long p1, p1

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    int-to-long v4, p0

    .line 40
    shl-long p0, p1, v0

    .line 41
    .line 42
    and-long p2, v4, v2

    .line 43
    .line 44
    or-long/2addr p0, p2

    .line 45
    return-wide p0
.end method

.method public static L(Ljava/nio/MappedByteBuffer;)Lm4/b;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x4

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0xffff

    .line 24
    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    const-string v2, "Cannot read metadata."

    .line 30
    .line 31
    if-gt v0, v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, 0x6

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    const-wide v4, 0xffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide/16 v6, -0x1

    .line 50
    .line 51
    if-ge v3, v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    add-int/lit8 v9, v9, 0x4

    .line 62
    .line 63
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    int-to-long v9, v9

    .line 71
    and-long/2addr v9, v4

    .line 72
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    add-int/lit8 v11, v11, 0x4

    .line 77
    .line 78
    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    .line 80
    .line 81
    const v11, 0x6d657461

    .line 82
    .line 83
    .line 84
    if-ne v11, v8, :cond_0

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move-wide v9, v6

    .line 91
    :goto_1
    cmp-long v0, v9, v6

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v6, v0

    .line 100
    sub-long v6, v9, v6

    .line 101
    .line 102
    long-to-int v0, v6

    .line 103
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    add-int/2addr v3, v0

    .line 108
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    add-int/lit8 v0, v0, 0xc

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    int-to-long v6, v0

    .line 125
    and-long/2addr v6, v4

    .line 126
    :goto_2
    int-to-long v11, v1

    .line 127
    cmp-long v0, v11, v6

    .line 128
    .line 129
    if-gez v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    int-to-long v11, v3

    .line 140
    and-long/2addr v11, v4

    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 142
    .line 143
    .line 144
    const v3, 0x456d6a69

    .line 145
    .line 146
    .line 147
    if-eq v3, v0, :cond_3

    .line 148
    .line 149
    const v3, 0x656d6a69

    .line 150
    .line 151
    .line 152
    if-ne v3, v0, :cond_2

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    :goto_3
    add-long/2addr v11, v9

    .line 159
    long-to-int v0, v11

    .line 160
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lm4/b;

    .line 164
    .line 165
    invoke-direct {v0}, Le4/a0;-><init>()V

    .line 166
    .line 167
    .line 168
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    add-int/2addr v2, v1

    .line 186
    iput-object p0, v0, Le4/a0;->d:Ljava/lang/Object;

    .line 187
    .line 188
    iput v2, v0, Le4/a0;->a:I

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    sub-int/2addr v2, p0

    .line 195
    iput v2, v0, Le4/a0;->b:I

    .line 196
    .line 197
    iget-object p0, v0, Le4/a0;->d:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    iput p0, v0, Le4/a0;->c:I

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 209
    .line 210
    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 215
    .line 216
    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public static final M(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v2, v1

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    long-to-int p1, p0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-long v4, v1

    .line 30
    shl-long v0, v4, v0

    .line 31
    .line 32
    int-to-long p0, p0

    .line 33
    and-long/2addr p0, v2

    .line 34
    or-long/2addr p0, v0

    .line 35
    return-wide p0
.end method

.method public static N(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Cannot round NaN value."

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static O(D)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "Cannot round NaN value."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final P(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p4, :cond_4

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    move-object p0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    move-object p0, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object p0, v0

    .line 21
    :goto_0
    invoke-static {p0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-static {p3, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    if-nez p3, :cond_3

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    return-object p3

    .line 38
    :cond_4
    if-eqz p3, :cond_5

    .line 39
    .line 40
    invoke-static {p0, p3}, Ls8/f0;->f0(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Ls8/p;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_5
    check-cast p0, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-static {p0}, Ls8/p;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static Q(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, La4/b;->k(Landroid/widget/TextView;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 31
    .line 32
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-le p1, v1, :cond_2

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static R(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-le p1, v1, :cond_1

    .line 27
    .line 28
    sub-int/2addr p1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public static S(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static final U(Lv9/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jvmDescriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lu9/d;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Lbb/e;->g(Lv9/k;)Lua/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 18
    .line 19
    invoke-static {v0}, Lu9/d;->f(Lua/d;)Lua/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcb/b;->e(Lua/b;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lna/g;->d:Lna/g;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lc7/a;->l(Lv9/e;Lna/g;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    const-string v0, "internalName"

    .line 37
    .line 38
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 p0, 0x2e

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static V(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lm9/e0;->b0(Landroid/content/Context;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lc7/a;->t(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, La2/d;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {p1, v1, v0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/16 v2, 0x401

    .line 20
    .line 21
    invoke-static {v0, p1, p0, v2, v1}, Lm9/e0;->F0(Landroid/app/Activity;Lb7/a;Ljava/util/List;ILandroidx/lifecycle/z;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p0, p1, v1}, Lc7/a;->t(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-static {p0, v1}, Lm9/e0;->H(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-static {}, Li9/a;->y()Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/content/Intent;

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :try_start_0
    invoke-static {p0}, Lm9/e0;->b0(Landroid/content/Context;)Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/high16 v1, 0x10000000

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    :goto_2
    return-void
.end method

.method public static W(Ll9/d;)Ll9/b;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ll9/b;->a:I

    .line 7
    .line 8
    iget v1, p0, Ll9/b;->b:I

    .line 9
    .line 10
    iget p0, p0, Ll9/b;->c:I

    .line 11
    .line 12
    if-lez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x2

    .line 17
    :goto_0
    new-instance v2, Ll9/b;

    .line 18
    .line 19
    invoke-direct {v2, v0, v1, p0}, Ll9/b;-><init>(III)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method

.method public static X(Llb/t0;ZLia/f0;I)Lja/a;
    .locals 8

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p3, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    const/4 v4, 0x1

    .line 17
    :goto_1
    and-int/lit8 p1, p3, 0x4

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    move-object p2, p3

    .line 23
    :cond_2
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-static {p2}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :cond_3
    move-object v6, p3

    .line 30
    new-instance v2, Lja/a;

    .line 31
    .line 32
    const/16 v7, 0x22

    .line 33
    .line 34
    move-object v3, p0

    .line 35
    invoke-direct/range {v2 .. v7}, Lja/a;-><init>(Llb/t0;ZZLjava/util/Set;I)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public static final Y(Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lk2/n;->p(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static Z(II)Ll9/d;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ll9/d;->d:Ll9/d;

    .line 6
    .line 7
    sget-object p0, Ll9/d;->d:Ll9/d;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ll9/d;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Ll9/b;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final a(Lr1/p;Ll5/l;ZLf9/k;Lf9/k;Lf9/k;Lf9/n;Lf1/s;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v0, p7

    .line 16
    .line 17
    move/from16 v8, p8

    .line 18
    .line 19
    const-string v9, "modifier"

    .line 20
    .line 21
    invoke-static {v1, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v9, "controller"

    .line 25
    .line 26
    invoke-static {v2, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v9, "setup"

    .line 30
    .line 31
    invoke-static {v6, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v9, "draw"

    .line 35
    .line 36
    invoke-static {v7, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const v9, -0x561ee0b7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v9}, Lf1/s;->Y(I)Lf1/s;

    .line 43
    .line 44
    .line 45
    and-int/lit8 v9, v8, 0xe

    .line 46
    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    const/4 v9, 0x4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v9, 0x2

    .line 58
    :goto_0
    or-int/2addr v9, v8

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v9, v8

    .line 61
    :goto_1
    and-int/lit8 v10, v8, 0x70

    .line 62
    .line 63
    const/16 v11, 0x20

    .line 64
    .line 65
    if-nez v10, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    const/16 v10, 0x20

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/16 v10, 0x10

    .line 77
    .line 78
    :goto_2
    or-int/2addr v9, v10

    .line 79
    :cond_3
    and-int/lit16 v10, v8, 0x1c00

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    if-nez v10, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    const/16 v10, 0x800

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/16 v10, 0x400

    .line 94
    .line 95
    :goto_3
    or-int/2addr v9, v10

    .line 96
    :cond_5
    const v10, 0xe000

    .line 97
    .line 98
    .line 99
    and-int v14, v8, v10

    .line 100
    .line 101
    if-nez v14, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Lf1/s;->g(Z)Z

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-eqz v14, :cond_6

    .line 108
    .line 109
    const/16 v14, 0x4000

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_6
    const/16 v14, 0x2000

    .line 113
    .line 114
    :goto_4
    or-int/2addr v9, v14

    .line 115
    :cond_7
    const/high16 v14, 0x70000

    .line 116
    .line 117
    and-int v16, v8, v14

    .line 118
    .line 119
    const v17, 0xe000

    .line 120
    .line 121
    .line 122
    const/high16 v10, 0x20000

    .line 123
    .line 124
    if-nez v16, :cond_9

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    if-eqz v16, :cond_8

    .line 131
    .line 132
    const/high16 v16, 0x20000

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    const/high16 v16, 0x10000

    .line 136
    .line 137
    :goto_5
    or-int v9, v9, v16

    .line 138
    .line 139
    :cond_9
    const/high16 v16, 0x380000

    .line 140
    .line 141
    and-int v16, v8, v16

    .line 142
    .line 143
    if-nez v16, :cond_b

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    if-eqz v16, :cond_a

    .line 150
    .line 151
    const/high16 v16, 0x100000

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_a
    const/high16 v16, 0x80000

    .line 155
    .line 156
    :goto_6
    or-int v9, v9, v16

    .line 157
    .line 158
    :cond_b
    const/high16 v16, 0x1c00000

    .line 159
    .line 160
    and-int v16, v8, v16

    .line 161
    .line 162
    if-nez v16, :cond_d

    .line 163
    .line 164
    invoke-virtual {v0, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v16

    .line 168
    if-eqz v16, :cond_c

    .line 169
    .line 170
    const/high16 v16, 0x800000

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_c
    const/high16 v16, 0x400000

    .line 174
    .line 175
    :goto_7
    or-int v9, v9, v16

    .line 176
    .line 177
    :cond_d
    const/high16 v16, 0xe000000

    .line 178
    .line 179
    and-int v18, v8, v16

    .line 180
    .line 181
    const/high16 v19, 0x70000

    .line 182
    .line 183
    if-nez v18, :cond_f

    .line 184
    .line 185
    invoke-virtual {v0, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v18

    .line 189
    if-eqz v18, :cond_e

    .line 190
    .line 191
    const/high16 v18, 0x4000000

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_e
    const/high16 v18, 0x2000000

    .line 195
    .line 196
    :goto_8
    or-int v9, v9, v18

    .line 197
    .line 198
    :cond_f
    invoke-virtual {v0}, Lf1/s;->S()V

    .line 199
    .line 200
    .line 201
    and-int/lit8 v18, v8, 0x1

    .line 202
    .line 203
    if-eqz v18, :cond_11

    .line 204
    .line 205
    invoke-virtual {v0}, Lf1/s;->x()Z

    .line 206
    .line 207
    .line 208
    move-result v18

    .line 209
    if-eqz v18, :cond_10

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_10
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 213
    .line 214
    .line 215
    :cond_11
    :goto_9
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 216
    .line 217
    .line 218
    const v13, -0x5f85e03e

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v13}, Lf1/s;->X(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    sget-object v15, Lf1/n;->a:Lf1/w0;

    .line 229
    .line 230
    if-ne v13, v15, :cond_12

    .line 231
    .line 232
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-static {v13}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-virtual {v0, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_12
    check-cast v13, Lf1/b1;

    .line 242
    .line 243
    const/4 v14, 0x0

    .line 244
    invoke-virtual {v0, v14}, Lf1/s;->p(Z)V

    .line 245
    .line 246
    .line 247
    iget-object v12, v2, Ll5/l;->k:Lf1/k1;

    .line 248
    .line 249
    invoke-virtual {v12}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    check-cast v12, Ljava/lang/Long;

    .line 254
    .line 255
    const v14, -0x5f85cc8d

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v14}, Lf1/s;->X(I)V

    .line 259
    .line 260
    .line 261
    and-int/lit8 v14, v9, 0x70

    .line 262
    .line 263
    const/16 v20, 0x1

    .line 264
    .line 265
    if-ne v14, v11, :cond_13

    .line 266
    .line 267
    const/16 v21, 0x1

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_13
    const/16 v21, 0x0

    .line 271
    .line 272
    :goto_a
    invoke-virtual {v0, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v22

    .line 276
    or-int v21, v21, v22

    .line 277
    .line 278
    and-int v11, v9, v19

    .line 279
    .line 280
    if-ne v11, v10, :cond_14

    .line 281
    .line 282
    const/4 v10, 0x1

    .line 283
    goto :goto_b

    .line 284
    :cond_14
    const/4 v10, 0x0

    .line 285
    :goto_b
    or-int v10, v21, v10

    .line 286
    .line 287
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    if-nez v10, :cond_15

    .line 292
    .line 293
    if-ne v11, v15, :cond_16

    .line 294
    .line 295
    :cond_15
    new-instance v11, Ll0/u;

    .line 296
    .line 297
    const/4 v10, 0x3

    .line 298
    invoke-direct {v11, v2, v12, v4, v10}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_16
    check-cast v11, Lf9/k;

    .line 305
    .line 306
    const/4 v10, 0x0

    .line 307
    invoke-virtual {v0, v10}, Lf1/s;->p(Z)V

    .line 308
    .line 309
    .line 310
    invoke-static {v2, v12, v11, v0}, Lf1/b;->d(Ljava/lang/Object;Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 311
    .line 312
    .line 313
    new-instance v10, La8/h;

    .line 314
    .line 315
    invoke-direct {v10, v5, v2, v6, v13}, La8/h;-><init>(Lf9/k;Ll5/l;Lf9/k;Lf1/b1;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v1, v10}, Landroidx/compose/ui/layout/a;->e(Lr1/p;Lf9/k;)Lr1/p;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    const v11, -0x5f858111

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v11}, Lf1/s;->X(I)V

    .line 326
    .line 327
    .line 328
    const/16 v11, 0x20

    .line 329
    .line 330
    if-ne v14, v11, :cond_17

    .line 331
    .line 332
    const/4 v11, 0x1

    .line 333
    goto :goto_c

    .line 334
    :cond_17
    const/4 v11, 0x0

    .line 335
    :goto_c
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    if-nez v11, :cond_18

    .line 340
    .line 341
    if-ne v12, v15, :cond_19

    .line 342
    .line 343
    :cond_18
    new-instance v12, Ll5/o;

    .line 344
    .line 345
    const/4 v11, 0x0

    .line 346
    const/4 v13, 0x0

    .line 347
    invoke-direct {v12, v2, v13, v11}, Ll5/o;-><init>(Ll5/l;Lw8/c;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_19
    check-cast v12, Lf9/n;

    .line 354
    .line 355
    const/4 v11, 0x0

    .line 356
    invoke-virtual {v0, v11}, Lf1/s;->p(Z)V

    .line 357
    .line 358
    .line 359
    invoke-static {v10, v12}, Lk2/i0;->b(Lr1/p;Lf9/n;)Lr1/p;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    const v11, -0x5f856fc4

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v11}, Lf1/s;->X(I)V

    .line 367
    .line 368
    .line 369
    const/16 v11, 0x20

    .line 370
    .line 371
    if-ne v14, v11, :cond_1a

    .line 372
    .line 373
    const/4 v11, 0x1

    .line 374
    goto :goto_d

    .line 375
    :cond_1a
    const/4 v11, 0x0

    .line 376
    :goto_d
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    if-nez v11, :cond_1b

    .line 381
    .line 382
    if-ne v12, v15, :cond_1c

    .line 383
    .line 384
    :cond_1b
    new-instance v12, Ll5/o;

    .line 385
    .line 386
    const/4 v11, 0x1

    .line 387
    const/4 v13, 0x0

    .line 388
    invoke-direct {v12, v2, v13, v11}, Ll5/o;-><init>(Ll5/l;Lw8/c;I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_1c
    check-cast v12, Lf9/n;

    .line 395
    .line 396
    const/4 v11, 0x0

    .line 397
    invoke-virtual {v0, v11}, Lf1/s;->p(Z)V

    .line 398
    .line 399
    .line 400
    invoke-static {v10, v12}, Lk2/i0;->b(Lr1/p;Lf9/n;)Lr1/p;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    const v11, -0x5f855da3

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v11}, Lf1/s;->X(I)V

    .line 408
    .line 409
    .line 410
    and-int v11, v9, v16

    .line 411
    .line 412
    const/high16 v12, 0x4000000

    .line 413
    .line 414
    if-ne v11, v12, :cond_1d

    .line 415
    .line 416
    const/4 v11, 0x1

    .line 417
    :goto_e
    const/16 v12, 0x20

    .line 418
    .line 419
    goto :goto_f

    .line 420
    :cond_1d
    const/4 v11, 0x0

    .line 421
    goto :goto_e

    .line 422
    :goto_f
    if-ne v14, v12, :cond_1e

    .line 423
    .line 424
    const/4 v12, 0x1

    .line 425
    goto :goto_10

    .line 426
    :cond_1e
    const/4 v12, 0x0

    .line 427
    :goto_10
    or-int/2addr v11, v12

    .line 428
    and-int v12, v9, v17

    .line 429
    .line 430
    xor-int/lit16 v12, v12, 0x6000

    .line 431
    .line 432
    const/16 v13, 0x4000

    .line 433
    .line 434
    if-le v12, v13, :cond_1f

    .line 435
    .line 436
    invoke-virtual {v0, v3}, Lf1/s;->g(Z)Z

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    if-nez v12, :cond_20

    .line 441
    .line 442
    :cond_1f
    and-int/lit16 v12, v9, 0x6000

    .line 443
    .line 444
    if-ne v12, v13, :cond_21

    .line 445
    .line 446
    :cond_20
    const/4 v12, 0x1

    .line 447
    goto :goto_11

    .line 448
    :cond_21
    const/4 v12, 0x0

    .line 449
    :goto_11
    or-int/2addr v11, v12

    .line 450
    and-int/lit16 v9, v9, 0x1c00

    .line 451
    .line 452
    const/16 v12, 0x800

    .line 453
    .line 454
    if-ne v9, v12, :cond_22

    .line 455
    .line 456
    goto :goto_12

    .line 457
    :cond_22
    const/16 v20, 0x0

    .line 458
    .line 459
    :goto_12
    or-int v9, v11, v20

    .line 460
    .line 461
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v11

    .line 465
    if-nez v9, :cond_23

    .line 466
    .line 467
    if-ne v11, v15, :cond_24

    .line 468
    .line 469
    :cond_23
    new-instance v11, Ll5/m;

    .line 470
    .line 471
    invoke-direct {v11, v2, v7, v3}, Ll5/m;-><init>(Ll5/l;Lf9/n;Z)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v0, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :cond_24
    check-cast v11, Lf9/k;

    .line 478
    .line 479
    const/4 v9, 0x0

    .line 480
    invoke-virtual {v0, v9}, Lf1/s;->p(Z)V

    .line 481
    .line 482
    .line 483
    invoke-static {v9, v0, v11, v10}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    if-eqz v9, :cond_25

    .line 491
    .line 492
    new-instance v0, Ll5/n;

    .line 493
    .line 494
    invoke-direct/range {v0 .. v8}, Ll5/n;-><init>(Lr1/p;Ll5/l;ZLf9/k;Lf9/k;Lf9/k;Lf9/n;I)V

    .line 495
    .line 496
    .line 497
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 498
    .line 499
    :cond_25
    return-void
.end method

.method public static a0(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    instance-of v0, p0, Li4/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    check-cast p0, Li4/j;

    .line 12
    .line 13
    iget-object p0, p0, Li4/j;->a:Landroid/view/ActionMode$Callback;

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public static final b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    move-object/from16 v11, p6

    .line 8
    .line 9
    move/from16 v0, p7

    .line 10
    .line 11
    const v3, 0x65fa1490

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v0, 0x6

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v11, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    :goto_0
    or-int/2addr v3, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v0

    .line 33
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v4, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v3, v4

    .line 49
    :cond_3
    and-int/lit8 v4, p8, 0x4

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    or-int/lit16 v3, v3, 0x180

    .line 54
    .line 55
    :cond_4
    move-object/from16 v5, p2

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_5
    and-int/lit16 v5, v0, 0x180

    .line 59
    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    move-object/from16 v5, p2

    .line 63
    .line 64
    invoke-virtual {v11, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_6

    .line 69
    .line 70
    const/16 v7, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    const/16 v7, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v3, v7

    .line 76
    :goto_4
    and-int/lit16 v7, v0, 0xc00

    .line 77
    .line 78
    if-nez v7, :cond_7

    .line 79
    .line 80
    or-int/lit16 v3, v3, 0x400

    .line 81
    .line 82
    :cond_7
    and-int/lit8 v7, p8, 0x10

    .line 83
    .line 84
    if-eqz v7, :cond_9

    .line 85
    .line 86
    or-int/lit16 v3, v3, 0x6000

    .line 87
    .line 88
    :cond_8
    move/from16 v8, p4

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_9
    and-int/lit16 v8, v0, 0x6000

    .line 92
    .line 93
    if-nez v8, :cond_8

    .line 94
    .line 95
    move/from16 v8, p4

    .line 96
    .line 97
    invoke-virtual {v11, v8}, Lf1/s;->g(Z)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_a

    .line 102
    .line 103
    const/16 v9, 0x4000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_a
    const/16 v9, 0x2000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v3, v9

    .line 109
    :goto_6
    const/high16 v9, 0x30000

    .line 110
    .line 111
    and-int/2addr v9, v0

    .line 112
    if-nez v9, :cond_c

    .line 113
    .line 114
    invoke-virtual {v11, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_b

    .line 119
    .line 120
    const/high16 v9, 0x20000

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_b
    const/high16 v9, 0x10000

    .line 124
    .line 125
    :goto_7
    or-int/2addr v3, v9

    .line 126
    :cond_c
    const v9, 0x12493

    .line 127
    .line 128
    .line 129
    and-int/2addr v9, v3

    .line 130
    const v10, 0x12492

    .line 131
    .line 132
    .line 133
    if-ne v9, v10, :cond_e

    .line 134
    .line 135
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_d

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_d
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 143
    .line 144
    .line 145
    move/from16 v4, p3

    .line 146
    .line 147
    move-object v3, v5

    .line 148
    move v5, v8

    .line 149
    goto/16 :goto_f

    .line 150
    .line 151
    :cond_e
    :goto_8
    invoke-virtual {v11}, Lf1/s;->S()V

    .line 152
    .line 153
    .line 154
    and-int/lit8 v9, v0, 0x1

    .line 155
    .line 156
    const/16 v21, 0x1

    .line 157
    .line 158
    if-eqz v9, :cond_11

    .line 159
    .line 160
    invoke-virtual {v11}, Lf1/s;->x()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_f

    .line 165
    .line 166
    goto :goto_a

    .line 167
    :cond_f
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 168
    .line 169
    .line 170
    and-int/lit16 v3, v3, -0x1c01

    .line 171
    .line 172
    move/from16 v4, p3

    .line 173
    .line 174
    :cond_10
    :goto_9
    move v9, v8

    .line 175
    goto :goto_c

    .line 176
    :cond_11
    :goto_a
    if-eqz v4, :cond_12

    .line 177
    .line 178
    const/4 v5, 0x0

    .line 179
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/4 v9, 0x6

    .line 184
    if-le v4, v9, :cond_13

    .line 185
    .line 186
    const/4 v4, 0x3

    .line 187
    goto :goto_b

    .line 188
    :cond_13
    const/4 v4, 0x1

    .line 189
    :goto_b
    and-int/lit16 v3, v3, -0x1c01

    .line 190
    .line 191
    if-eqz v7, :cond_10

    .line 192
    .line 193
    const/4 v8, 0x1

    .line 194
    goto :goto_9

    .line 195
    :goto_c
    invoke-virtual {v11}, Lf1/s;->q()V

    .line 196
    .line 197
    .line 198
    const v7, 0x6e3c21fe

    .line 199
    .line 200
    .line 201
    invoke-virtual {v11, v7}, Lf1/s;->W(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 209
    .line 210
    if-ne v8, v10, :cond_14

    .line 211
    .line 212
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-static {v8}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v11, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_14
    check-cast v8, Lf1/b1;

    .line 222
    .line 223
    const/4 v12, 0x0

    .line 224
    invoke-static {v11, v12, v7}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    if-ne v7, v10, :cond_16

    .line 229
    .line 230
    if-nez v5, :cond_15

    .line 231
    .line 232
    invoke-static {v2}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    check-cast v7, Lj8/k0;

    .line 237
    .line 238
    goto :goto_d

    .line 239
    :cond_15
    move-object v7, v5

    .line 240
    :goto_d
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v11, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_16
    check-cast v7, Lf1/b1;

    .line 248
    .line 249
    invoke-virtual {v11, v12}, Lf1/s;->p(Z)V

    .line 250
    .line 251
    .line 252
    new-instance v13, La8/j;

    .line 253
    .line 254
    const/16 v14, 0x8

    .line 255
    .line 256
    invoke-direct {v13, v14, v1}, La8/j;-><init>(ILjava/util/List;)V

    .line 257
    .line 258
    .line 259
    const v14, -0x32dd6c79

    .line 260
    .line 261
    .line 262
    invoke-static {v14, v13, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    new-instance v14, La8/m;

    .line 267
    .line 268
    const/16 v15, 0xd

    .line 269
    .line 270
    invoke-direct {v14, v7, v15}, La8/m;-><init>(Lf1/b1;I)V

    .line 271
    .line 272
    .line 273
    const v15, -0x5cbe2f78

    .line 274
    .line 275
    .line 276
    invoke-static {v15, v14, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    const v15, 0x4c5de2

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v15}, Lf1/s;->W(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v15

    .line 290
    if-ne v15, v10, :cond_17

    .line 291
    .line 292
    new-instance v15, Lj8/h;

    .line 293
    .line 294
    const/4 v12, 0x1

    .line 295
    invoke-direct {v15, v8, v12}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v11, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_17
    check-cast v15, Lf9/a;

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    invoke-virtual {v11, v12}, Lf1/s;->p(Z)V

    .line 305
    .line 306
    .line 307
    shr-int/lit8 v12, v3, 0x6

    .line 308
    .line 309
    and-int/lit16 v12, v12, 0x380

    .line 310
    .line 311
    or-int/lit16 v12, v12, 0xc36

    .line 312
    .line 313
    move-object/from16 v18, v7

    .line 314
    .line 315
    move-object v7, v13

    .line 316
    const/4 v13, 0x0

    .line 317
    move-object v0, v14

    .line 318
    move-object v14, v8

    .line 319
    move-object v8, v0

    .line 320
    move-object v0, v10

    .line 321
    move-object v10, v15

    .line 322
    move-object/from16 v15, v18

    .line 323
    .line 324
    invoke-static/range {v7 .. v13}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 325
    .line 326
    .line 327
    move/from16 v22, v9

    .line 328
    .line 329
    invoke-interface {v14}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    check-cast v7, Ljava/lang/Boolean;

    .line 334
    .line 335
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    const v8, 0x4c5de2

    .line 340
    .line 341
    .line 342
    invoke-virtual {v11, v8}, Lf1/s;->W(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    if-ne v8, v0, :cond_18

    .line 350
    .line 351
    new-instance v8, Lj8/h;

    .line 352
    .line 353
    const/4 v9, 0x2

    .line 354
    invoke-direct {v8, v14, v9}, Lj8/h;-><init>(Lf1/b1;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v11, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :cond_18
    check-cast v8, Lf9/a;

    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    invoke-virtual {v11, v12}, Lf1/s;->p(Z)V

    .line 364
    .line 365
    .line 366
    new-instance v9, Lj8/u;

    .line 367
    .line 368
    invoke-direct {v9, v2, v4, v15, v14}, Lj8/u;-><init>(Ljava/util/List;ILf1/b1;Lf1/b1;)V

    .line 369
    .line 370
    .line 371
    const v10, -0xea3c539

    .line 372
    .line 373
    .line 374
    invoke-static {v10, v9, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    const/16 v19, 0x30

    .line 379
    .line 380
    const/16 v20, 0x3fc

    .line 381
    .line 382
    move-object/from16 v17, v9

    .line 383
    .line 384
    const/4 v12, 0x0

    .line 385
    const-wide/16 v9, 0x0

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    move-object v13, v12

    .line 389
    const/4 v12, 0x0

    .line 390
    move-object v14, v13

    .line 391
    const/4 v13, 0x0

    .line 392
    move-object/from16 v18, v14

    .line 393
    .line 394
    const/4 v14, 0x0

    .line 395
    move-object/from16 v23, v15

    .line 396
    .line 397
    const/4 v15, 0x0

    .line 398
    const/high16 v24, 0x20000

    .line 399
    .line 400
    const/16 v16, 0x0

    .line 401
    .line 402
    move-object/from16 v18, p6

    .line 403
    .line 404
    move-object/from16 p2, v23

    .line 405
    .line 406
    const/high16 v1, 0x20000

    .line 407
    .line 408
    invoke-static/range {v7 .. v20}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v11, v18

    .line 412
    .line 413
    invoke-interface/range {p2 .. p2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    check-cast v7, Lj8/k0;

    .line 418
    .line 419
    const v8, -0x615d173a

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v8}, Lf1/s;->W(I)V

    .line 423
    .line 424
    .line 425
    const/high16 v8, 0x70000

    .line 426
    .line 427
    and-int/2addr v3, v8

    .line 428
    if-ne v3, v1, :cond_19

    .line 429
    .line 430
    goto :goto_e

    .line 431
    :cond_19
    const/16 v21, 0x0

    .line 432
    .line 433
    :goto_e
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-nez v21, :cond_1a

    .line 438
    .line 439
    if-ne v1, v0, :cond_1b

    .line 440
    .line 441
    :cond_1a
    new-instance v1, Lb8/m;

    .line 442
    .line 443
    const/16 v0, 0x8

    .line 444
    .line 445
    move-object/from16 v15, p2

    .line 446
    .line 447
    const/4 v12, 0x0

    .line 448
    invoke-direct {v1, v6, v15, v12, v0}, Lb8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    :cond_1b
    check-cast v1, Lf9/n;

    .line 455
    .line 456
    const/4 v12, 0x0

    .line 457
    invoke-virtual {v11, v12}, Lf1/s;->p(Z)V

    .line 458
    .line 459
    .line 460
    invoke-static {v11, v1, v7}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    move-object v3, v5

    .line 464
    move/from16 v5, v22

    .line 465
    .line 466
    :goto_f
    invoke-virtual {v11}, Lf1/s;->r()Lf1/w1;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    if-eqz v9, :cond_1c

    .line 471
    .line 472
    new-instance v0, Lj8/r;

    .line 473
    .line 474
    move-object/from16 v1, p0

    .line 475
    .line 476
    move/from16 v7, p7

    .line 477
    .line 478
    move/from16 v8, p8

    .line 479
    .line 480
    invoke-direct/range {v0 .. v8}, Lj8/r;-><init>(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;II)V

    .line 481
    .line 482
    .line 483
    iput-object v0, v9, Lf1/w1;->d:Lf9/n;

    .line 484
    .line 485
    :cond_1c
    return-void
.end method

.method public static final b0(JJ)J
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lb3/n0;->f(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Lb3/n0;->e(J)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0, p1}, Lb3/n0;->e(J)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-static {p0, p1}, Lb3/n0;->f(J)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-ge v3, v6, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    :goto_1
    and-int/2addr v2, v3

    .line 38
    if-eqz v2, :cond_9

    .line 39
    .line 40
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {p0, p1}, Lb3/n0;->f(J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-gt v2, v3, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    :goto_2
    invoke-static {p0, p1}, Lb3/n0;->e(J)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-gt v3, v6, :cond_3

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/4 v3, 0x0

    .line 66
    :goto_3
    and-int/2addr v2, v3

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    move v1, v0

    .line 74
    goto :goto_6

    .line 75
    :cond_4
    invoke-static {p0, p1}, Lb3/n0;->f(J)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-gt v2, v3, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/4 v2, 0x0

    .line 88
    :goto_4
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {p0, p1}, Lb3/n0;->e(J)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-gt v3, p0, :cond_6

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    :cond_6
    and-int p0, v2, v4

    .line 100
    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    invoke-static {p2, p3}, Lb3/n0;->d(J)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :goto_5
    sub-int/2addr v1, p0

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p2, p3}, Lb3/n0;->e(J)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-ge v0, p1, :cond_8

    .line 118
    .line 119
    if-gt p0, v0, :cond_8

    .line 120
    .line 121
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {p2, p3}, Lb3/n0;->d(J)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    goto :goto_5

    .line 130
    :cond_8
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_6

    .line 135
    :cond_9
    invoke-static {p2, p3}, Lb3/n0;->f(J)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-le v1, p0, :cond_a

    .line 140
    .line 141
    invoke-static {p2, p3}, Lb3/n0;->d(J)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    sub-int/2addr v0, p0

    .line 146
    invoke-static {p2, p3}, Lb3/n0;->d(J)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    goto :goto_5

    .line 151
    :cond_a
    :goto_6
    invoke-static {v0, v1}, Lb3/d0;->b(II)J

    .line 152
    .line 153
    .line 154
    move-result-wide p0

    .line 155
    return-wide p0
.end method

.method public static final c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v6, p7

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    const v1, -0x2adf0490

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v1, v8, 0x6

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move-object/from16 v1, p0

    .line 23
    .line 24
    invoke-virtual {v6, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x2

    .line 33
    :goto_0
    or-int/2addr v3, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object/from16 v1, p0

    .line 36
    .line 37
    move v3, v8

    .line 38
    :goto_1
    and-int/lit8 v5, v8, 0x30

    .line 39
    .line 40
    if-nez v5, :cond_3

    .line 41
    .line 42
    move-object/from16 v5, p1

    .line 43
    .line 44
    invoke-virtual {v6, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v9, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v9

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move-object/from16 v5, p1

    .line 58
    .line 59
    :goto_3
    and-int/lit8 v9, p9, 0x4

    .line 60
    .line 61
    if-eqz v9, :cond_4

    .line 62
    .line 63
    or-int/lit16 v3, v3, 0x180

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_4
    and-int/lit16 v10, v8, 0x180

    .line 67
    .line 68
    if-nez v10, :cond_7

    .line 69
    .line 70
    and-int/lit16 v10, v8, 0x200

    .line 71
    .line 72
    if-nez v10, :cond_5

    .line 73
    .line 74
    invoke-virtual {v6, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    invoke-virtual {v6, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    :goto_4
    if-eqz v10, :cond_6

    .line 84
    .line 85
    const/16 v10, 0x100

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v10, 0x80

    .line 89
    .line 90
    :goto_5
    or-int/2addr v3, v10

    .line 91
    :cond_7
    :goto_6
    and-int/lit16 v10, v8, 0xc00

    .line 92
    .line 93
    if-nez v10, :cond_9

    .line 94
    .line 95
    invoke-virtual {v6, v4}, Lf1/s;->g(Z)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_8

    .line 100
    .line 101
    const/16 v10, 0x800

    .line 102
    .line 103
    goto :goto_7

    .line 104
    :cond_8
    const/16 v10, 0x400

    .line 105
    .line 106
    :goto_7
    or-int/2addr v3, v10

    .line 107
    :cond_9
    and-int/lit16 v10, v8, 0x6000

    .line 108
    .line 109
    if-nez v10, :cond_b

    .line 110
    .line 111
    move/from16 v10, p4

    .line 112
    .line 113
    invoke-virtual {v6, v10}, Lf1/s;->g(Z)Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-eqz v11, :cond_a

    .line 118
    .line 119
    const/16 v11, 0x4000

    .line 120
    .line 121
    goto :goto_8

    .line 122
    :cond_a
    const/16 v11, 0x2000

    .line 123
    .line 124
    :goto_8
    or-int/2addr v3, v11

    .line 125
    goto :goto_9

    .line 126
    :cond_b
    move/from16 v10, p4

    .line 127
    .line 128
    :goto_9
    and-int/lit8 v11, p9, 0x20

    .line 129
    .line 130
    const/high16 v12, 0x30000

    .line 131
    .line 132
    const/high16 v13, 0x20000

    .line 133
    .line 134
    if-eqz v11, :cond_d

    .line 135
    .line 136
    or-int/2addr v3, v12

    .line 137
    :cond_c
    move-object/from16 v12, p5

    .line 138
    .line 139
    goto :goto_b

    .line 140
    :cond_d
    and-int/2addr v12, v8

    .line 141
    if-nez v12, :cond_c

    .line 142
    .line 143
    move-object/from16 v12, p5

    .line 144
    .line 145
    invoke-virtual {v6, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-eqz v14, :cond_e

    .line 150
    .line 151
    const/high16 v14, 0x20000

    .line 152
    .line 153
    goto :goto_a

    .line 154
    :cond_e
    const/high16 v14, 0x10000

    .line 155
    .line 156
    :goto_a
    or-int/2addr v3, v14

    .line 157
    :goto_b
    const/high16 v14, 0x180000

    .line 158
    .line 159
    and-int/2addr v14, v8

    .line 160
    if-nez v14, :cond_10

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-eqz v14, :cond_f

    .line 167
    .line 168
    const/high16 v14, 0x100000

    .line 169
    .line 170
    goto :goto_c

    .line 171
    :cond_f
    const/high16 v14, 0x80000

    .line 172
    .line 173
    :goto_c
    or-int/2addr v3, v14

    .line 174
    :cond_10
    const v14, 0x92493

    .line 175
    .line 176
    .line 177
    and-int/2addr v14, v3

    .line 178
    const v15, 0x92492

    .line 179
    .line 180
    .line 181
    if-ne v14, v15, :cond_12

    .line 182
    .line 183
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-nez v14, :cond_11

    .line 188
    .line 189
    goto :goto_e

    .line 190
    :cond_11
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 191
    .line 192
    .line 193
    move-object v3, v0

    .line 194
    move-object v0, v6

    .line 195
    move-object v10, v7

    .line 196
    :goto_d
    move-object v6, v12

    .line 197
    goto/16 :goto_17

    .line 198
    .line 199
    :cond_12
    :goto_e
    const/4 v14, 0x0

    .line 200
    if-eqz v9, :cond_13

    .line 201
    .line 202
    move-object v0, v14

    .line 203
    :cond_13
    if-eqz v11, :cond_14

    .line 204
    .line 205
    move-object v12, v14

    .line 206
    :cond_14
    if-nez v4, :cond_15

    .line 207
    .line 208
    invoke-virtual {v6}, Lf1/s;->r()Lf1/w1;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    if-eqz v11, :cond_29

    .line 213
    .line 214
    move-object v3, v0

    .line 215
    new-instance v0, Lj8/s;

    .line 216
    .line 217
    const/4 v10, 0x0

    .line 218
    move/from16 v9, p9

    .line 219
    .line 220
    move-object v2, v5

    .line 221
    move-object v6, v12

    .line 222
    move/from16 v5, p4

    .line 223
    .line 224
    invoke-direct/range {v0 .. v10}, Lj8/s;-><init>(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;III)V

    .line 225
    .line 226
    .line 227
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 228
    .line 229
    return-void

    .line 230
    :cond_15
    move-object v9, v0

    .line 231
    move-object v10, v7

    .line 232
    new-instance v0, Lg9/x;

    .line 233
    .line 234
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-static/range {p1 .. p1}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const v4, 0x10d01c5c

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v4}, Lf1/s;->W(I)V

    .line 245
    .line 246
    .line 247
    const/4 v4, 0x0

    .line 248
    if-nez v12, :cond_16

    .line 249
    .line 250
    move-object v2, v9

    .line 251
    goto/16 :goto_15

    .line 252
    .line 253
    :cond_16
    move-object v5, v1

    .line 254
    check-cast v5, Lj8/k0;

    .line 255
    .line 256
    iget-object v5, v5, Lj8/k0;->b:Lj8/o0;

    .line 257
    .line 258
    instance-of v7, v5, Lj8/n0;

    .line 259
    .line 260
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 261
    .line 262
    const v15, 0x4c5de2

    .line 263
    .line 264
    .line 265
    const/high16 p2, 0x70000

    .line 266
    .line 267
    const/4 v11, 0x1

    .line 268
    if-eqz v7, :cond_1b

    .line 269
    .line 270
    const v2, 0x27c9fd7e

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v2}, Lf1/s;->W(I)V

    .line 274
    .line 275
    .line 276
    new-instance v2, Lj8/n0;

    .line 277
    .line 278
    sget-object v5, Ll8/d;->a:Lr8/o;

    .line 279
    .line 280
    if-eqz v9, :cond_17

    .line 281
    .line 282
    invoke-interface {v9}, Lj8/o0;->b()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    goto :goto_f

    .line 287
    :cond_17
    const-string v5, ""

    .line 288
    .line 289
    :goto_f
    invoke-static {v12, v5}, Ll8/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-direct {v2, v5}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v15}, Lf1/s;->W(I)V

    .line 297
    .line 298
    .line 299
    and-int v5, v3, p2

    .line 300
    .line 301
    if-ne v5, v13, :cond_18

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_18
    const/4 v11, 0x0

    .line 305
    :goto_10
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    if-nez v11, :cond_19

    .line 310
    .line 311
    if-ne v5, v8, :cond_1a

    .line 312
    .line 313
    :cond_19
    new-instance v5, Lj8/t;

    .line 314
    .line 315
    invoke-direct {v5, v4, v12}, Lj8/t;-><init>(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v6, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_1a
    check-cast v5, Lf9/k;

    .line 322
    .line 323
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 324
    .line 325
    .line 326
    iput-object v5, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 327
    .line 328
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_15

    .line 332
    .line 333
    :cond_1b
    instance-of v7, v5, Lj8/m0;

    .line 334
    .line 335
    if-eqz v7, :cond_20

    .line 336
    .line 337
    const v2, 0x27cdcc0e

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v2}, Lf1/s;->W(I)V

    .line 341
    .line 342
    .line 343
    new-instance v2, Lj8/m0;

    .line 344
    .line 345
    sget-object v5, Ll8/d;->a:Lr8/o;

    .line 346
    .line 347
    if-eqz v9, :cond_1c

    .line 348
    .line 349
    invoke-interface {v9}, Lj8/o0;->a()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    goto :goto_11

    .line 354
    :cond_1c
    const/4 v5, 0x0

    .line 355
    :goto_11
    invoke-static {v5, v12}, Ll8/d;->b(ILjava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-direct {v2, v5}, Lj8/m0;-><init>(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v6, v15}, Lf1/s;->W(I)V

    .line 363
    .line 364
    .line 365
    and-int v5, v3, p2

    .line 366
    .line 367
    if-ne v5, v13, :cond_1d

    .line 368
    .line 369
    const/4 v5, 0x1

    .line 370
    goto :goto_12

    .line 371
    :cond_1d
    const/4 v5, 0x0

    .line 372
    :goto_12
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    if-nez v5, :cond_1e

    .line 377
    .line 378
    if-ne v7, v8, :cond_1f

    .line 379
    .line 380
    :cond_1e
    new-instance v7, Lj8/t;

    .line 381
    .line 382
    invoke-direct {v7, v11, v12}, Lj8/t;-><init>(ILjava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_1f
    check-cast v7, Lf9/k;

    .line 389
    .line 390
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 391
    .line 392
    .line 393
    iput-object v7, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 394
    .line 395
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_15

    .line 399
    :cond_20
    instance-of v5, v5, Lj8/l0;

    .line 400
    .line 401
    if-eqz v5, :cond_2a

    .line 402
    .line 403
    const v5, 0x27d170f6

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v5}, Lf1/s;->W(I)V

    .line 407
    .line 408
    .line 409
    new-instance v5, Lj8/l0;

    .line 410
    .line 411
    sget-object v7, Ll8/d;->a:Lr8/o;

    .line 412
    .line 413
    if-eqz v9, :cond_21

    .line 414
    .line 415
    invoke-interface {v9}, Lj8/o0;->c()Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    goto :goto_13

    .line 420
    :cond_21
    const/4 v7, 0x0

    .line 421
    :goto_13
    invoke-static {v12, v7}, Ll8/d;->a(Ljava/lang/String;Z)Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    invoke-direct {v5, v7}, Lj8/l0;-><init>(Z)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v15}, Lf1/s;->W(I)V

    .line 429
    .line 430
    .line 431
    and-int v7, v3, p2

    .line 432
    .line 433
    if-ne v7, v13, :cond_22

    .line 434
    .line 435
    goto :goto_14

    .line 436
    :cond_22
    const/4 v11, 0x0

    .line 437
    :goto_14
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    if-nez v11, :cond_23

    .line 442
    .line 443
    if-ne v7, v8, :cond_24

    .line 444
    .line 445
    :cond_23
    new-instance v7, Lj8/t;

    .line 446
    .line 447
    invoke-direct {v7, v2, v12}, Lj8/t;-><init>(ILjava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_24
    check-cast v7, Lf9/k;

    .line 454
    .line 455
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 456
    .line 457
    .line 458
    iput-object v7, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 459
    .line 460
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 461
    .line 462
    .line 463
    move-object v2, v5

    .line 464
    :goto_15
    invoke-virtual {v6, v4}, Lf1/s;->p(Z)V

    .line 465
    .line 466
    .line 467
    if-eqz v2, :cond_28

    .line 468
    .line 469
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-eqz v4, :cond_26

    .line 478
    .line 479
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    move-object v5, v4

    .line 484
    check-cast v5, Lj8/k0;

    .line 485
    .line 486
    iget-object v5, v5, Lj8/k0;->b:Lj8/o0;

    .line 487
    .line 488
    invoke-static {v5, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    if-eqz v5, :cond_25

    .line 493
    .line 494
    move-object v14, v4

    .line 495
    :cond_26
    check-cast v14, Lj8/k0;

    .line 496
    .line 497
    if-nez v14, :cond_27

    .line 498
    .line 499
    invoke-static/range {p1 .. p1}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Lj8/k0;

    .line 504
    .line 505
    goto :goto_16

    .line 506
    :cond_27
    move-object v1, v14

    .line 507
    :cond_28
    :goto_16
    move-object v2, v1

    .line 508
    check-cast v2, Lj8/k0;

    .line 509
    .line 510
    new-instance v5, La8/v;

    .line 511
    .line 512
    const/16 v1, 0xd

    .line 513
    .line 514
    invoke-direct {v5, v1, v10, v0}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    const v0, 0xe07e

    .line 518
    .line 519
    .line 520
    and-int v7, v3, v0

    .line 521
    .line 522
    const/16 v8, 0x8

    .line 523
    .line 524
    const/4 v3, 0x0

    .line 525
    move-object/from16 v0, p0

    .line 526
    .line 527
    move-object/from16 v1, p1

    .line 528
    .line 529
    move/from16 v4, p4

    .line 530
    .line 531
    invoke-static/range {v0 .. v8}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 532
    .line 533
    .line 534
    move-object/from16 v0, p7

    .line 535
    .line 536
    move-object v3, v9

    .line 537
    goto/16 :goto_d

    .line 538
    .line 539
    :goto_17
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    if-eqz v11, :cond_29

    .line 544
    .line 545
    new-instance v0, Lj8/s;

    .line 546
    .line 547
    const/4 v10, 0x1

    .line 548
    move-object/from16 v1, p0

    .line 549
    .line 550
    move-object/from16 v2, p1

    .line 551
    .line 552
    move/from16 v4, p3

    .line 553
    .line 554
    move/from16 v5, p4

    .line 555
    .line 556
    move-object/from16 v7, p6

    .line 557
    .line 558
    move/from16 v8, p8

    .line 559
    .line 560
    move/from16 v9, p9

    .line 561
    .line 562
    invoke-direct/range {v0 .. v10}, Lj8/s;-><init>(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;III)V

    .line 563
    .line 564
    .line 565
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 566
    .line 567
    :cond_29
    return-void

    .line 568
    :cond_2a
    move-object v0, v6

    .line 569
    const v1, -0x177da3b6

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v1}, Lf1/s;->W(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v4}, Lf1/s;->p(Z)V

    .line 576
    .line 577
    .line 578
    new-instance v0, Lac/p;

    .line 579
    .line 580
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 581
    .line 582
    .line 583
    throw v0
.end method

.method public static c0(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    instance-of v0, p0, Li4/j;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Li4/j;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Li4/j;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V
    .locals 11

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    const v0, 0x25db432c

    .line 4
    .line 5
    .line 6
    invoke-virtual {v7, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p7, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v7, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int v1, p7, v1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move/from16 v1, p7

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v7, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v2, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v1, v2

    .line 39
    or-int/lit16 v2, v1, 0x6c00

    .line 40
    .line 41
    and-int/lit8 v4, p8, 0x20

    .line 42
    .line 43
    const v5, 0x36c00

    .line 44
    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    or-int v2, v1, v5

    .line 49
    .line 50
    :cond_3
    move-object/from16 v1, p5

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_4
    const/high16 v1, 0x30000

    .line 54
    .line 55
    and-int v1, p7, v1

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    move-object/from16 v1, p5

    .line 60
    .line 61
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_5

    .line 66
    .line 67
    const/high16 v6, 0x20000

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    const/high16 v6, 0x10000

    .line 71
    .line 72
    :goto_3
    or-int/2addr v2, v6

    .line 73
    :goto_4
    const v6, 0x12493

    .line 74
    .line 75
    .line 76
    and-int/2addr v6, v2

    .line 77
    const v8, 0x12492

    .line 78
    .line 79
    .line 80
    if-ne v6, v8, :cond_7

    .line 81
    .line 82
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_6

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 90
    .line 91
    .line 92
    move v5, p3

    .line 93
    move v6, p4

    .line 94
    move-object v7, v1

    .line 95
    goto :goto_6

    .line 96
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    :cond_8
    move-object v6, v1

    .line 100
    and-int/lit8 v1, v2, 0xe

    .line 101
    .line 102
    or-int/lit16 v1, v1, 0x180

    .line 103
    .line 104
    and-int/lit8 v4, v2, 0x70

    .line 105
    .line 106
    or-int/2addr v1, v4

    .line 107
    or-int/2addr v1, v5

    .line 108
    shl-int/lit8 v2, v2, 0x3

    .line 109
    .line 110
    const/high16 v4, 0x380000

    .line 111
    .line 112
    and-int/2addr v2, v4

    .line 113
    or-int v8, v1, v2

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x1

    .line 118
    const/4 v4, 0x1

    .line 119
    move-object v0, p0

    .line 120
    move-object v1, p1

    .line 121
    move-object v5, p2

    .line 122
    invoke-static/range {v0 .. v9}, Li9/a;->c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V

    .line 123
    .line 124
    .line 125
    move-object v7, v6

    .line 126
    const/4 v5, 0x1

    .line 127
    const/4 v6, 0x1

    .line 128
    :goto_6
    invoke-virtual/range {p6 .. p6}, Lf1/s;->r()Lf1/w1;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    new-instance v1, Lj8/q;

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    move-object v2, p0

    .line 138
    move-object v3, p1

    .line 139
    move-object v4, p2

    .line 140
    move/from16 v8, p7

    .line 141
    .line 142
    move/from16 v9, p8

    .line 143
    .line 144
    invoke-direct/range {v1 .. v10}, Lj8/q;-><init>(Ljava/util/List;Ljava/util/List;Ljava/io/Serializable;ZZLf9/k;III)V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 148
    .line 149
    :cond_9
    return-void
.end method

.method public static final e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v11, p6

    .line 4
    .line 5
    move/from16 v0, p7

    .line 6
    .line 7
    const v1, 0x3d53b483

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x6

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v11, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int/2addr v1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :goto_1
    invoke-virtual {v11, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v2, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v1, v2

    .line 41
    invoke-virtual {v11, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    const/16 v2, 0x100

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/16 v2, 0x80

    .line 51
    .line 52
    :goto_3
    or-int/2addr v1, v2

    .line 53
    and-int/lit8 v2, p8, 0x8

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    or-int/lit16 v1, v1, 0xc00

    .line 58
    .line 59
    move/from16 v4, p3

    .line 60
    .line 61
    goto :goto_5

    .line 62
    :cond_4
    move/from16 v4, p3

    .line 63
    .line 64
    invoke-virtual {v11, v4}, Lf1/s;->g(Z)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    const/16 v5, 0x800

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    const/16 v5, 0x400

    .line 74
    .line 75
    :goto_4
    or-int/2addr v1, v5

    .line 76
    :goto_5
    and-int/lit8 v5, p8, 0x10

    .line 77
    .line 78
    if-eqz v5, :cond_7

    .line 79
    .line 80
    or-int/lit16 v1, v1, 0x6000

    .line 81
    .line 82
    :cond_6
    move/from16 v6, p4

    .line 83
    .line 84
    goto :goto_7

    .line 85
    :cond_7
    and-int/lit16 v6, v0, 0x6000

    .line 86
    .line 87
    if-nez v6, :cond_6

    .line 88
    .line 89
    move/from16 v6, p4

    .line 90
    .line 91
    invoke-virtual {v11, v6}, Lf1/s;->g(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_8

    .line 96
    .line 97
    const/16 v7, 0x4000

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_8
    const/16 v7, 0x2000

    .line 101
    .line 102
    :goto_6
    or-int/2addr v1, v7

    .line 103
    :goto_7
    and-int/lit8 v7, p8, 0x20

    .line 104
    .line 105
    const/high16 v8, 0x30000

    .line 106
    .line 107
    if-eqz v7, :cond_a

    .line 108
    .line 109
    or-int/2addr v1, v8

    .line 110
    :cond_9
    move-object/from16 v8, p5

    .line 111
    .line 112
    goto :goto_9

    .line 113
    :cond_a
    and-int/2addr v8, v0

    .line 114
    if-nez v8, :cond_9

    .line 115
    .line 116
    move-object/from16 v8, p5

    .line 117
    .line 118
    invoke-virtual {v11, v8}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_b

    .line 123
    .line 124
    const/high16 v9, 0x20000

    .line 125
    .line 126
    goto :goto_8

    .line 127
    :cond_b
    const/high16 v9, 0x10000

    .line 128
    .line 129
    :goto_8
    or-int/2addr v1, v9

    .line 130
    :goto_9
    const v9, 0x12493

    .line 131
    .line 132
    .line 133
    and-int/2addr v9, v1

    .line 134
    const v10, 0x12492

    .line 135
    .line 136
    .line 137
    if-ne v9, v10, :cond_d

    .line 138
    .line 139
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_c

    .line 144
    .line 145
    goto :goto_a

    .line 146
    :cond_c
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 147
    .line 148
    .line 149
    move v5, v6

    .line 150
    move-object v6, v8

    .line 151
    goto :goto_d

    .line 152
    :cond_d
    :goto_a
    const/4 v9, 0x1

    .line 153
    if-eqz v2, :cond_e

    .line 154
    .line 155
    const/4 v4, 0x1

    .line 156
    :cond_e
    if-eqz v5, :cond_f

    .line 157
    .line 158
    goto :goto_b

    .line 159
    :cond_f
    move v9, v6

    .line 160
    :goto_b
    if-eqz v7, :cond_10

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    move-object v10, v2

    .line 164
    goto :goto_c

    .line 165
    :cond_10
    move-object v10, v8

    .line 166
    :goto_c
    iget-object v2, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 167
    .line 168
    move-object v6, v2

    .line 169
    check-cast v6, Lj8/o0;

    .line 170
    .line 171
    iget-object v2, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v2, Ljava/lang/String;

    .line 174
    .line 175
    const v5, 0xfc7e

    .line 176
    .line 177
    .line 178
    and-int/2addr v5, v1

    .line 179
    shl-int/lit8 v1, v1, 0x3

    .line 180
    .line 181
    const/high16 v7, 0x380000

    .line 182
    .line 183
    and-int/2addr v1, v7

    .line 184
    or-int v12, v5, v1

    .line 185
    .line 186
    const/4 v13, 0x0

    .line 187
    move-object v5, p1

    .line 188
    move v7, v4

    .line 189
    move v8, v9

    .line 190
    move-object v4, p0

    .line 191
    move-object v9, v2

    .line 192
    invoke-static/range {v4 .. v13}, Li9/a;->c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V

    .line 193
    .line 194
    .line 195
    move v4, v7

    .line 196
    move v5, v8

    .line 197
    move-object v6, v10

    .line 198
    :goto_d
    invoke-virtual/range {p6 .. p6}, Lf1/s;->r()Lf1/w1;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    if-eqz v10, :cond_11

    .line 203
    .line 204
    new-instance v0, Lj8/q;

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    move-object v1, p0

    .line 208
    move-object v2, p1

    .line 209
    move/from16 v7, p7

    .line 210
    .line 211
    move/from16 v8, p8

    .line 212
    .line 213
    invoke-direct/range {v0 .. v9}, Lj8/q;-><init>(Ljava/util/List;Ljava/util/List;Ljava/io/Serializable;ZZLf9/k;III)V

    .line 214
    .line 215
    .line 216
    iput-object v0, v10, Lf1/w1;->d:Lf9/n;

    .line 217
    .line 218
    :cond_11
    return-void
.end method

.method public static final f(Lr1/p;Lg0/u;Lg0/c;Ld0/h0;Lz/h;ZLx/h;Ld0/g;Ld0/e;Lf9/k;Lf1/s;II)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v4, p3

    move/from16 v0, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    const v2, 0x2a3e8512

    .line 1
    invoke-virtual {v12, v2}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v12, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    and-int/lit8 v9, v13, 0x30

    if-nez v9, :cond_3

    invoke-virtual {v12, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v2, v9

    :cond_3
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_6

    and-int/lit16 v9, v13, 0x200

    if-nez v9, :cond_4

    invoke-virtual {v12, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v9

    :goto_3
    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_4

    :cond_5
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    :cond_6
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_8

    invoke-virtual {v12, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_5

    :cond_7
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v2, v9

    :cond_8
    and-int/lit16 v9, v13, 0x6000

    const/4 v10, 0x0

    if-nez v9, :cond_a

    invoke-virtual {v12, v10}, Lf1/s;->g(Z)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_6

    :cond_9
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v2, v9

    :cond_a
    const/high16 v9, 0x30000

    and-int v18, v13, v9

    const/high16 v19, 0x30000

    const/4 v9, 0x1

    if-nez v18, :cond_c

    invoke-virtual {v12, v9}, Lf1/s;->g(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v18, 0x10000

    :goto_7
    or-int v2, v2, v18

    :cond_c
    const/high16 v18, 0x180000

    and-int v20, v13, v18

    move-object/from16 v9, p4

    if-nez v20, :cond_e

    invoke-virtual {v12, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v22, 0x80000

    :goto_8
    or-int v2, v2, v22

    :cond_e
    const/high16 v22, 0xc00000

    and-int v23, v13, v22

    if-nez v23, :cond_10

    invoke-virtual {v12, v0}, Lf1/s;->g(Z)Z

    move-result v23

    if-eqz v23, :cond_f

    const/high16 v23, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v23, 0x400000

    :goto_9
    or-int v2, v2, v23

    :cond_10
    const/high16 v23, 0x6000000

    and-int v23, v13, v23

    move-object/from16 v5, p6

    if-nez v23, :cond_12

    invoke-virtual {v12, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/high16 v24, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v24, 0x2000000

    :goto_a
    or-int v2, v2, v24

    :cond_12
    const/high16 v24, 0x30000000

    and-int v24, v13, v24

    if-nez v24, :cond_14

    invoke-virtual {v12, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_13
    const/high16 v24, 0x10000000

    :goto_b
    or-int v2, v2, v24

    :cond_14
    and-int/lit8 v24, p12, 0x6

    if-nez v24, :cond_16

    invoke-virtual {v12, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v16, 0x4

    goto :goto_c

    :cond_15
    const/16 v16, 0x2

    :goto_c
    or-int v16, p12, v16

    goto :goto_d

    :cond_16
    move/from16 v16, p12

    :goto_d
    and-int/lit8 v24, p12, 0x30

    move-object/from16 v15, p9

    if-nez v24, :cond_18

    invoke-virtual {v12, v15}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v17, 0x20

    goto :goto_e

    :cond_17
    const/16 v17, 0x10

    :goto_e
    or-int v16, v16, v17

    :cond_18
    const v17, 0x12492493

    and-int v10, v2, v17

    const v11, 0x12492492

    const/16 v14, 0x12

    if-ne v10, v11, :cond_1a

    and-int/lit8 v10, v16, 0x13

    if-eq v10, v14, :cond_19

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v10, 0x1

    :goto_10
    and-int/lit8 v11, v2, 0x1

    invoke-virtual {v12, v11, v10}, Lf1/s;->N(IZ)Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-virtual {v12}, Lf1/s;->S()V

    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_1c

    invoke-virtual {v12}, Lf1/s;->x()Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_11

    .line 2
    :cond_1b
    invoke-virtual {v12}, Lf1/s;->Q()V

    :cond_1c
    :goto_11
    invoke-virtual {v12}, Lf1/s;->q()V

    shr-int/lit8 v26, v2, 0x3

    and-int/lit8 v27, v26, 0xe

    and-int/lit8 v10, v16, 0x70

    or-int v10, v27, v10

    .line 3
    invoke-static/range {p9 .. p10}, Lf1/b;->v(Ljava/lang/Object;Lf1/s;)Lf1/b1;

    move-result-object v11

    and-int/lit8 v28, v10, 0xe

    const/16 v29, 0x12

    xor-int/lit8 v14, v28, 0x6

    move/from16 v28, v2

    const/4 v2, 0x4

    if-le v14, v2, :cond_1d

    .line 4
    invoke-virtual {v12, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    :cond_1d
    and-int/lit8 v10, v10, 0x6

    if-ne v10, v2, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    .line 5
    :goto_12
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v10

    .line 6
    sget-object v14, Lf1/n;->a:Lf1/w0;

    if-nez v2, :cond_20

    if-ne v10, v14, :cond_21

    .line 7
    :cond_20
    sget-object v2, Lf1/w0;->d:Lf1/w0;

    new-instance v10, La8/f;

    const/16 v5, 0x1b

    invoke-direct {v10, v11, v5}, La8/f;-><init>(Lf1/b1;I)V

    invoke-static {v2, v10}, Lf1/b;->n(Lf1/p2;Lf9/a;)Lf1/f0;

    move-result-object v5

    .line 8
    new-instance v10, La8/n0;

    const/4 v11, 0x3

    invoke-direct {v10, v11, v5, v3}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v10}, Lf1/b;->n(Lf1/p2;Lf9/a;)Lf1/f0;

    move-result-object v34

    .line 9
    new-instance v30, Lc1/q0;

    const/16 v31, 0x0

    const/16 v32, 0x3

    .line 10
    const-class v33, Lf1/v2;

    const-string v35, "value"

    const-string v36, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v30 .. v36}, Lc1/q0;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v30

    .line 11
    invoke-virtual {v12, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 12
    :cond_21
    move-object v5, v10

    check-cast v5, Lm9/r;

    shr-int/lit8 v2, v28, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int v2, v27, v2

    and-int/lit8 v10, v2, 0xe

    xor-int/lit8 v10, v10, 0x6

    const/4 v11, 0x4

    if-le v10, v11, :cond_22

    .line 13
    invoke-virtual {v12, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    :cond_22
    and-int/lit8 v10, v2, 0x6

    if-ne v10, v11, :cond_24

    :cond_23
    const/4 v10, 0x1

    goto :goto_13

    :cond_24
    const/4 v10, 0x0

    :goto_13
    and-int/lit8 v11, v2, 0x70

    xor-int/lit8 v11, v11, 0x30

    move/from16 v30, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_25

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Lf1/s;->g(Z)Z

    move-result v17

    if-nez v17, :cond_26

    :cond_25
    and-int/lit8 v11, v30, 0x30

    if-ne v11, v2, :cond_27

    :cond_26
    const/4 v11, 0x1

    goto :goto_14

    :cond_27
    const/4 v11, 0x0

    :goto_14
    or-int v2, v10, v11

    .line 14
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_28

    if-ne v10, v14, :cond_29

    .line 15
    :cond_28
    new-instance v10, Lg0/x;

    invoke-direct {v10, v3}, Lg0/x;-><init>(Lg0/u;)V

    .line 16
    invoke-virtual {v12, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 17
    :cond_29
    check-cast v10, Lg0/x;

    .line 18
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_2a

    .line 19
    invoke-static {v12}, Lf1/b;->l(Lf1/s;)Lac/w;

    move-result-object v2

    .line 20
    invoke-virtual {v12, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 21
    :cond_2a
    check-cast v2, Lac/w;

    .line 22
    sget-object v11, Lr2/i1;->g:Lf1/w2;

    .line 23
    invoke-virtual {v12, v11}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v11

    .line 24
    check-cast v11, Ly1/v;

    move-object/from16 v30, v2

    .line 25
    sget-object v2, Lr2/i1;->v:Lf1/c0;

    .line 26
    invoke-virtual {v12, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 28
    sget-object v2, Lh0/v0;->a:Lh0/a0;

    goto :goto_15

    :cond_2b
    const/4 v2, 0x0

    :goto_15
    const v31, 0x7fff0

    and-int v31, v28, v31

    shl-int/lit8 v16, v16, 0x12

    const/high16 v29, 0x380000

    and-int v16, v16, v29

    or-int v16, v31, v16

    shr-int/lit8 v28, v28, 0x6

    const/high16 v31, 0x1c00000

    and-int v28, v28, v31

    move-object/from16 v32, v2

    or-int v2, v16, v28

    and-int/lit8 v16, v2, 0x70

    move-object/from16 v28, v5

    xor-int/lit8 v5, v16, 0x30

    const/16 v9, 0x20

    if-le v5, v9, :cond_2c

    .line 29
    invoke-virtual {v12, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    and-int/lit8 v5, v2, 0x30

    if-ne v5, v9, :cond_2e

    :cond_2d
    const/4 v5, 0x1

    goto :goto_16

    :cond_2e
    const/4 v5, 0x0

    :goto_16
    and-int/lit16 v9, v2, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v3, 0x100

    if-le v9, v3, :cond_2f

    .line 30
    invoke-virtual {v12, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    :cond_2f
    and-int/lit16 v9, v2, 0x180

    if-ne v9, v3, :cond_31

    :cond_30
    const/4 v3, 0x1

    goto :goto_17

    :cond_31
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v5

    and-int/lit16 v5, v2, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v9, 0x800

    if-le v5, v9, :cond_32

    .line 31
    invoke-virtual {v12, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    and-int/lit16 v5, v2, 0xc00

    if-ne v5, v9, :cond_34

    :cond_33
    const/4 v5, 0x1

    goto :goto_18

    :cond_34
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v2

    xor-int/lit16 v5, v5, 0x6000

    const/16 v9, 0x4000

    if-le v5, v9, :cond_35

    const/4 v5, 0x0

    .line 32
    invoke-virtual {v12, v5}, Lf1/s;->g(Z)Z

    move-result v16

    if-nez v16, :cond_36

    goto :goto_19

    :cond_35
    const/4 v5, 0x0

    :goto_19
    and-int/lit16 v5, v2, 0x6000

    if-ne v5, v9, :cond_37

    :cond_36
    const/4 v5, 0x1

    goto :goto_1a

    :cond_37
    const/4 v5, 0x0

    :goto_1a
    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v2

    xor-int v5, v5, v19

    const/high16 v9, 0x20000

    if-le v5, v9, :cond_38

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v12, v5}, Lf1/s;->g(Z)Z

    move-result v16

    if-nez v16, :cond_39

    :cond_38
    and-int v5, v2, v19

    if-ne v5, v9, :cond_3a

    :cond_39
    const/4 v5, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v3, v5

    and-int v5, v2, v29

    xor-int v5, v5, v18

    const/high16 v9, 0x100000

    if-le v5, v9, :cond_3b

    .line 34
    invoke-virtual {v12, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    :cond_3b
    and-int v5, v2, v18

    if-ne v5, v9, :cond_3d

    :cond_3c
    const/4 v5, 0x1

    goto :goto_1c

    :cond_3d
    const/4 v5, 0x0

    :goto_1c
    or-int/2addr v3, v5

    and-int v5, v2, v31

    xor-int v5, v5, v22

    const/high16 v9, 0x800000

    if-le v5, v9, :cond_3e

    .line 35
    invoke-virtual {v12, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    :cond_3e
    and-int v2, v2, v22

    if-ne v2, v9, :cond_40

    :cond_3f
    const/4 v2, 0x1

    goto :goto_1d

    :cond_40
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v2, v3

    .line 36
    invoke-virtual {v12, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 37
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_42

    if-ne v3, v14, :cond_41

    goto :goto_1e

    :cond_41
    move-object v2, v3

    move-object/from16 v37, v10

    move-object/from16 v10, v28

    const/4 v13, 0x0

    const/16 v21, 0x1

    move-object/from16 v3, p1

    goto :goto_1f

    .line 38
    :cond_42
    :goto_1e
    new-instance v2, Lf0/k;

    move-object/from16 v3, p1

    move-object/from16 v37, v10

    move-object v10, v11

    move-object/from16 v5, v28

    move-object/from16 v9, v30

    move-object/from16 v11, v32

    const/4 v13, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v2 .. v11}, Lf0/k;-><init>(Lg0/u;Ld0/h0;Lm9/r;Lg0/c;Ld0/g;Ld0/e;Lac/w;Ly1/v;Lh0/a0;)V

    move-object v10, v5

    .line 39
    invoke-virtual {v12, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 40
    :goto_1f
    move-object v11, v2

    check-cast v11, Lf0/k;

    .line 41
    sget-object v4, Lz/w0;->a:Lz/w0;

    if-eqz v0, :cond_48

    const v2, 0x1a13923

    invoke-virtual {v12, v2}, Lf1/s;->W(I)V

    xor-int/lit8 v2, v27, 0x6

    const/4 v5, 0x4

    if-le v2, v5, :cond_43

    .line 42
    invoke-virtual {v12, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    :cond_43
    and-int/lit8 v2, v26, 0x6

    if-ne v2, v5, :cond_44

    goto :goto_20

    :cond_44
    const/16 v21, 0x0

    .line 43
    :cond_45
    :goto_20
    invoke-virtual {v12}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-nez v21, :cond_46

    if-ne v2, v14, :cond_47

    .line 44
    :cond_46
    new-instance v2, Lg0/d;

    invoke-direct {v2, v3}, Lg0/d;-><init>(Lg0/u;)V

    .line 45
    invoke-virtual {v12, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 46
    :cond_47
    check-cast v2, Lg0/d;

    .line 47
    iget-object v5, v3, Lg0/u;->n:Lh0/k;

    .line 48
    invoke-static {v2, v5, v4}, Landroidx/compose/foundation/lazy/layout/a;->a(Lh0/o;Lh0/k;Lz/w0;)Lr1/p;

    move-result-object v2

    .line 49
    invoke-virtual {v12, v13}, Lf1/s;->p(Z)V

    goto :goto_21

    :cond_48
    const v2, 0x1a5be30

    .line 50
    invoke-virtual {v12, v2}, Lf1/s;->W(I)V

    .line 51
    invoke-virtual {v12, v13}, Lf1/s;->p(Z)V

    .line 52
    sget-object v2, Lr1/m;->a:Lr1/m;

    .line 53
    :goto_21
    iget-object v5, v3, Lg0/u;->k:Lf0/s;

    .line 54
    invoke-interface {v1, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v5

    .line 55
    iget-object v6, v3, Lg0/u;->l:Lh0/e;

    .line 56
    invoke-interface {v5, v6}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v5

    move-object/from16 v6, v37

    .line 57
    invoke-static {v5, v10, v6, v4, v0}, Landroidx/compose/foundation/lazy/layout/a;->b(Lr1/p;Lm9/r;Lh0/k0;Lz/w0;Z)Lr1/p;

    move-result-object v5

    .line 58
    invoke-interface {v5, v2}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v2

    .line 59
    iget-object v5, v3, Lg0/u;->m:Landroidx/compose/foundation/lazy/layout/b;

    .line 60
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/b;->i:Lr1/p;

    .line 61
    invoke-interface {v2, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v2

    .line 62
    iget-object v7, v3, Lg0/u;->f:Lb0/k;

    const/4 v8, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move v5, v0

    .line 63
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/a;->i(Lr1/p;Lz/m1;Lz/w0;ZLz/h;Lb0/k;ZLx/h;)Lr1/p;

    move-result-object v0

    move-object v8, v3

    .line 64
    iget-object v4, v8, Lg0/u;->o:Lh0/h0;

    const/4 v7, 0x0

    move-object v3, v0

    move-object v2, v10

    move-object v5, v11

    move-object v6, v12

    .line 65
    invoke-static/range {v2 .. v7}, Lh0/z;->a(Lf9/a;Lr1/p;Lh0/h0;Lf0/k;Lf1/s;I)V

    goto :goto_22

    :cond_49
    move-object v8, v3

    .line 66
    invoke-virtual/range {p10 .. p10}, Lf1/s;->Q()V

    .line 67
    :goto_22
    invoke-virtual/range {p10 .. p10}, Lf1/s;->r()Lf1/w1;

    move-result-object v13

    if-eqz v13, :cond_4a

    new-instance v0, Lg0/j;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v11, p11

    move/from16 v12, p12

    move-object v2, v8

    move-object v10, v15

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v12}, Lg0/j;-><init>(Lr1/p;Lg0/u;Lg0/c;Ld0/h0;Lz/h;ZLx/h;Ld0/g;Ld0/e;Lf9/k;II)V

    .line 68
    iput-object v0, v13, Lf1/w1;->d:Lf9/n;

    :cond_4a
    return-void
.end method

.method public static h(Lcc/h;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcc/h;->f(Ljava/lang/Throwable;Z)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final i(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p1, p0}, Lr8/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static j(FF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    return p0
.end method

.method public static k(FF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p1

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    return p0
.end method

.method public static l(DDD)D
    .locals 1

    .line 1
    cmpl-double v0, p2, p4

    .line 2
    .line 3
    if-gtz v0, :cond_2

    .line 4
    .line 5
    cmpg-double v0, p0, p2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return-wide p2

    .line 10
    :cond_0
    cmpl-double p2, p0, p4

    .line 11
    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    return-wide p4

    .line 15
    :cond_1
    return-wide p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p4, " is less than minimum "

    .line 29
    .line 30
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p2, 0x2e

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static m(FFF)F
    .locals 2

    .line 1
    cmpl-float v0, p1, p2

    .line 2
    .line 3
    if-gtz v0, :cond_2

    .line 4
    .line 5
    cmpg-float v0, p0, p1

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    cmpl-float p1, p0, p2

    .line 11
    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    return p2

    .line 15
    :cond_1
    return p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, " is less than minimum "

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x2e

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static n(III)I
    .locals 2

    .line 1
    if-gt p1, p2, :cond_2

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    if-le p0, p2, :cond_1

    .line 7
    .line 8
    return p2

    .line 9
    :cond_1
    return p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, " is less than minimum "

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x2e

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static o(J)J
    .locals 3

    .line 1
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v2, p0, v0

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_1
    return-wide p0
.end method

.method public static p(II)I
    .locals 4

    .line 1
    sub-int v0, p0, p1

    .line 2
    .line 3
    if-le v0, p1, :cond_0

    .line 4
    .line 5
    move v3, v0

    .line 6
    move v0, p1

    .line 7
    move p1, v3

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x1

    .line 10
    :goto_0
    if-le p0, p1, :cond_2

    .line 11
    .line 12
    mul-int v1, v1, p0

    .line 13
    .line 14
    if-gt v2, v0, :cond_1

    .line 15
    .line 16
    div-int/2addr v1, v2

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    :goto_1
    if-gt v2, v0, :cond_3

    .line 23
    .line 24
    div-int/2addr v1, v2

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    return v1
.end method

.method public static final q(Llb/y0;)Lob/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lob/i;->c:Lob/i;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lac/p;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    sget-object p0, Lob/i;->b:Lob/i;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lob/i;->d:Lob/i;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final r(Ljava/util/ArrayList;Ljava/util/List;Lv9/t;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    const-string v0, "oldValueParameters"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    invoke-static/range {p0 .. p1}, Ls8/p;->G0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lr8/j;

    .line 44
    .line 45
    iget-object v3, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v10, v3

    .line 48
    check-cast v10, Llb/w;

    .line 49
    .line 50
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ly9/r0;

    .line 53
    .line 54
    new-instance v4, Ly9/r0;

    .line 55
    .line 56
    iget v7, v2, Ly9/r0;->f:I

    .line 57
    .line 58
    move-object v3, v2

    .line 59
    check-cast v3, Lfb/a;

    .line 60
    .line 61
    invoke-virtual {v3}, Lfb/a;->getAnnotations()Lw9/h;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    move-object v3, v2

    .line 66
    check-cast v3, Ly9/m;

    .line 67
    .line 68
    invoke-virtual {v3}, Ly9/m;->getName()Lua/e;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v3, "getName(...)"

    .line 73
    .line 74
    invoke-static {v9, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ly9/r0;->D0()Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    iget-boolean v12, v2, Ly9/r0;->h:Z

    .line 82
    .line 83
    iget-boolean v13, v2, Ly9/r0;->i:Z

    .line 84
    .line 85
    iget-object v3, v2, Ly9/r0;->j:Llb/w;

    .line 86
    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    invoke-static/range {p2 .. p2}, Lbb/e;->j(Lv9/k;)Lv9/y;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v3}, Lv9/y;->j()Ls9/i;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v10}, Ls9/i;->f(Llb/w;)Llb/w;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :goto_1
    move-object v14, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    const/4 v3, 0x0

    .line 104
    goto :goto_1

    .line 105
    :goto_2
    check-cast v2, Ly9/n;

    .line 106
    .line 107
    invoke-virtual {v2}, Ly9/n;->getSource()Lv9/m0;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    const-string v2, "getSource(...)"

    .line 112
    .line 113
    invoke-static {v15, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    move-object/from16 v5, p2

    .line 118
    .line 119
    invoke-direct/range {v4 .. v15}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    return-object v1
.end method

.method public static s(Ljava/lang/Class;)Laa/c;
    .locals 14

    .line 1
    const-string v0, "klass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Loa/g;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Loa/g;->a:[I

    .line 13
    .line 14
    iput-object v1, v0, Loa/g;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, v0, Loa/g;->c:I

    .line 18
    .line 19
    iput-object v1, v0, Loa/g;->d:[Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Loa/g;->e:[Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Loa/g;->f:[Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Loa/g;->g:Loa/a;

    .line 26
    .line 27
    iput-object v1, v0, Loa/g;->h:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lg9/b;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    invoke-virtual {v3}, Lg9/b;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/annotation/Annotation;

    .line 48
    .line 49
    invoke-static {v4}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Lua/b;->a()Lua/c;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    sget-object v8, Lea/y;->a:Lua/c;

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_1

    .line 75
    .line 76
    new-instance v6, Loa/e;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    invoke-direct {v6, v0, v7}, Loa/e;-><init>(Loa/g;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    sget-object v8, Lea/y;->o:Lua/c;

    .line 84
    .line 85
    invoke-virtual {v7, v8}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    new-instance v6, Loa/e;

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    invoke-direct {v6, v0, v7}, Loa/e;-><init>(Loa/g;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    sget-boolean v7, Loa/g;->i:Z

    .line 99
    .line 100
    if-eqz v7, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object v7, v0, Loa/g;->g:Loa/a;

    .line 104
    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    sget-object v7, Loa/g;->j:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Loa/a;

    .line 115
    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    iput-object v6, v0, Loa/g;->g:Loa/a;

    .line 119
    .line 120
    new-instance v6, Loa/e;

    .line 121
    .line 122
    const/4 v7, 0x2

    .line 123
    invoke-direct {v6, v0, v7}, Loa/e;-><init>(Loa/g;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    :goto_1
    move-object v6, v1

    .line 128
    :goto_2
    if-eqz v6, :cond_0

    .line 129
    .line 130
    invoke-static {v6, v4, v5}, Lg5/a;->W(Lna/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    new-instance v3, Laa/c;

    .line 135
    .line 136
    sget-object v4, Lra/e;->g:Lra/e;

    .line 137
    .line 138
    iget-object v5, v0, Loa/g;->g:Loa/a;

    .line 139
    .line 140
    if-eqz v5, :cond_d

    .line 141
    .line 142
    iget-object v5, v0, Loa/g;->a:[I

    .line 143
    .line 144
    if-nez v5, :cond_7

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    new-instance v8, Lra/e;

    .line 148
    .line 149
    iget-object v5, v0, Loa/g;->a:[I

    .line 150
    .line 151
    iget v6, v0, Loa/g;->c:I

    .line 152
    .line 153
    and-int/lit8 v6, v6, 0x8

    .line 154
    .line 155
    if-eqz v6, :cond_8

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    :cond_8
    invoke-direct {v8, v5, v2}, Lra/e;-><init>([IZ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v4}, Lra/e;->b(Lra/e;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_9

    .line 166
    .line 167
    iget-object v2, v0, Loa/g;->d:[Ljava/lang/String;

    .line 168
    .line 169
    iput-object v2, v0, Loa/g;->f:[Ljava/lang/String;

    .line 170
    .line 171
    iput-object v1, v0, Loa/g;->d:[Ljava/lang/String;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    iget-object v2, v0, Loa/g;->g:Loa/a;

    .line 175
    .line 176
    sget-object v4, Loa/a;->e:Loa/a;

    .line 177
    .line 178
    if-eq v2, v4, :cond_a

    .line 179
    .line 180
    sget-object v4, Loa/a;->f:Loa/a;

    .line 181
    .line 182
    if-eq v2, v4, :cond_a

    .line 183
    .line 184
    sget-object v4, Loa/a;->i:Loa/a;

    .line 185
    .line 186
    if-ne v2, v4, :cond_b

    .line 187
    .line 188
    :cond_a
    iget-object v2, v0, Loa/g;->d:[Ljava/lang/String;

    .line 189
    .line 190
    if-nez v2, :cond_b

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    :goto_3
    iget-object v2, v0, Loa/g;->h:[Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v2, :cond_c

    .line 196
    .line 197
    invoke-static {v2}, Lta/a;->a([Ljava/lang/String;)[B

    .line 198
    .line 199
    .line 200
    :cond_c
    new-instance v6, Loa/b;

    .line 201
    .line 202
    iget-object v7, v0, Loa/g;->g:Loa/a;

    .line 203
    .line 204
    iget-object v9, v0, Loa/g;->d:[Ljava/lang/String;

    .line 205
    .line 206
    iget-object v10, v0, Loa/g;->f:[Ljava/lang/String;

    .line 207
    .line 208
    iget-object v11, v0, Loa/g;->e:[Ljava/lang/String;

    .line 209
    .line 210
    iget-object v12, v0, Loa/g;->b:Ljava/lang/String;

    .line 211
    .line 212
    iget v13, v0, Loa/g;->c:I

    .line 213
    .line 214
    invoke-direct/range {v6 .. v13}, Loa/b;-><init>(Loa/a;Lra/e;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_d
    :goto_4
    move-object v6, v1

    .line 219
    :goto_5
    if-nez v6, :cond_e

    .line 220
    .line 221
    return-object v1

    .line 222
    :cond_e
    invoke-direct {v3, p0, v6}, Laa/c;-><init>(Ljava/lang/Class;Loa/b;)V

    .line 223
    .line 224
    .line 225
    return-object v3
.end method

.method public static t(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, La4/b;->a(Landroid/os/Looper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v3, Landroid/os/Looper;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    const-class v3, Landroid/os/Handler$Callback;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aput-object v3, v2, v5

    .line 26
    .line 27
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    aput-object v3, v2, v6

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p0, v1, v4

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v2, v1, v5

    .line 42
    .line 43
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    aput-object v2, v1, v6

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    .line 53
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catch_3
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    instance-of v0, p0, Ljava/lang/Error;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    check-cast p0, Ljava/lang/Error;

    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    throw p0

    .line 85
    :goto_0
    const-string v1, "HandlerCompat"

    .line 86
    .line 87
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    .line 88
    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public static final u(Landroid/content/Context;)Lf3/e;
    .locals 4

    .line 1
    new-instance v0, Lf3/e;

    .line 2
    .line 3
    new-instance v1, Lib/d;

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lib/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v3, 0x1f

    .line 16
    .line 17
    if-lt v2, v3, :cond_0

    .line 18
    .line 19
    sget-object v2, Lf3/l;->a:Lf3/l;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Lf3/l;->a(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    new-instance v2, Lf3/a;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lf3/a;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lf3/e;-><init>(Lib/d;Lf3/a;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public static final v(Lkc/d;Lmc/a;Ljava/lang/String;)Lkc/a;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkc/d;->a:Lm9/c;

    .line 7
    .line 8
    iget-object p0, p0, Lkc/d;->e:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lkc/a;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lkc/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Lmc/a;->p()Ln6/a;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string p0, "baseClass"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    invoke-static {p0, v1}, Lg9/b0;->f(ILjava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-object p0, v1

    .line 39
    :goto_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-static {p2, v0}, Lnc/m0;->f(Ljava/lang/String;Lm9/c;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public static final w(Lkc/d;Lpc/s;Ljava/lang/Object;)Lkc/a;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkc/d;->a:Lm9/c;

    .line 7
    .line 8
    const-string v1, "value"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lkc/d;->d:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lkc/a;

    .line 30
    .line 31
    const-string v1, "baseClass"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    check-cast p0, Lkc/a;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object p0, p1, Lpc/s;->e:Ln6/a;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p2}, Lm9/c;->l(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x1

    .line 55
    invoke-static {p0, v3}, Lg9/b0;->f(ILjava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    move-object p0, v3

    .line 59
    :goto_1
    if-eqz p0, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move-object p0, v3

    .line 63
    :goto_2
    if-nez p0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v2, p0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Lm9/c;->k()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_3
    invoke-static {p1, v0}, Lnc/m0;->f(Ljava/lang/String;Lm9/c;)V

    .line 87
    .line 88
    .line 89
    throw v3

    .line 90
    :cond_4
    return-object p0
.end method

.method public static final x(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Leb/o;

    .line 21
    .line 22
    invoke-interface {v1}, Leb/o;->d()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Iterable;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public static y()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static varargs z(Landroid/content/Context;[Ly6/a;)Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lm9/e0;->i0(Landroid/content/Context;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    array-length p0, p1

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lm6/a;->j:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "ColorOS"

    .line 23
    .line 24
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    new-instance p0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v2, p1

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v2, :cond_0

    .line 43
    .line 44
    aget-object v4, p1, v3

    .line 45
    .line 46
    invoke-virtual {v4}, Ly6/a;->n()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "permissionList"

    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string p0, "isGetPermission"

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract T(Lc/p0;Lc/p0;Landroid/view/Window;Landroid/view/View;ZZ)V
.end method

.method public g(Landroid/view/Window;)V
    .locals 0

    .line 1
    return-void
.end method
