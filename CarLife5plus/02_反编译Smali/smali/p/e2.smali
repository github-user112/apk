.class public abstract Lp/e2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo/c0;


# static fields
.field public static final A:Ljava/lang/reflect/Method;

.field public static final B:Ljava/lang/reflect/Method;

.field public static final z:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Lp/r1;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:I

.field public n:Lp/b2;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/AdapterView$OnItemClickListener;

.field public final q:Lp/a2;

.field public final r:Lp/d2;

.field public final s:Lp/c2;

.field public final t:Lp/a2;

.field public final u:Landroid/os/Handler;

.field public final v:Landroid/graphics/Rect;

.field public w:Landroid/graphics/Rect;

.field public x:Z

.field public final y:Lp/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v5, "ListPopupWindow"

    .line 10
    .line 11
    const-class v6, Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v0, "setClipToScreenEnabled"

    .line 16
    .line 17
    new-array v1, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v4, v1, v2

    .line 20
    .line 21
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lp/e2;->z:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v0, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    const-string v0, "setEpicenterBounds"

    .line 34
    .line 35
    new-array v1, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v7, Landroid/graphics/Rect;

    .line 38
    .line 39
    aput-object v7, v1, v2

    .line 40
    .line 41
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lp/e2;->B:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    const-string v0, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 49
    .line 50
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x17

    .line 56
    .line 57
    if-gt v0, v1, :cond_1

    .line 58
    .line 59
    :try_start_2
    const-string v0, "getMaxAvailableHeight"

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    new-array v1, v1, [Ljava/lang/Class;

    .line 63
    .line 64
    const-class v7, Landroid/view/View;

    .line 65
    .line 66
    aput-object v7, v1, v2

    .line 67
    .line 68
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    aput-object v4, v1, v2

    .line 74
    .line 75
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lp/e2;->A:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_2
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 83
    .line 84
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lp/e2;->d:I

    .line 6
    .line 7
    iput v0, p0, Lp/e2;->e:I

    .line 8
    .line 9
    const/16 v0, 0x3ea

    .line 10
    .line 11
    iput v0, p0, Lp/e2;->h:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lp/e2;->l:I

    .line 15
    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v1, p0, Lp/e2;->m:I

    .line 20
    .line 21
    new-instance v1, Lp/a2;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, Lp/a2;-><init>(Lp/e2;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lp/e2;->q:Lp/a2;

    .line 28
    .line 29
    new-instance v1, Lp/d2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lp/d2;-><init>(Lp/e2;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lp/e2;->r:Lp/d2;

    .line 35
    .line 36
    new-instance v1, Lp/c2;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lp/c2;-><init>(Lp/e2;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lp/e2;->s:Lp/c2;

    .line 42
    .line 43
    new-instance v1, Lp/a2;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, p0, v2}, Lp/a2;-><init>(Lp/e2;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lp/e2;->t:Lp/a2;

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lp/e2;->v:Landroid/graphics/Rect;

    .line 57
    .line 58
    iput-object p1, p0, Lp/e2;->a:Landroid/content/Context;

    .line 59
    .line 60
    new-instance v1, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lp/e2;->u:Landroid/os/Handler;

    .line 70
    .line 71
    sget-object v1, Li/a;->o:[I

    .line 72
    .line 73
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, p0, Lp/e2;->f:I

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iput v3, p0, Lp/e2;->g:I

    .line 89
    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    iput-boolean v2, p0, Lp/e2;->i:Z

    .line 93
    .line 94
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lp/a0;

    .line 98
    .line 99
    invoke-direct {v1, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    .line 101
    .line 102
    sget-object v3, Li/a;->s:[I

    .line 103
    .line 104
    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/4 p3, 0x2

    .line 109
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    invoke-static {v1, p3}, Li2/c;->M(Lp/a0;Z)V

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-eqz p3, :cond_2

    .line 127
    .line 128
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-eqz p3, :cond_2

    .line 133
    .line 134
    invoke-static {p1, p3}, Lm9/e0;->g0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lp/e2;->y:Lp/a0;

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 152
    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e2;->y:Lp/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lp/e2;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp/e2;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/e2;->y:Lp/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lp/e2;->c:Lp/r1;

    .line 11
    .line 12
    iget-object v0, p0, Lp/e2;->u:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lp/e2;->q:Lp/a2;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final f()V
    .locals 14

    .line 1
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 2
    .line 3
    iget-object v1, p0, Lp/e2;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lp/e2;->y:Lp/a0;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lp/e2;->x:Z

    .line 11
    .line 12
    xor-int/2addr v0, v2

    .line 13
    invoke-virtual {p0, v1, v0}, Lp/e2;->p(Landroid/content/Context;Z)Lp/r1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 18
    .line 19
    iget-object v4, p0, Lp/e2;->b:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 25
    .line 26
    iget-object v4, p0, Lp/e2;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 42
    .line 43
    new-instance v4, Lp/x1;

    .line 44
    .line 45
    invoke-direct {v4, p0}, Lp/x1;-><init>(Lp/e2;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 52
    .line 53
    iget-object v4, p0, Lp/e2;->s:Lp/c2;

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .line 70
    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v4, p0, Lp/e2;->v:Landroid/graphics/Rect;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 80
    .line 81
    .line 82
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    add-int/2addr v6, v0

    .line 87
    iget-boolean v7, p0, Lp/e2;->i:Z

    .line 88
    .line 89
    if-nez v7, :cond_2

    .line 90
    .line 91
    neg-int v0, v0

    .line 92
    iput v0, p0, Lp/e2;->g:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 96
    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v7, 0x2

    .line 104
    if-ne v0, v7, :cond_3

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/4 v0, 0x0

    .line 109
    :goto_2
    iget-object v8, p0, Lp/e2;->o:Landroid/view/View;

    .line 110
    .line 111
    iget v9, p0, Lp/e2;->g:I

    .line 112
    .line 113
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/16 v11, 0x17

    .line 116
    .line 117
    const-string v12, "ListPopupWindow"

    .line 118
    .line 119
    if-gt v10, v11, :cond_5

    .line 120
    .line 121
    sget-object v10, Lp/e2;->A:Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-eqz v10, :cond_4

    .line 124
    .line 125
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v13, 0x3

    .line 134
    new-array v13, v13, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v8, v13, v5

    .line 137
    .line 138
    aput-object v11, v13, v2

    .line 139
    .line 140
    aput-object v0, v13, v7

    .line 141
    .line 142
    invoke-virtual {v10, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_3

    .line 153
    :catch_0
    const-string v0, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 154
    .line 155
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {v3, v8, v9}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    goto :goto_3

    .line 163
    :cond_5
    invoke-static {v3, v8, v9, v0}, Lp/y1;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    :goto_3
    iget v8, p0, Lp/e2;->d:I

    .line 168
    .line 169
    const/4 v9, -0x2

    .line 170
    const/4 v10, -0x1

    .line 171
    if-ne v8, v10, :cond_6

    .line 172
    .line 173
    add-int/2addr v0, v6

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    iget v11, p0, Lp/e2;->e:I

    .line 176
    .line 177
    if-eq v11, v9, :cond_8

    .line 178
    .line 179
    const/high16 v13, 0x40000000    # 2.0f

    .line 180
    .line 181
    if-eq v11, v10, :cond_7

    .line 182
    .line 183
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 197
    .line 198
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 201
    .line 202
    add-int/2addr v11, v4

    .line 203
    sub-int/2addr v1, v11

    .line 204
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    goto :goto_4

    .line 209
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    .line 219
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    add-int/2addr v11, v4

    .line 224
    sub-int/2addr v1, v11

    .line 225
    const/high16 v4, -0x80000000

    .line 226
    .line 227
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    :goto_4
    iget-object v4, p0, Lp/e2;->c:Lp/r1;

    .line 232
    .line 233
    invoke-virtual {v4, v1, v0}, Lp/r1;->a(II)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-lez v0, :cond_9

    .line 238
    .line 239
    iget-object v1, p0, Lp/e2;->c:Lp/r1;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iget-object v4, p0, Lp/e2;->c:Lp/r1;

    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    add-int/2addr v4, v1

    .line 252
    add-int/2addr v4, v6

    .line 253
    goto :goto_5

    .line 254
    :cond_9
    const/4 v4, 0x0

    .line 255
    :goto_5
    add-int/2addr v0, v4

    .line 256
    :goto_6
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-ne v1, v7, :cond_a

    .line 261
    .line 262
    const/4 v1, 0x1

    .line 263
    goto :goto_7

    .line 264
    :cond_a
    const/4 v1, 0x0

    .line 265
    :goto_7
    iget v4, p0, Lp/e2;->h:I

    .line 266
    .line 267
    invoke-static {v3, v4}, Li2/c;->N(Landroid/widget/PopupWindow;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_16

    .line 275
    .line 276
    iget-object v4, p0, Lp/e2;->o:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_b

    .line 283
    .line 284
    goto/16 :goto_11

    .line 285
    .line 286
    :cond_b
    iget v4, p0, Lp/e2;->e:I

    .line 287
    .line 288
    if-ne v4, v10, :cond_c

    .line 289
    .line 290
    const/4 v4, -0x1

    .line 291
    goto :goto_8

    .line 292
    :cond_c
    if-ne v4, v9, :cond_d

    .line 293
    .line 294
    iget-object v4, p0, Lp/e2;->o:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    :cond_d
    :goto_8
    if-ne v8, v10, :cond_12

    .line 301
    .line 302
    if-eqz v1, :cond_e

    .line 303
    .line 304
    move v8, v0

    .line 305
    goto :goto_9

    .line 306
    :cond_e
    const/4 v8, -0x1

    .line 307
    :goto_9
    if-eqz v1, :cond_10

    .line 308
    .line 309
    iget v0, p0, Lp/e2;->e:I

    .line 310
    .line 311
    if-ne v0, v10, :cond_f

    .line 312
    .line 313
    const/4 v0, -0x1

    .line 314
    goto :goto_a

    .line 315
    :cond_f
    const/4 v0, 0x0

    .line 316
    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_10
    iget v0, p0, Lp/e2;->e:I

    .line 324
    .line 325
    if-ne v0, v10, :cond_11

    .line 326
    .line 327
    const/4 v5, -0x1

    .line 328
    :cond_11
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_12
    if-ne v8, v9, :cond_13

    .line 336
    .line 337
    move v8, v0

    .line 338
    :cond_13
    :goto_b
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 339
    .line 340
    .line 341
    move v0, v4

    .line 342
    iget-object v4, p0, Lp/e2;->o:Landroid/view/View;

    .line 343
    .line 344
    iget v5, p0, Lp/e2;->f:I

    .line 345
    .line 346
    iget v6, p0, Lp/e2;->g:I

    .line 347
    .line 348
    if-gez v0, :cond_14

    .line 349
    .line 350
    const/4 v7, -0x1

    .line 351
    goto :goto_c

    .line 352
    :cond_14
    move v7, v0

    .line 353
    :goto_c
    if-gez v8, :cond_15

    .line 354
    .line 355
    const/4 v8, -0x1

    .line 356
    :cond_15
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_11

    .line 360
    .line 361
    :cond_16
    iget v1, p0, Lp/e2;->e:I

    .line 362
    .line 363
    if-ne v1, v10, :cond_17

    .line 364
    .line 365
    const/4 v1, -0x1

    .line 366
    goto :goto_d

    .line 367
    :cond_17
    if-ne v1, v9, :cond_18

    .line 368
    .line 369
    iget-object v1, p0, Lp/e2;->o:Landroid/view/View;

    .line 370
    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    :cond_18
    :goto_d
    if-ne v8, v10, :cond_19

    .line 376
    .line 377
    const/4 v8, -0x1

    .line 378
    goto :goto_e

    .line 379
    :cond_19
    if-ne v8, v9, :cond_1a

    .line 380
    .line 381
    move v8, v0

    .line 382
    :cond_1a
    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 386
    .line 387
    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 389
    .line 390
    const/16 v1, 0x1c

    .line 391
    .line 392
    if-gt v0, v1, :cond_1b

    .line 393
    .line 394
    sget-object v0, Lp/e2;->z:Ljava/lang/reflect/Method;

    .line 395
    .line 396
    if-eqz v0, :cond_1c

    .line 397
    .line 398
    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    .line 399
    .line 400
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 401
    .line 402
    aput-object v6, v4, v5

    .line 403
    .line 404
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .line 406
    .line 407
    goto :goto_f

    .line 408
    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 409
    .line 410
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    goto :goto_f

    .line 414
    :cond_1b
    invoke-static {v3, v2}, Lp/z1;->b(Landroid/widget/PopupWindow;Z)V

    .line 415
    .line 416
    .line 417
    :cond_1c
    :goto_f
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lp/e2;->r:Lp/d2;

    .line 421
    .line 422
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 423
    .line 424
    .line 425
    iget-boolean v0, p0, Lp/e2;->k:Z

    .line 426
    .line 427
    if-eqz v0, :cond_1d

    .line 428
    .line 429
    iget-boolean v0, p0, Lp/e2;->j:Z

    .line 430
    .line 431
    invoke-static {v3, v0}, Li2/c;->M(Lp/a0;Z)V

    .line 432
    .line 433
    .line 434
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 435
    .line 436
    if-gt v0, v1, :cond_1e

    .line 437
    .line 438
    sget-object v0, Lp/e2;->B:Ljava/lang/reflect/Method;

    .line 439
    .line 440
    if-eqz v0, :cond_1f

    .line 441
    .line 442
    :try_start_2
    iget-object v1, p0, Lp/e2;->w:Landroid/graphics/Rect;

    .line 443
    .line 444
    new-array v4, v2, [Ljava/lang/Object;

    .line 445
    .line 446
    aput-object v1, v4, v5

    .line 447
    .line 448
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 449
    .line 450
    .line 451
    goto :goto_10

    .line 452
    :catch_2
    move-exception v0

    .line 453
    const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 454
    .line 455
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_1e
    iget-object v0, p0, Lp/e2;->w:Landroid/graphics/Rect;

    .line 460
    .line 461
    invoke-static {v3, v0}, Lp/z1;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 462
    .line 463
    .line 464
    :cond_1f
    :goto_10
    iget-object v0, p0, Lp/e2;->o:Landroid/view/View;

    .line 465
    .line 466
    iget v1, p0, Lp/e2;->f:I

    .line 467
    .line 468
    iget v4, p0, Lp/e2;->g:I

    .line 469
    .line 470
    iget v5, p0, Lp/e2;->l:I

    .line 471
    .line 472
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 476
    .line 477
    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 478
    .line 479
    .line 480
    iget-boolean v0, p0, Lp/e2;->x:Z

    .line 481
    .line 482
    if-eqz v0, :cond_20

    .line 483
    .line 484
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 485
    .line 486
    invoke-virtual {v0}, Lp/r1;->isInTouchMode()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_21

    .line 491
    .line 492
    :cond_20
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 493
    .line 494
    if-eqz v0, :cond_21

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Lp/r1;->setListSelectionHidden(Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 500
    .line 501
    .line 502
    :cond_21
    iget-boolean v0, p0, Lp/e2;->x:Z

    .line 503
    .line 504
    if-nez v0, :cond_22

    .line 505
    .line 506
    iget-object v0, p0, Lp/e2;->u:Landroid/os/Handler;

    .line 507
    .line 508
    iget-object v1, p0, Lp/e2;->t:Lp/a2;

    .line 509
    .line 510
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    .line 512
    .line 513
    :cond_22
    :goto_11
    return-void
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e2;->y:Lp/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Lp/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e2;->c:Lp/r1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp/e2;->y:Lp/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp/e2;->g:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lp/e2;->i:Z

    .line 5
    .line 6
    return-void
.end method

.method public final n()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp/e2;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lp/e2;->g:I

    .line 8
    .line 9
    return v0
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/e2;->n:Lp/b2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp/b2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lp/b2;-><init>(Lp/e2;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lp/e2;->n:Lp/b2;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lp/e2;->b:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Lp/e2;->b:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lp/e2;->n:Lp/b2;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lp/e2;->c:Lp/r1;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lp/e2;->b:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public p(Landroid/content/Context;Z)Lp/r1;
    .locals 1

    .line 1
    new-instance v0, Lp/r1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lp/r1;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp/e2;->y:Lp/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lp/e2;->v:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lp/e2;->e:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput p1, p0, Lp/e2;->e:I

    .line 24
    .line 25
    return-void
.end method
