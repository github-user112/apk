.class public abstract La/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static b:J

.field public static c:Ljava/lang/reflect/Method;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    iput v0, p0, La/a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final A(DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    const/16 p2, 0x18

    .line 9
    .line 10
    int-to-double v0, p2

    .line 11
    add-double/2addr p0, v0

    .line 12
    rem-double/2addr p0, v0

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-int p2, v0

    .line 18
    int-to-double v0, p2

    .line 19
    sub-double/2addr p0, v0

    .line 20
    const/16 v0, 0x3c

    .line 21
    .line 22
    int-to-double v0, v0

    .line 23
    mul-double p0, p0, v0

    .line 24
    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    double-to-int p0, p0

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p2, 0x2

    .line 39
    new-array v0, p2, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    aput-object p1, v0, v1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    aput-object p0, v0, p1

    .line 46
    .line 47
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "%02d:%02d"

    .line 52
    .line 53
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static final B(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static final C(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static D()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static E()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static F()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static G()Z
    .locals 7

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
    invoke-static {}, Le5/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const-class v0, Landroid/os/Trace;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    sget-object v2, La/a;->c:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "TRACE_TAG_APP"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    sput-wide v5, La/a;->b:J

    .line 32
    .line 33
    const-string v2, "isTagEnabled"

    .line 34
    .line 35
    new-array v5, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v6, v5, v1

    .line 40
    .line 41
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, La/a;->c:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, La/a;->c:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    sget-wide v5, La/a;->b:J

    .line 53
    .line 54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v2, v3, v1

    .line 61
    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v0

    .line 73
    :goto_1
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    check-cast v0, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_3
    const-string v2, "Trace"

    .line 95
    .line 96
    const-string v3, "Unable to call isTagEnabled via reflection"

    .line 97
    .line 98
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return v1
.end method

.method public static final H(Lv9/k0;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lv9/k0;->b()Ly9/j0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static I(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x17

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x16

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x1d

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x18

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x15

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static final J(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {p0, v0, v1}, Lxb/i;->X(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    invoke-static {p0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Number;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    mul-int/lit8 p0, p0, 0x3c

    .line 74
    .line 75
    add-int/2addr p0, v0

    .line 76
    return p0
.end method

.method public static final K(Lg0/n;Lz/w0;)I
    .locals 2

    .line 1
    sget-object v0, Lz/w0;->a:Lz/w0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-wide p0, p0, Lg0/n;->o:J

    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr p0, v0

    .line 13
    :goto_0
    long-to-int p1, p0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-wide p0, p0, Lg0/n;->o:J

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    shr-long/2addr p0, v0

    .line 20
    goto :goto_0
.end method

.method public static L(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    instance-of p1, p0, Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static M()V
    .locals 3

    .line 1
    sget-object v0, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->z:Ldc/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x10000000

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public static final N([F[FI[F)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v1, "At least one point must be provided"

    .line 6
    .line 7
    invoke-static {v1}, Ln2/a;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-lt v1, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 v1, v0, -0x1

    .line 14
    .line 15
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    new-array v3, v2, [[F

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    :goto_0
    if-ge v5, v2, :cond_2

    .line 22
    .line 23
    new-array v6, v0, [F

    .line 24
    .line 25
    aput-object v6, v3, v5

    .line 26
    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v5, 0x0

    .line 31
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-ge v5, v0, :cond_4

    .line 34
    .line 35
    aget-object v7, v3, v4

    .line 36
    .line 37
    aput v6, v7, v5

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    :goto_2
    if-ge v6, v2, :cond_3

    .line 41
    .line 42
    add-int/lit8 v7, v6, -0x1

    .line 43
    .line 44
    aget-object v7, v3, v7

    .line 45
    .line 46
    aget v7, v7, v5

    .line 47
    .line 48
    aget v8, p0, v5

    .line 49
    .line 50
    mul-float v7, v7, v8

    .line 51
    .line 52
    aget-object v8, v3, v6

    .line 53
    .line 54
    aput v7, v8, v5

    .line 55
    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    new-array v5, v2, [[F

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    :goto_3
    if-ge v7, v2, :cond_5

    .line 66
    .line 67
    new-array v8, v0, [F

    .line 68
    .line 69
    aput-object v8, v5, v7

    .line 70
    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    new-array v7, v2, [[F

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    :goto_4
    if-ge v8, v2, :cond_6

    .line 78
    .line 79
    new-array v9, v2, [F

    .line 80
    .line 81
    aput-object v9, v7, v8

    .line 82
    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/4 v8, 0x0

    .line 87
    :goto_5
    if-ge v8, v2, :cond_d

    .line 88
    .line 89
    aget-object v9, v5, v8

    .line 90
    .line 91
    aget-object v10, v3, v8

    .line 92
    .line 93
    const-string v11, "<this>"

    .line 94
    .line 95
    invoke-static {v10, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v11, "destination"

    .line 99
    .line 100
    invoke-static {v9, v11}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v10, v4, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    :goto_6
    if-ge v10, v8, :cond_8

    .line 108
    .line 109
    aget-object v11, v5, v10

    .line 110
    .line 111
    invoke-static {v9, v11}, La/a;->q([F[F)F

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    const/4 v13, 0x0

    .line 116
    :goto_7
    if-ge v13, v0, :cond_7

    .line 117
    .line 118
    aget v14, v9, v13

    .line 119
    .line 120
    aget v15, v11, v13

    .line 121
    .line 122
    mul-float v15, v15, v12

    .line 123
    .line 124
    sub-float/2addr v14, v15

    .line 125
    aput v14, v9, v13

    .line 126
    .line 127
    add-int/lit8 v13, v13, 0x1

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    invoke-static {v9, v9}, La/a;->q([F[F)F

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    float-to-double v10, v10

    .line 138
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 139
    .line 140
    .line 141
    move-result-wide v10

    .line 142
    double-to-float v10, v10

    .line 143
    const v11, 0x358637bd    # 1.0E-6f

    .line 144
    .line 145
    .line 146
    cmpg-float v12, v10, v11

    .line 147
    .line 148
    if-gez v12, :cond_9

    .line 149
    .line 150
    const v10, 0x358637bd    # 1.0E-6f

    .line 151
    .line 152
    .line 153
    :cond_9
    div-float v10, v6, v10

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    :goto_8
    if-ge v11, v0, :cond_a

    .line 157
    .line 158
    aget v12, v9, v11

    .line 159
    .line 160
    mul-float v12, v12, v10

    .line 161
    .line 162
    aput v12, v9, v11

    .line 163
    .line 164
    add-int/lit8 v11, v11, 0x1

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_a
    aget-object v10, v7, v8

    .line 168
    .line 169
    const/4 v11, 0x0

    .line 170
    :goto_9
    if-ge v11, v2, :cond_c

    .line 171
    .line 172
    if-ge v11, v8, :cond_b

    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    goto :goto_a

    .line 176
    :cond_b
    aget-object v12, v3, v11

    .line 177
    .line 178
    invoke-static {v9, v12}, La/a;->q([F[F)F

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    :goto_a
    aput v12, v10, v11

    .line 183
    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_d
    move v0, v1

    .line 191
    :goto_b
    const/4 v2, -0x1

    .line 192
    if-ge v2, v0, :cond_f

    .line 193
    .line 194
    aget-object v2, v5, v0

    .line 195
    .line 196
    move-object/from16 v3, p1

    .line 197
    .line 198
    invoke-static {v2, v3}, La/a;->q([F[F)F

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    aget-object v4, v7, v0

    .line 203
    .line 204
    add-int/lit8 v6, v0, 0x1

    .line 205
    .line 206
    if-gt v6, v1, :cond_e

    .line 207
    .line 208
    move v8, v1

    .line 209
    :goto_c
    aget v9, v4, v8

    .line 210
    .line 211
    aget v10, p3, v8

    .line 212
    .line 213
    mul-float v9, v9, v10

    .line 214
    .line 215
    sub-float/2addr v2, v9

    .line 216
    if-eq v8, v6, :cond_e

    .line 217
    .line 218
    add-int/lit8 v8, v8, -0x1

    .line 219
    .line 220
    goto :goto_c

    .line 221
    :cond_e
    aget v4, v4, v0

    .line 222
    .line 223
    div-float/2addr v2, v4

    .line 224
    aput v2, p3, v0

    .line 225
    .line 226
    add-int/lit8 v0, v0, -0x1

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_f
    return-void
.end method

.method public static final O(Lf1/k2;Lf1/c;I)V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lf1/k2;->v:I

    .line 2
    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lf1/k2;->u:I

    .line 6
    .line 7
    if-lt p2, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lf1/k2;->L()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lf1/k2;->v:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lf1/k2;->x(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Lf1/c;->j()V

    .line 26
    .line 27
    .line 28
    :cond_3
    invoke-virtual {p0}, Lf1/k2;->j()V

    .line 29
    .line 30
    .line 31
    goto :goto_0
.end method

.method public static P(Lua/e;Ljava/lang/String;Ljava/lang/String;I)Lua/e;
    .locals 6

    .line 1
    and-int/lit8 v0, p3, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x8

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    move-object p2, v3

    .line 16
    :cond_1
    iget-boolean p3, p0, Lua/e;->b:Z

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0}, Lua/e;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {p3, p1}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne v4, v5, :cond_4

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/16 v5, 0x61

    .line 55
    .line 56
    if-gt v5, v4, :cond_5

    .line 57
    .line 58
    const/16 v5, 0x7b

    .line 59
    .line 60
    if-ge v4, v5, :cond_5

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_5
    if-eqz p2, :cond_6

    .line 65
    .line 66
    invoke-static {p3, p1}, Lxb/i;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_6
    if-nez v0, :cond_7

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_7
    invoke-static {p3, p1}, Lxb/i;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_8

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_8
    invoke-static {v1, p0}, Lp9/p1;->y(ILjava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_9

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const-string p2, "substring(...)"

    .line 107
    .line 108
    if-eq p1, v2, :cond_e

    .line 109
    .line 110
    invoke-static {v2, p0}, Lp9/p1;->y(ILjava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_a

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_a
    new-instance p1, Ll9/d;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    sub-int/2addr p3, v2

    .line 124
    invoke-direct {p1, v1, p3, v2}, Ll9/b;-><init>(III)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ll9/b;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :cond_b
    move-object p3, p1

    .line 132
    check-cast p3, Ll9/c;

    .line 133
    .line 134
    iget-boolean v0, p3, Ll9/c;->c:Z

    .line 135
    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    invoke-virtual {p3}, Ll9/c;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    move-object v0, p3

    .line 143
    check-cast v0, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-static {v0, p0}, Lp9/p1;->y(ILjava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_b

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_c
    move-object p3, v3

    .line 157
    :goto_1
    check-cast p3, Ljava/lang/Integer;

    .line 158
    .line 159
    if-eqz p3, :cond_d

    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    sub-int/2addr p1, v2

    .line 166
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-static {p3, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p3}, Lp9/p1;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    goto :goto_3

    .line 189
    :cond_d
    invoke-static {p0}, Lp9/p1;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_3

    .line 194
    :cond_e
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_f

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    const/16 p3, 0x41

    .line 206
    .line 207
    if-gt p3, p1, :cond_10

    .line 208
    .line 209
    const/16 p3, 0x5b

    .line 210
    .line 211
    if-ge p1, p3, :cond_10

    .line 212
    .line 213
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-static {p0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    :cond_10
    :goto_3
    invoke-static {p0}, Lua/e;->f(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_11

    .line 244
    .line 245
    :goto_4
    return-object v3

    .line 246
    :cond_11
    invoke-static {p0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    return-object p0
.end method

.method public static final Q(Ls/h0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v2, v0, Ls/i0;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast v0, Ls/i0;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ls/i0;->l(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ls/i0;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2

    .line 31
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    return v1
.end method

.method public static final R(Ls/h0;Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Ls/h0;->a:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x2

    .line 5
    .line 6
    if-ltz v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    aget-wide v4, v0, v3

    .line 11
    .line 12
    not-long v6, v4

    .line 13
    const/4 v8, 0x7

    .line 14
    shl-long/2addr v6, v8

    .line 15
    and-long/2addr v6, v4

    .line 16
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v6, v8

    .line 22
    cmp-long v10, v6, v8

    .line 23
    .line 24
    if-eqz v10, :cond_4

    .line 25
    .line 26
    sub-int v6, v3, v1

    .line 27
    .line 28
    not-int v6, v6

    .line 29
    ushr-int/lit8 v6, v6, 0x1f

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    rsub-int/lit8 v6, v6, 0x8

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_1
    if-ge v8, v6, :cond_3

    .line 37
    .line 38
    const-wide/16 v9, 0xff

    .line 39
    .line 40
    and-long/2addr v9, v4

    .line 41
    const-wide/16 v11, 0x80

    .line 42
    .line 43
    cmp-long v13, v9, v11

    .line 44
    .line 45
    if-gez v13, :cond_2

    .line 46
    .line 47
    shl-int/lit8 v9, v3, 0x3

    .line 48
    .line 49
    add-int/2addr v9, v8

    .line 50
    iget-object v10, p0, Ls/h0;->b:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v10, v10, v9

    .line 53
    .line 54
    iget-object v10, p0, Ls/h0;->c:[Ljava/lang/Object;

    .line 55
    .line 56
    aget-object v10, v10, v9

    .line 57
    .line 58
    instance-of v11, v10, Ls/i0;

    .line 59
    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    check-cast v10, Ls/i0;

    .line 63
    .line 64
    invoke-virtual {v10, p1}, Ls/i0;->l(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Ls/i0;->g()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    if-ne v10, p1, :cond_1

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    const/4 v10, 0x0

    .line 77
    :goto_2
    if-eqz v10, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v9}, Ls/h0;->l(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    shr-long/2addr v4, v7

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v6, v7, :cond_5

    .line 87
    .line 88
    :cond_4
    if-eq v3, v1, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-void
.end method

.method public static final S(J)J
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
    int-to-float v1, v2

    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr p0, v2

    .line 13
    long-to-int p1, p0

    .line 14
    int-to-float p0, p1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v4, p1

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    int-to-long p0, p0

    .line 25
    shl-long v0, v4, v0

    .line 26
    .line 27
    and-long/2addr p0, v2

    .line 28
    or-long/2addr p0, v0

    .line 29
    return-wide p0
.end method

.method public static T(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lr1/p;Ll5/l;JJJFLf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p9

    .line 6
    .line 7
    const-string v3, "modifier"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v3, -0x869c62a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 16
    .line 17
    .line 18
    and-int/lit8 v3, p10, 0xe

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x2

    .line 31
    :goto_0
    or-int v3, p10, v3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move/from16 v3, p10

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v4, p10, 0x70

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/16 v4, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v4, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v3, v4

    .line 52
    :cond_3
    const v4, 0x36d80

    .line 53
    .line 54
    .line 55
    or-int/2addr v3, v4

    .line 56
    const v4, 0x5b6db

    .line 57
    .line 58
    .line 59
    and-int/2addr v3, v4

    .line 60
    const v4, 0x12492

    .line 61
    .line 62
    .line 63
    if-ne v3, v4, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Lf1/s;->z()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v0}, Lf1/s;->Q()V

    .line 73
    .line 74
    .line 75
    move-wide/from16 v3, p2

    .line 76
    .line 77
    move-wide/from16 v5, p4

    .line 78
    .line 79
    move-wide/from16 v7, p6

    .line 80
    .line 81
    move/from16 v9, p8

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    :goto_3
    sget-wide v3, Ly1/q;->l:J

    .line 85
    .line 86
    sget-wide v5, Ll5/q;->a:J

    .line 87
    .line 88
    sget-wide v7, Ll5/q;->b:J

    .line 89
    .line 90
    const/16 v9, 0xc

    .line 91
    .line 92
    int-to-float v9, v9

    .line 93
    sget-object v10, Lr2/i1;->h:Lf1/w2;

    .line 94
    .line 95
    invoke-virtual {v0, v10}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Ln3/c;

    .line 100
    .line 101
    new-instance v11, Lg9/x;

    .line 102
    .line 103
    invoke-direct {v11}, Lg9/x;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    iget-object v13, v2, Ll5/l;->f:Lf1/k1;

    .line 113
    .line 114
    if-eqz v13, :cond_6

    .line 115
    .line 116
    invoke-virtual {v13}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    check-cast v13, Ly1/q;

    .line 121
    .line 122
    iget-wide v13, v13, Ly1/q;->a:J

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    move-wide v13, v3

    .line 126
    :goto_4
    invoke-virtual {v12, v13, v14}, Ld7/q;->k(J)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v10, v9}, Ln3/c;->S(F)F

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-static {v10, v5, v6, v7, v8}, Lc7/a;->f(FJJ)Ld7/q;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    sget-object v13, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 138
    .line 139
    invoke-interface {v1, v13}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    new-instance v14, Ll5/f;

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    invoke-direct {v14, v11, v10, v15}, Ll5/f;-><init>(Lg9/x;Ld7/q;I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v13, v14}, Landroidx/compose/ui/layout/a;->e(Lr1/p;Lf9/k;)Lr1/p;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    new-instance v13, Ll5/f;

    .line 154
    .line 155
    const/4 v14, 0x1

    .line 156
    invoke-direct {v13, v11, v12, v14}, Ll5/f;-><init>(Lg9/x;Ld7/q;I)V

    .line 157
    .line 158
    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-static {v11, v0, v13, v10}, Lp4/e;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    if-eqz v11, :cond_7

    .line 168
    .line 169
    new-instance v0, Ll5/g;

    .line 170
    .line 171
    move/from16 v10, p10

    .line 172
    .line 173
    invoke-direct/range {v0 .. v10}, Ll5/g;-><init>(Lr1/p;Ll5/l;JJJFI)V

    .line 174
    .line 175
    .line 176
    iput-object v0, v11, Lf1/w1;->d:Lf9/n;

    .line 177
    .line 178
    :cond_7
    return-void
.end method

.method public static final b(Landroid/content/Context;)Ln3/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    new-instance v1, Ln3/e;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    invoke-static {v0}, Lo3/b;->a(F)Lo3/a;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Ln3/n;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ln3/n;-><init>(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {v1, p0, v0, v2}, Ln3/e;-><init>(FFLo3/a;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public static final c(Lr1/p;Ll5/l;ZLf9/k;Lf1/s;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v9, p4

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "controller"

    .line 13
    .line 14
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x672dcb4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v9, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p5, 0xe

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v9, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int v0, p5, v0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move/from16 v0, p5

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v3, p5, 0x70

    .line 42
    .line 43
    const/16 v4, 0x20

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v9, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const/16 v3, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v3, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v3

    .line 59
    :cond_3
    or-int/lit16 v3, v0, 0xc80

    .line 60
    .line 61
    const v5, 0xe000

    .line 62
    .line 63
    .line 64
    and-int v5, p5, v5

    .line 65
    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    or-int/lit16 v3, v0, 0x2c80

    .line 69
    .line 70
    :cond_4
    const/high16 v0, 0x70000

    .line 71
    .line 72
    and-int v5, p5, v0

    .line 73
    .line 74
    if-nez v5, :cond_6

    .line 75
    .line 76
    move-object/from16 v5, p3

    .line 77
    .line 78
    invoke-virtual {v9, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_5

    .line 83
    .line 84
    const/high16 v6, 0x20000

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const/high16 v6, 0x10000

    .line 88
    .line 89
    :goto_3
    or-int/2addr v3, v6

    .line 90
    goto :goto_4

    .line 91
    :cond_6
    move-object/from16 v5, p3

    .line 92
    .line 93
    :goto_4
    const/high16 v6, 0x180000

    .line 94
    .line 95
    or-int/2addr v3, v6

    .line 96
    const v6, 0x2db6db

    .line 97
    .line 98
    .line 99
    and-int/2addr v6, v3

    .line 100
    const v7, 0x92492

    .line 101
    .line 102
    .line 103
    if-ne v6, v7, :cond_8

    .line 104
    .line 105
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_7

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 113
    .line 114
    .line 115
    move/from16 v3, p2

    .line 116
    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_8
    :goto_5
    invoke-virtual {v9}, Lf1/s;->S()V

    .line 120
    .line 121
    .line 122
    and-int/lit8 v6, p5, 0x1

    .line 123
    .line 124
    const v7, -0xe001

    .line 125
    .line 126
    .line 127
    if-eqz v6, :cond_a

    .line 128
    .line 129
    invoke-virtual {v9}, Lf1/s;->x()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_9

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 137
    .line 138
    .line 139
    and-int/2addr v3, v7

    .line 140
    move v6, v3

    .line 141
    move/from16 v3, p2

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_a
    :goto_6
    and-int/2addr v3, v7

    .line 145
    move v6, v3

    .line 146
    const/4 v3, 0x1

    .line 147
    :goto_7
    invoke-virtual {v9}, Lf1/s;->q()V

    .line 148
    .line 149
    .line 150
    const v7, 0x46c84b80    # 25637.75f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v7}, Lf1/s;->X(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 161
    .line 162
    if-ne v7, v10, :cond_b

    .line 163
    .line 164
    new-instance v7, Ln3/l;

    .line 165
    .line 166
    const-wide/16 v11, 0x0

    .line 167
    .line 168
    invoke-direct {v7, v11, v12}, Ln3/l;-><init>(J)V

    .line 169
    .line 170
    .line 171
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v9, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_b
    check-cast v7, Lf1/b1;

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 182
    .line 183
    .line 184
    const v12, 0x46c852bf

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v12}, Lf1/s;->X(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    if-ne v12, v10, :cond_c

    .line 195
    .line 196
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    check-cast v12, Ln3/l;

    .line 201
    .line 202
    iget-wide v12, v12, Ln3/l;->a:J

    .line 203
    .line 204
    shr-long v14, v12, v4

    .line 205
    .line 206
    long-to-int v15, v14

    .line 207
    const-wide v16, 0xffffffffL

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    and-long v12, v12, v16

    .line 213
    .line 214
    long-to-int v13, v12

    .line 215
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    int-to-float v12, v12

    .line 220
    const/high16 v13, 0x3f000000    # 0.5f

    .line 221
    .line 222
    mul-float v12, v12, v13

    .line 223
    .line 224
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-static {v12}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v9, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    check-cast v12, Lf1/b1;

    .line 236
    .line 237
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 238
    .line 239
    .line 240
    const v13, 0x46c859df

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v13}, Lf1/s;->X(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    if-ne v13, v10, :cond_d

    .line 251
    .line 252
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    check-cast v13, Ln3/l;

    .line 257
    .line 258
    iget-wide v13, v13, Ln3/l;->a:J

    .line 259
    .line 260
    invoke-static {v13, v14}, Lm9/e0;->d0(J)J

    .line 261
    .line 262
    .line 263
    move-result-wide v13

    .line 264
    new-instance v15, Lx1/b;

    .line 265
    .line 266
    invoke-direct {v15, v13, v14}, Lx1/b;-><init>(J)V

    .line 267
    .line 268
    .line 269
    invoke-static {v15}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    invoke-virtual {v9, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_d
    check-cast v13, Lf1/b1;

    .line 277
    .line 278
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 279
    .line 280
    .line 281
    sget-object v14, Landroidx/compose/foundation/layout/c;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 282
    .line 283
    invoke-interface {v1, v14}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 284
    .line 285
    .line 286
    move-result-object v14

    .line 287
    const v15, 0x46c88264

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v15}, Lf1/s;->X(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    if-ne v15, v10, :cond_e

    .line 298
    .line 299
    new-instance v15, Lc8/k;

    .line 300
    .line 301
    const/high16 v16, 0x70000

    .line 302
    .line 303
    const/4 v0, 0x4

    .line 304
    invoke-direct {v15, v0, v7, v12, v13}, Lc8/k;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v15}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_e
    const/high16 v16, 0x70000

    .line 312
    .line 313
    :goto_8
    check-cast v15, Lf9/k;

    .line 314
    .line 315
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 316
    .line 317
    .line 318
    const v0, 0x46c8905c

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v0}, Lf1/s;->X(I)V

    .line 322
    .line 323
    .line 324
    const/high16 v0, 0x380000

    .line 325
    .line 326
    and-int/2addr v0, v6

    .line 327
    const/high16 v7, 0x100000

    .line 328
    .line 329
    if-ne v0, v7, :cond_f

    .line 330
    .line 331
    const/4 v0, 0x1

    .line 332
    goto :goto_9

    .line 333
    :cond_f
    const/4 v0, 0x0

    .line 334
    :goto_9
    and-int/lit8 v7, v6, 0x70

    .line 335
    .line 336
    if-ne v7, v4, :cond_10

    .line 337
    .line 338
    const/16 v17, 0x1

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_10
    const/16 v17, 0x0

    .line 342
    .line 343
    :goto_a
    or-int v0, v0, v17

    .line 344
    .line 345
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    if-nez v0, :cond_11

    .line 350
    .line 351
    if-ne v8, v10, :cond_12

    .line 352
    .line 353
    :cond_11
    new-instance v8, Ll0/u;

    .line 354
    .line 355
    const/4 v0, 0x4

    .line 356
    invoke-direct {v8, v2, v13, v12, v0}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_12
    check-cast v8, Lf9/k;

    .line 363
    .line 364
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 365
    .line 366
    .line 367
    const v0, 0x46c8ebe6

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v0}, Lf1/s;->X(I)V

    .line 371
    .line 372
    .line 373
    if-ne v7, v4, :cond_13

    .line 374
    .line 375
    const/16 v17, 0x1

    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_13
    const/16 v17, 0x0

    .line 379
    .line 380
    :goto_b
    invoke-virtual {v9}, Lf1/s;->K()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-nez v17, :cond_14

    .line 385
    .line 386
    if-ne v0, v10, :cond_15

    .line 387
    .line 388
    :cond_14
    new-instance v0, Ll5/p;

    .line 389
    .line 390
    const/4 v4, 0x1

    .line 391
    invoke-direct {v0, v2, v4}, Ll5/p;-><init>(Ll5/l;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v9, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_15
    check-cast v0, Lf9/n;

    .line 398
    .line 399
    invoke-virtual {v9, v11}, Lf1/s;->p(Z)V

    .line 400
    .line 401
    .line 402
    const v4, 0x180200

    .line 403
    .line 404
    .line 405
    or-int/2addr v4, v7

    .line 406
    and-int/lit16 v7, v6, 0x1c00

    .line 407
    .line 408
    or-int/2addr v4, v7

    .line 409
    and-int v6, v6, v16

    .line 410
    .line 411
    or-int v10, v4, v6

    .line 412
    .line 413
    move v4, v3

    .line 414
    move-object v7, v8

    .line 415
    move-object v6, v15

    .line 416
    move-object v8, v0

    .line 417
    move-object v3, v2

    .line 418
    move-object v2, v14

    .line 419
    invoke-static/range {v2 .. v10}, Li9/a;->a(Lr1/p;Ll5/l;ZLf9/k;Lf9/k;Lf9/k;Lf9/n;Lf1/s;I)V

    .line 420
    .line 421
    .line 422
    move v3, v4

    .line 423
    :goto_c
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    if-eqz v6, :cond_16

    .line 428
    .line 429
    new-instance v0, Lj8/j;

    .line 430
    .line 431
    move-object/from16 v2, p1

    .line 432
    .line 433
    move-object/from16 v4, p3

    .line 434
    .line 435
    move/from16 v5, p5

    .line 436
    .line 437
    invoke-direct/range {v0 .. v5}, Lj8/j;-><init>(Lr1/p;Ll5/l;ZLf9/k;I)V

    .line 438
    .line 439
    .line 440
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 441
    .line 442
    :cond_16
    return-void
.end method

.method public static final d(I)J
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    const/4 p0, 0x0

    .line 6
    int-to-long v2, p0

    .line 7
    const-wide v4, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v2, v4

    .line 13
    or-long/2addr v0, v2

    .line 14
    sget p0, Li2/a;->p:I

    .line 15
    .line 16
    return-wide v0
.end method

.method public static final e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move/from16 v0, p5

    .line 8
    .line 9
    const-string v3, "descriptionContent"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v3, -0xe67daaa

    .line 15
    .line 16
    .line 17
    invoke-virtual {v7, v3}, Lf1/s;->Y(I)Lf1/s;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v3, v0, 0x6

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v7, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

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
    or-int/2addr v3, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v3, v0

    .line 36
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v7, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v5, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v3, v5

    .line 52
    :cond_3
    and-int/lit8 v5, p6, 0x4

    .line 53
    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    or-int/lit16 v3, v3, 0x180

    .line 57
    .line 58
    :cond_4
    move/from16 v9, p2

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    and-int/lit16 v9, v0, 0x180

    .line 62
    .line 63
    if-nez v9, :cond_4

    .line 64
    .line 65
    move/from16 v9, p2

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Lf1/s;->g(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_6

    .line 72
    .line 73
    const/16 v10, 0x100

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    const/16 v10, 0x80

    .line 77
    .line 78
    :goto_3
    or-int/2addr v3, v10

    .line 79
    :goto_4
    and-int/lit8 v10, p6, 0x8

    .line 80
    .line 81
    if-eqz v10, :cond_8

    .line 82
    .line 83
    or-int/lit16 v3, v3, 0xc00

    .line 84
    .line 85
    :cond_7
    move-object/from16 v12, p3

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_8
    and-int/lit16 v12, v0, 0xc00

    .line 89
    .line 90
    if-nez v12, :cond_7

    .line 91
    .line 92
    move-object/from16 v12, p3

    .line 93
    .line 94
    invoke-virtual {v7, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-eqz v13, :cond_9

    .line 99
    .line 100
    const/16 v13, 0x800

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_9
    const/16 v13, 0x400

    .line 104
    .line 105
    :goto_5
    or-int/2addr v3, v13

    .line 106
    :goto_6
    and-int/lit16 v13, v3, 0x493

    .line 107
    .line 108
    const/16 v14, 0x492

    .line 109
    .line 110
    if-ne v13, v14, :cond_b

    .line 111
    .line 112
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-nez v13, :cond_a

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_a
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 120
    .line 121
    .line 122
    move-object v4, v12

    .line 123
    :goto_7
    move v3, v9

    .line 124
    goto/16 :goto_11

    .line 125
    .line 126
    :cond_b
    :goto_8
    const/4 v13, 0x1

    .line 127
    if-eqz v5, :cond_c

    .line 128
    .line 129
    const/4 v9, 0x1

    .line 130
    :cond_c
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 131
    .line 132
    const v14, 0x6e3c21fe

    .line 133
    .line 134
    .line 135
    const/4 v15, 0x0

    .line 136
    if-eqz v10, :cond_e

    .line 137
    .line 138
    invoke-virtual {v7, v14}, Lf1/s;->W(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    if-ne v10, v5, :cond_d

    .line 146
    .line 147
    new-instance v10, Lb3/f0;

    .line 148
    .line 149
    const/16 v12, 0x9

    .line 150
    .line 151
    invoke-direct {v10, v12}, Lb3/f0;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_d
    check-cast v10, Lf9/a;

    .line 158
    .line 159
    invoke-virtual {v7, v15}, Lf1/s;->p(Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_e
    move-object v10, v12

    .line 164
    :goto_9
    sget-object v12, Lr1/c;->k:Lr1/g;

    .line 165
    .line 166
    const/16 v16, 0x20

    .line 167
    .line 168
    sget-object v8, Ld0/h;->e:Ld0/d;

    .line 169
    .line 170
    sget-object v4, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 171
    .line 172
    const/16 v6, 0xa

    .line 173
    .line 174
    invoke-static {v6, v7}, Lg5/a;->B(ILf1/s;)F

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    const/4 v11, 0x0

    .line 179
    invoke-static {v4, v11, v6, v13}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    invoke-virtual {v7, v14}, Lf1/s;->W(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    if-ne v4, v5, :cond_f

    .line 191
    .line 192
    invoke-static {v7}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :cond_f
    move-object/from16 v20, v4

    .line 197
    .line 198
    check-cast v20, Lb0/k;

    .line 199
    .line 200
    invoke-virtual {v7, v15}, Lf1/s;->p(Z)V

    .line 201
    .line 202
    .line 203
    const v4, 0x4c5de2

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v4}, Lf1/s;->W(I)V

    .line 207
    .line 208
    .line 209
    and-int/lit16 v4, v3, 0x1c00

    .line 210
    .line 211
    const/16 v6, 0x800

    .line 212
    .line 213
    if-ne v4, v6, :cond_10

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    goto :goto_a

    .line 217
    :cond_10
    const/4 v4, 0x0

    .line 218
    :goto_a
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    if-nez v4, :cond_11

    .line 223
    .line 224
    if-ne v6, v5, :cond_12

    .line 225
    .line 226
    :cond_11
    new-instance v6, Lc8/g;

    .line 227
    .line 228
    const/16 v4, 0xe

    .line 229
    .line 230
    invoke-direct {v6, v10, v4}, Lc8/g;-><init>(Lf9/a;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_12
    move-object/from16 v23, v6

    .line 237
    .line 238
    check-cast v23, Lf9/a;

    .line 239
    .line 240
    invoke-virtual {v7, v15}, Lf1/s;->p(Z)V

    .line 241
    .line 242
    .line 243
    const/16 v24, 0x1c

    .line 244
    .line 245
    const/16 v21, 0x0

    .line 246
    .line 247
    const/16 v22, 0x0

    .line 248
    .line 249
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/a;->c(Lr1/p;Lb0/k;Lx/n0;ZLf9/a;I)Lr1/p;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    const/16 v5, 0x36

    .line 254
    .line 255
    invoke-static {v8, v12, v7, v5}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    move-object/from16 p2, v12

    .line 260
    .line 261
    iget-wide v11, v7, Lf1/s;->T:J

    .line 262
    .line 263
    ushr-long v18, v11, v16

    .line 264
    .line 265
    xor-long v11, v11, v18

    .line 266
    .line 267
    long-to-int v8, v11

    .line 268
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    invoke-static {v7, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    sget-object v12, Lq2/j;->d0:Lq2/i;

    .line 277
    .line 278
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    sget-object v12, Lq2/i;->b:Lq2/a0;

    .line 282
    .line 283
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 284
    .line 285
    .line 286
    iget-boolean v14, v7, Lf1/s;->S:Z

    .line 287
    .line 288
    if-eqz v14, :cond_13

    .line 289
    .line 290
    invoke-virtual {v7, v12}, Lf1/s;->k(Lf9/a;)V

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_13
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 295
    .line 296
    .line 297
    :goto_b
    sget-object v14, Lq2/i;->e:Lq2/h;

    .line 298
    .line 299
    invoke-static {v7, v14, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    sget-object v6, Lq2/i;->d:Lq2/h;

    .line 303
    .line 304
    invoke-static {v7, v6, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    sget-object v11, Lq2/i;->f:Lq2/h;

    .line 308
    .line 309
    iget-boolean v5, v7, Lf1/s;->S:Z

    .line 310
    .line 311
    if-nez v5, :cond_14

    .line 312
    .line 313
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v15

    .line 321
    invoke-static {v5, v15}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-nez v5, :cond_15

    .line 326
    .line 327
    :cond_14
    invoke-static {v8, v7, v8, v11}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 328
    .line 329
    .line 330
    :cond_15
    sget-object v5, Lq2/i;->c:Lq2/h;

    .line 331
    .line 332
    invoke-static {v7, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    const/high16 v4, 0x3f800000    # 1.0f

    .line 336
    .line 337
    move-object v15, v14

    .line 338
    float-to-double v13, v4

    .line 339
    const-wide/16 v20, 0x0

    .line 340
    .line 341
    cmpl-double v22, v13, v20

    .line 342
    .line 343
    if-lez v22, :cond_16

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_16
    const-string v13, "invalid weight; must be greater than zero"

    .line 347
    .line 348
    invoke-static {v13}, Le0/a;->a(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :goto_c
    new-instance v13, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 352
    .line 353
    const/4 v8, 0x1

    .line 354
    invoke-direct {v13, v4, v8}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 355
    .line 356
    .line 357
    const/16 v4, 0x10

    .line 358
    .line 359
    invoke-static {v4, v7}, Lg5/a;->B(ILf1/s;)F

    .line 360
    .line 361
    .line 362
    move-result v23

    .line 363
    const/16 v24, 0x0

    .line 364
    .line 365
    const/16 v25, 0xb

    .line 366
    .line 367
    const/16 v21, 0x0

    .line 368
    .line 369
    const/16 v22, 0x0

    .line 370
    .line 371
    move-object/from16 v20, v13

    .line 372
    .line 373
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    sget-object v13, Ld0/h;->c:Ld0/b;

    .line 378
    .line 379
    sget-object v14, Lr1/c;->m:Lr1/f;

    .line 380
    .line 381
    const/4 v8, 0x0

    .line 382
    invoke-static {v13, v14, v7, v8}, Ld0/q;->a(Ld0/g;Lr1/f;Lf1/s;I)Ld0/s;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    iget-wide v13, v7, Lf1/s;->T:J

    .line 387
    .line 388
    ushr-long v19, v13, v16

    .line 389
    .line 390
    xor-long v13, v13, v19

    .line 391
    .line 392
    long-to-int v14, v13

    .line 393
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 394
    .line 395
    .line 396
    move-result-object v13

    .line 397
    invoke-static {v7, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 402
    .line 403
    .line 404
    iget-boolean v0, v7, Lf1/s;->S:Z

    .line 405
    .line 406
    if-eqz v0, :cond_17

    .line 407
    .line 408
    invoke-virtual {v7, v12}, Lf1/s;->k(Lf9/a;)V

    .line 409
    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_17
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 413
    .line 414
    .line 415
    :goto_d
    invoke-static {v7, v15, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v7, v6, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-boolean v0, v7, Lf1/s;->S:Z

    .line 422
    .line 423
    if-nez v0, :cond_18

    .line 424
    .line 425
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    invoke-static {v0, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_19

    .line 438
    .line 439
    :cond_18
    invoke-static {v14, v7, v14, v11}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 440
    .line 441
    .line 442
    :cond_19
    invoke-static {v7, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    and-int/lit8 v0, v3, 0xe

    .line 446
    .line 447
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v1, v7, v0}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const/4 v8, 0x1

    .line 455
    invoke-virtual {v7, v8}, Lf1/s;->p(Z)V

    .line 456
    .line 457
    .line 458
    sget-object v0, Ld0/h;->b:Ld0/b;

    .line 459
    .line 460
    const/16 v4, 0x64

    .line 461
    .line 462
    invoke-static {v4, v7}, Lg5/a;->B(ILf1/s;)F

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    const/4 v13, 0x0

    .line 467
    const/4 v14, 0x2

    .line 468
    invoke-static {v4, v13, v14}, Landroidx/compose/foundation/layout/c;->l(FFI)Lr1/p;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    move-object/from16 v13, p2

    .line 473
    .line 474
    const/16 v14, 0x36

    .line 475
    .line 476
    invoke-static {v0, v13, v7, v14}, Ld0/l0;->a(Ld0/e;Lr1/g;Lf1/s;I)Ld0/n0;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iget-wide v13, v7, Lf1/s;->T:J

    .line 481
    .line 482
    ushr-long v16, v13, v16

    .line 483
    .line 484
    xor-long v13, v13, v16

    .line 485
    .line 486
    long-to-int v14, v13

    .line 487
    invoke-virtual {v7}, Lf1/s;->l()Lf1/q1;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    invoke-static {v7, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v7}, Lf1/s;->a0()V

    .line 496
    .line 497
    .line 498
    iget-boolean v8, v7, Lf1/s;->S:Z

    .line 499
    .line 500
    if-eqz v8, :cond_1a

    .line 501
    .line 502
    invoke-virtual {v7, v12}, Lf1/s;->k(Lf9/a;)V

    .line 503
    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_1a
    invoke-virtual {v7}, Lf1/s;->k0()V

    .line 507
    .line 508
    .line 509
    :goto_e
    invoke-static {v7, v15, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v7, v6, v13}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    iget-boolean v0, v7, Lf1/s;->S:Z

    .line 516
    .line 517
    if-nez v0, :cond_1b

    .line 518
    .line 519
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    invoke-static {v0, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-nez v0, :cond_1c

    .line 532
    .line 533
    :cond_1b
    invoke-static {v14, v7, v14, v11}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 534
    .line 535
    .line 536
    :cond_1c
    invoke-static {v7, v5, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    shr-int/lit8 v0, v3, 0x3

    .line 540
    .line 541
    and-int/lit8 v0, v0, 0xe

    .line 542
    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-interface {v2, v7, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    const/4 v8, 0x1

    .line 551
    invoke-virtual {v7, v8}, Lf1/s;->p(Z)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v8}, Lf1/s;->p(Z)V

    .line 555
    .line 556
    .line 557
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    if-eqz v9, :cond_1d

    .line 562
    .line 563
    goto :goto_f

    .line 564
    :cond_1d
    const/4 v0, 0x0

    .line 565
    :goto_f
    if-nez v0, :cond_1e

    .line 566
    .line 567
    goto :goto_10

    .line 568
    :cond_1e
    int-to-float v4, v8

    .line 569
    const-wide/16 v5, 0x0

    .line 570
    .line 571
    const/16 v8, 0x30

    .line 572
    .line 573
    const/4 v3, 0x0

    .line 574
    invoke-static/range {v3 .. v8}, Lc1/g1;->d(Lr1/p;FJLf1/s;I)V

    .line 575
    .line 576
    .line 577
    :goto_10
    move-object v4, v10

    .line 578
    goto/16 :goto_7

    .line 579
    .line 580
    :goto_11
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    if-eqz v8, :cond_1f

    .line 585
    .line 586
    new-instance v0, Lj8/a0;

    .line 587
    .line 588
    const/4 v7, 0x0

    .line 589
    move/from16 v5, p5

    .line 590
    .line 591
    move/from16 v6, p6

    .line 592
    .line 593
    invoke-direct/range {v0 .. v7}, Lj8/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLf9/a;III)V

    .line 594
    .line 595
    .line 596
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 597
    .line 598
    :cond_1f
    return-void
.end method

.method public static final f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    move/from16 v9, p6

    .line 10
    .line 11
    iget-object v3, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const v4, 0x4ad1e1f8    # 6877436.0f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v4}, Lf1/s;->Y(I)Lf1/s;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v4, v9, 0x6

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v8, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x2

    .line 32
    :goto_0
    or-int/2addr v4, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v9

    .line 35
    :goto_1
    invoke-virtual {v8, v2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/16 v6, 0x20

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v5, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v4, v5

    .line 49
    invoke-virtual {v8, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    const/16 v5, 0x100

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const/16 v5, 0x80

    .line 59
    .line 60
    :goto_3
    or-int/2addr v4, v5

    .line 61
    and-int/lit8 v5, p7, 0x8

    .line 62
    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    or-int/lit16 v4, v4, 0xc00

    .line 66
    .line 67
    :cond_4
    move/from16 v7, p3

    .line 68
    .line 69
    :goto_4
    move v10, v4

    .line 70
    goto :goto_6

    .line 71
    :cond_5
    and-int/lit16 v7, v9, 0xc00

    .line 72
    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    move/from16 v7, p3

    .line 76
    .line 77
    invoke-virtual {v8, v7}, Lf1/s;->g(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_6

    .line 82
    .line 83
    const/16 v10, 0x800

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    const/16 v10, 0x400

    .line 87
    .line 88
    :goto_5
    or-int/2addr v4, v10

    .line 89
    goto :goto_4

    .line 90
    :goto_6
    and-int/lit16 v4, v10, 0x2493

    .line 91
    .line 92
    const/16 v11, 0x2492

    .line 93
    .line 94
    if-ne v4, v11, :cond_8

    .line 95
    .line 96
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_7

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_7
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 104
    .line 105
    .line 106
    move v4, v7

    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_8
    :goto_7
    const/4 v4, 0x1

    .line 110
    if-eqz v5, :cond_9

    .line 111
    .line 112
    const/4 v11, 0x1

    .line 113
    goto :goto_8

    .line 114
    :cond_9
    move v11, v7

    .line 115
    :goto_8
    const v5, 0x6e3c21fe

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v5}, Lf1/s;->W(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    sget-object v12, Lf1/n;->a:Lf1/w0;

    .line 126
    .line 127
    if-ne v7, v12, :cond_a

    .line 128
    .line 129
    move-object v7, v3

    .line 130
    check-cast v7, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    new-instance v13, Lf1/h1;

    .line 137
    .line 138
    invoke-direct {v13, v7}, Lf1/h1;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v13}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    move-object v7, v13

    .line 145
    :cond_a
    move-object v13, v7

    .line 146
    check-cast v13, Lf1/h1;

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    invoke-static {v8, v14, v5}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-ne v5, v12, :cond_b

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    new-instance v5, Lf1/h1;

    .line 162
    .line 163
    invoke-direct {v5, v3}, Lf1/h1;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_b
    check-cast v5, Lf1/h1;

    .line 170
    .line 171
    invoke-virtual {v8, v14}, Lf1/s;->p(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Lf1/h1;->f()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    const v3, -0x6815fd56

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v3}, Lf1/s;->W(I)V

    .line 186
    .line 187
    .line 188
    and-int/lit8 v3, v10, 0x70

    .line 189
    .line 190
    if-ne v3, v6, :cond_c

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_c
    const/4 v4, 0x0

    .line 194
    :goto_9
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-nez v4, :cond_d

    .line 199
    .line 200
    if-ne v3, v12, :cond_e

    .line 201
    .line 202
    :cond_d
    new-instance v2, Lj8/n;

    .line 203
    .line 204
    const/4 v6, 0x0

    .line 205
    const/4 v7, 0x2

    .line 206
    move-object/from16 v4, p1

    .line 207
    .line 208
    move-object/from16 v3, p4

    .line 209
    .line 210
    invoke-direct/range {v2 .. v7}, Lj8/n;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lw8/c;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    move-object v3, v2

    .line 217
    :cond_e
    check-cast v3, Lf9/n;

    .line 218
    .line 219
    invoke-virtual {v8, v14}, Lf1/s;->p(Z)V

    .line 220
    .line 221
    .line 222
    invoke-static {v8, v3, v15}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    new-instance v2, Lj8/c0;

    .line 226
    .line 227
    invoke-direct {v2, v1, v0, v13, v5}, Lj8/c0;-><init>(Ljava/util/List;Lr8/j;Lf1/h1;Lf1/h1;)V

    .line 228
    .line 229
    .line 230
    const v3, 0x70da16a1

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v2, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v3, Lj8/c0;

    .line 238
    .line 239
    invoke-direct {v3, v0, v13, v5, v1}, Lj8/c0;-><init>(Lr8/j;Lf1/h1;Lf1/h1;Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    const v4, 0x79759b00

    .line 243
    .line 244
    .line 245
    invoke-static {v4, v3, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    shr-int/lit8 v4, v10, 0x3

    .line 250
    .line 251
    and-int/lit16 v4, v4, 0x380

    .line 252
    .line 253
    or-int/lit8 v7, v4, 0x36

    .line 254
    .line 255
    const/16 v8, 0x8

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    move-object/from16 v6, p5

    .line 259
    .line 260
    move v4, v11

    .line 261
    invoke-static/range {v2 .. v8}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 262
    .line 263
    .line 264
    :goto_a
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    if-eqz v8, :cond_f

    .line 269
    .line 270
    new-instance v0, Lj8/b0;

    .line 271
    .line 272
    move-object/from16 v2, p1

    .line 273
    .line 274
    move-object/from16 v3, p2

    .line 275
    .line 276
    move-object/from16 v5, p4

    .line 277
    .line 278
    move/from16 v7, p7

    .line 279
    .line 280
    move v6, v9

    .line 281
    invoke-direct/range {v0 .. v7}, Lj8/b0;-><init>(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;II)V

    .line 282
    .line 283
    .line 284
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 285
    .line 286
    :cond_f
    return-void
.end method

.method public static g(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

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

.method public static final h([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Ls8/l;->R([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, v1, p1, v2}, Ls8/l;->P([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    aput-object p3, v0, p1

    .line 22
    .line 23
    return-object v0
.end method

.method public static final i([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x2

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Ls8/l;->R([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x2

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, p1, v1, v2}, Ls8/l;->P([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final j([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-static {p0, v0, v1, p1, v2}, Ls8/l;->R([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-static {p0, v0, p1, v1, v2}, Ls8/l;->P([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final k(Ls/h0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ls/h0;->f(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Ls/h0;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    :goto_1
    if-nez v2, :cond_2

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_2
    instance-of v3, v2, Ls/i0;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Ls/i0;

    .line 27
    .line 28
    invoke-virtual {v3, p2}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    if-eq v2, p2, :cond_4

    .line 33
    .line 34
    new-instance v3, Ls/i0;

    .line 35
    .line 36
    invoke-direct {v3}, Ls/i0;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-object p2, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    move-object p2, v2

    .line 48
    :goto_3
    if-eqz v1, :cond_5

    .line 49
    .line 50
    not-int v0, v0

    .line 51
    iget-object v1, p0, Ls/h0;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v1, v0

    .line 54
    .line 55
    iget-object p0, p0, Ls/h0;->c:[Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p2, p0, v0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    iget-object p0, p0, Ls/h0;->c:[Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p2, p0, v0

    .line 63
    .line 64
    return-void
.end method

.method public static final l(Ll2/d;Lk2/w;J)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Ll2/d;->b:Ll2/c;

    .line 8
    .line 9
    iget-object v5, v0, Ll2/d;->a:Ll2/c;

    .line 10
    .line 11
    invoke-static {v1}, Lk2/v;->a(Lk2/w;)Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-wide v7, v1, Lk2/w;->b:J

    .line 16
    .line 17
    const-wide/16 v9, 0x0

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    iget-object v6, v5, Ll2/c;->d:[Ll2/a;

    .line 24
    .line 25
    array-length v13, v6

    .line 26
    invoke-static {v12, v13, v11, v6}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput v12, v5, Ll2/c;->e:I

    .line 30
    .line 31
    iget-object v6, v4, Ll2/c;->d:[Ll2/a;

    .line 32
    .line 33
    array-length v13, v6

    .line 34
    invoke-static {v12, v13, v11, v6}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput v12, v4, Ll2/c;->e:I

    .line 38
    .line 39
    iput-wide v9, v0, Ll2/d;->c:J

    .line 40
    .line 41
    :cond_0
    invoke-static {v1}, Lk2/v;->c(Lk2/w;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    iget-object v6, v1, Lk2/w;->k:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 52
    .line 53
    :cond_1
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    const/4 v14, 0x0

    .line 58
    :goto_0
    const/16 v16, 0x20

    .line 59
    .line 60
    if-ge v14, v13, :cond_2

    .line 61
    .line 62
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v17

    .line 66
    const-wide v18, 0xffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    move-object/from16 v15, v17

    .line 72
    .line 73
    check-cast v15, Lk2/c;

    .line 74
    .line 75
    iget-wide v9, v15, Lk2/c;->a:J

    .line 76
    .line 77
    iget-wide v11, v15, Lk2/c;->c:J

    .line 78
    .line 79
    invoke-static {v11, v12, v2, v3}, Lx1/b;->h(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    move-wide/from16 v20, v11

    .line 84
    .line 85
    shr-long v11, v20, v16

    .line 86
    .line 87
    long-to-int v12, v11

    .line 88
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-virtual {v5, v11, v9, v10}, Ll2/c;->a(FJ)V

    .line 93
    .line 94
    .line 95
    and-long v11, v20, v18

    .line 96
    .line 97
    long-to-int v12, v11

    .line 98
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    invoke-virtual {v4, v11, v9, v10}, Ll2/c;->a(FJ)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v14, v14, 0x1

    .line 106
    .line 107
    const-wide/16 v9, 0x0

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x0

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-wide v18, 0xffffffffL

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    iget-wide v9, v1, Lk2/w;->l:J

    .line 118
    .line 119
    invoke-static {v9, v10, v2, v3}, Lx1/b;->h(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    shr-long v9, v2, v16

    .line 124
    .line 125
    long-to-int v6, v9

    .line 126
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {v5, v6, v7, v8}, Ll2/c;->a(FJ)V

    .line 131
    .line 132
    .line 133
    and-long v2, v2, v18

    .line 134
    .line 135
    long-to-int v3, v2

    .line 136
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v4, v2, v7, v8}, Ll2/c;->a(FJ)V

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-static {v1}, Lk2/v;->c(Lk2/w;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    iget-wide v1, v0, Ll2/d;->c:J

    .line 150
    .line 151
    sub-long v1, v7, v1

    .line 152
    .line 153
    const-wide/16 v9, 0x28

    .line 154
    .line 155
    cmp-long v3, v1, v9

    .line 156
    .line 157
    if-lez v3, :cond_4

    .line 158
    .line 159
    iget-object v1, v5, Ll2/c;->d:[Ll2/a;

    .line 160
    .line 161
    array-length v2, v1

    .line 162
    const/4 v3, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    invoke-static {v6, v2, v3, v1}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iput v6, v5, Ll2/c;->e:I

    .line 168
    .line 169
    iget-object v1, v4, Ll2/c;->d:[Ll2/a;

    .line 170
    .line 171
    array-length v2, v1

    .line 172
    invoke-static {v6, v2, v3, v1}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iput v6, v4, Ll2/c;->e:I

    .line 176
    .line 177
    const-wide/16 v1, 0x0

    .line 178
    .line 179
    iput-wide v1, v0, Ll2/d;->c:J

    .line 180
    .line 181
    :cond_4
    iput-wide v7, v0, Ll2/d;->c:J

    .line 182
    .line 183
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final n(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "possiblyPrimitiveType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    check-cast p0, Lna/l;

    .line 9
    .line 10
    instance-of p1, p0, Lna/k;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move-object p1, p0

    .line 15
    check-cast p1, Lna/k;

    .line 16
    .line 17
    iget-object p1, p1, Lna/k;->i:Lcb/c;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p1, Lcb/c;->d:Lua/c;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lcb/b;->b(Lua/c;)Lcb/b;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcb/b;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "getInternalName(...)"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lna/g;->d(Ljava/lang/String;)Lna/j;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    const/16 p0, 0xf

    .line 44
    .line 45
    invoke-static {p0}, Lcb/c;->a(I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    throw p0

    .line 50
    :cond_1
    return-object p0
.end method

.method public static o()Ls/h0;
    .locals 1

    .line 1
    sget-object v0, Ls/o0;->a:[J

    .line 2
    .line 3
    new-instance v0, Ls/h0;

    .line 4
    .line 5
    invoke-direct {v0}, Ls/h0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static p(Ljava/util/Collection;Ljava/lang/String;)Leb/o;
    .locals 3

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "types"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/lang/Iterable;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-static {p0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Llb/w;

    .line 39
    .line 40
    invoke-virtual {v1}, Llb/w;->R()Leb/o;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0}, Lp9/x1;->D(Ljava/util/ArrayList;)Lub/f;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget v0, p0, Lub/f;->a:I

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    new-instance v0, Leb/a;

    .line 61
    .line 62
    new-array v2, v2, [Leb/o;

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lub/f;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, [Leb/o;

    .line 69
    .line 70
    invoke-direct {v0, p1, v2}, Leb/a;-><init>(Ljava/lang/String;[Leb/o;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0, v2}, Lub/f;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    move-object v0, p1

    .line 79
    check-cast v0, Leb/o;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    sget-object v0, Leb/n;->b:Leb/n;

    .line 83
    .line 84
    :goto_1
    iget p0, p0, Lub/f;->a:I

    .line 85
    .line 86
    if-gt p0, v1, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    new-instance p0, Leb/k;

    .line 90
    .line 91
    invoke-direct {p0, v0}, Leb/k;-><init>(Leb/o;)V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public static final q([F[F)F
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget v4, p1, v2

    .line 9
    .line 10
    mul-float v3, v3, v4

    .line 11
    .line 12
    add-float/2addr v1, v3

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1
.end method

.method public static final r(Landroid/view/View;)La5/g;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    const v1, 0x7f0800c4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, La5/g;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, La5/g;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object v1, v0

    .line 24
    :goto_1
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    invoke-static {p0}, Lc7/a;->C(Landroid/view/View;)Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    instance-of v1, p0, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    check-cast p0, Landroid/view/View;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object p0, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return-object v0
.end method

.method public static final s(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lc3/o;->a:Lc3/m;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v3, :cond_2

    .line 20
    .line 21
    cmpg-float v1, v0, v2

    .line 22
    .line 23
    if-gez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, v1

    .line 34
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-float/2addr v1, v0

    .line 39
    const-string v2, "\u2026"

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-float/2addr p2, v1

    .line 46
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Le3/d;->a:[I

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    aget p1, v1, p1

    .line 61
    .line 62
    :goto_0
    if-ne p1, v3, :cond_1

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    int-to-float p0, p0

    .line 73
    sub-float/2addr p0, p2

    .line 74
    const/high16 p2, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float/2addr p0, p2

    .line 77
    :goto_1
    add-float/2addr p0, p1

    .line 78
    return p0

    .line 79
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    int-to-float p0, p0

    .line 88
    sub-float/2addr p0, p2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    return v2
.end method

.method public static final t(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 3

    .line 1
    sget-object v0, Lc3/o;->a:Lc3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    cmpg-float v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v0

    .line 38
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-float/2addr v2, v0

    .line 47
    const-string v0, "\u2026"

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    add-float/2addr p2, v2

    .line 54
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Le3/d;->a:[I

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    :goto_0
    const/4 v0, 0x1

    .line 70
    if-ne v1, v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-float v0, v0

    .line 77
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sub-float/2addr v0, p1

    .line 82
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    int-to-float p0, p0

    .line 87
    sub-float/2addr p0, p2

    .line 88
    const/high16 p1, 0x40000000    # 2.0f

    .line 89
    .line 90
    div-float/2addr p0, p1

    .line 91
    :goto_1
    sub-float/2addr v0, p0

    .line 92
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    int-to-float v0, v0

    .line 98
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    sub-float/2addr v0, p1

    .line 103
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    int-to-float p0, p0

    .line 108
    sub-float/2addr p0, p2

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 p0, 0x0

    .line 111
    return p0
.end method

.method public static final u(Landroid/text/Layout;IZ)I
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    if-eq p0, p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-ne v1, p1, :cond_3

    .line 40
    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    if-eqz p2, :cond_5

    .line 47
    .line 48
    :cond_4
    :goto_0
    return v0

    .line 49
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    return v0
.end method

.method public static final v(Lpa/i0;Lra/f;Lra/g;ZZZ)Lna/q;
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsa/k;->d:Lva/m;

    .line 12
    .line 13
    const-string v1, "propertySignature"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lsa/e;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-eqz p3, :cond_2

    .line 29
    .line 30
    sget-object p3, Lta/g;->a:Lva/g;

    .line 31
    .line 32
    invoke-static {p0, p1, p2, p5}, Lta/g;->b(Lpa/i0;Lra/f;Lra/g;Z)Lta/d;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Li2/c;->o(Lp9/p1;)Lna/q;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    if-eqz p4, :cond_3

    .line 45
    .line 46
    iget p0, v0, Lsa/e;->b:I

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    and-int/2addr p0, p2

    .line 50
    if-ne p0, p2, :cond_3

    .line 51
    .line 52
    iget-object p0, v0, Lsa/e;->d:Lsa/c;

    .line 53
    .line 54
    const-string p2, "getSyntheticMethod(...)"

    .line 55
    .line 56
    invoke-static {p0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget p2, p0, Lsa/c;->c:I

    .line 60
    .line 61
    invoke-interface {p1, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget p0, p0, Lsa/c;->d:I

    .line 66
    .line 67
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lna/q;

    .line 72
    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static synthetic w(Lpa/i0;Lra/f;Lra/g;I)Lna/q;
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v6, 0x1

    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x10

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v7, 0x1

    .line 17
    :goto_1
    const/4 v8, 0x1

    .line 18
    move-object v3, p0

    .line 19
    move-object v4, p1

    .line 20
    move-object v5, p2

    .line 21
    invoke-static/range {v3 .. v8}, La/a;->v(Lpa/i0;Lra/f;Lra/g;ZZZ)Lna/q;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static x(DDLjava/util/Date;)Lr8/j;
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    const/4 p4, 0x6

    .line 9
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0xf

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v2

    .line 26
    const v2, 0x36ee80

    .line 27
    .line 28
    .line 29
    div-int v7, v0, v2

    .line 30
    .line 31
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 32
    .line 33
    div-double v5, p2, v2

    .line 34
    .line 35
    int-to-double p2, v1

    .line 36
    int-to-double v0, p4

    .line 37
    sub-double/2addr v0, v5

    .line 38
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    .line 39
    .line 40
    div-double/2addr v0, v2

    .line 41
    add-double v8, v0, p2

    .line 42
    .line 43
    const/16 p4, 0x12

    .line 44
    .line 45
    int-to-double v0, p4

    .line 46
    sub-double/2addr v0, v5

    .line 47
    div-double/2addr v0, v2

    .line 48
    add-double/2addr v0, p2

    .line 49
    const/4 v10, 0x1

    .line 50
    move-wide v3, p0

    .line 51
    invoke-static/range {v3 .. v10}, La/a;->y(DDIDZ)D

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    const/4 v10, 0x0

    .line 56
    move-wide v8, v0

    .line 57
    invoke-static/range {v3 .. v10}, La/a;->y(DDIDZ)D

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    const-string p4, "06:00"

    .line 62
    .line 63
    invoke-static {p0, p1, p4}, La/a;->A(DLjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "18:00"

    .line 68
    .line 69
    invoke-static {p2, p3, p1}, La/a;->A(DLjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Lr8/j;

    .line 74
    .line 75
    invoke-direct {p2, p0, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object p2
.end method

.method public static final y(DDIDZ)D
    .locals 14

    .line 1
    const-wide v0, 0x3fef8a0902de00d2L    # 0.9856

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double v0, v0, p5

    .line 7
    .line 8
    const-wide v2, 0x400a4fdf3b645a1dL    # 3.289

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sub-double/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide v4, 0x3ffea7ef9db22d0eL    # 1.916

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    mul-double v2, v2, v4

    .line 28
    .line 29
    add-double/2addr v2, v0

    .line 30
    const/4 v4, 0x2

    .line 31
    int-to-double v4, v4

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    mul-double v0, v0, v4

    .line 37
    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v0, v0, v4

    .line 48
    .line 49
    add-double/2addr v0, v2

    .line 50
    const-wide v2, 0x4071aa24dd2f1aa0L    # 282.634

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    add-double/2addr v0, v2

    .line 56
    const/16 v2, 0x168

    .line 57
    .line 58
    int-to-double v2, v2

    .line 59
    add-double/2addr v0, v2

    .line 60
    rem-double/2addr v0, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    const-wide v6, 0x3fed5d4e8fb00bccL    # 0.91764

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    mul-double v4, v4, v6

    .line 75
    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    add-double/2addr v4, v2

    .line 85
    rem-double/2addr v4, v2

    .line 86
    const-wide v6, 0x4056800000000000L    # 90.0

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    div-double v8, v0, v6

    .line 92
    .line 93
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    const/16 v10, 0x5a

    .line 98
    .line 99
    int-to-double v10, v10

    .line 100
    mul-double v8, v8, v10

    .line 101
    .line 102
    div-double v6, v4, v6

    .line 103
    .line 104
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    mul-double v6, v6, v10

    .line 109
    .line 110
    add-double/2addr v4, v8

    .line 111
    sub-double/2addr v4, v6

    .line 112
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    .line 113
    .line 114
    div-double/2addr v4, v6

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    const-wide v8, 0x3fd975e2046c764bL    # 0.39782

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    mul-double v0, v0, v8

    .line 129
    .line 130
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v8

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    const-wide v10, 0x4056b54fdf3b645aL    # 90.833

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v10

    .line 147
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 148
    .line 149
    .line 150
    move-result-wide v10

    .line 151
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v12

    .line 155
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v12

    .line 159
    mul-double v12, v12, v0

    .line 160
    .line 161
    sub-double/2addr v10, v12

    .line 162
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    .line 163
    .line 164
    .line 165
    move-result-wide p0

    .line 166
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide p0

    .line 170
    mul-double p0, p0, v8

    .line 171
    .line 172
    div-double/2addr v10, p0

    .line 173
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 174
    .line 175
    cmpl-double v0, v10, p0

    .line 176
    .line 177
    if-gtz v0, :cond_2

    .line 178
    .line 179
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 180
    .line 181
    cmpg-double v0, v10, p0

    .line 182
    .line 183
    if-gez v0, :cond_0

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_0
    if-eqz p7, :cond_1

    .line 187
    .line 188
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide p0

    .line 192
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 193
    .line 194
    .line 195
    move-result-wide p0

    .line 196
    sub-double/2addr v2, p0

    .line 197
    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 203
    .line 204
    .line 205
    move-result-wide v2

    .line 206
    :goto_0
    div-double/2addr v2, v6

    .line 207
    add-double/2addr v2, v4

    .line 208
    const-wide p0, 0x3fb0d25edd052935L    # 0.06571

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    mul-double p0, p0, p5

    .line 214
    .line 215
    sub-double/2addr v2, p0

    .line 216
    const-wide p0, 0x401a7ced916872b0L    # 6.622

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    sub-double/2addr v2, p0

    .line 222
    sub-double v2, v2, p2

    .line 223
    .line 224
    const/16 p0, 0x18

    .line 225
    .line 226
    int-to-double p0, p0

    .line 227
    add-double/2addr v2, p0

    .line 228
    rem-double/2addr v2, p0

    .line 229
    move/from16 p0, p4

    .line 230
    .line 231
    int-to-double p0, p0

    .line 232
    add-double/2addr v2, p0

    .line 233
    return-wide v2

    .line 234
    :cond_2
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 235
    .line 236
    return-wide p0
.end method

.method public static final z(DDLjava/time/LocalDate;)Lr8/j;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3, v0}, La/a;->x(DDLjava/util/Date;)Lr8/j;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p1, p0, Lr8/j;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lr8/j;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    sget-object p2, Ll8/d;->a:Lr8/o;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p3, "|"

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string p3, "TASKER_SUN_CYCLE"

    .line 47
    .line 48
    invoke-static {p3, p2}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lr8/j;

    .line 52
    .line 53
    invoke-direct {p2, p1, p0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, La/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, La/a;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, La/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lm9/c;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method
