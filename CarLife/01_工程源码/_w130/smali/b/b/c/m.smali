.class public Lb/b/c/m;
.super Lb/b/c/l;
.source ""

# interfaces
.implements Lb/b/g/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/m$f;,
        Lb/b/c/m$h;,
        Lb/b/c/m$g;,
        Lb/b/c/m$e;,
        Lb/b/c/m$i;,
        Lb/b/c/m$j;,
        Lb/b/c/m$c;,
        Lb/b/c/m$k;,
        Lb/b/c/m$d;
    }
.end annotation


# static fields
.field public static final d:Lb/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Z

.field public static final f:[I

.field public static final g:Z

.field public static final h:Z

.field public static i:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:[Lb/b/c/m$j;

.field public M:Lb/b/c/m$j;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:I

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Lb/b/c/m$g;

.field public X:Lb/b/c/m$g;

.field public Y:Z

.field public Z:I

.field public final a0:Ljava/lang/Runnable;

.field public b0:Z

.field public c0:Landroid/graphics/Rect;

.field public d0:Landroid/graphics/Rect;

.field public e0:Lb/b/c/t;

.field public f0:Lb/b/c/u;

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Lb/b/c/m$e;

.field public final n:Lb/b/c/k;

.field public o:Lb/b/c/a;

.field public p:Landroid/view/MenuInflater;

.field public q:Ljava/lang/CharSequence;

.field public r:Lb/b/h/e0;

.field public s:Lb/b/c/m$c;

.field public t:Lb/b/c/m$k;

.field public u:Lb/b/g/a;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public w:Landroid/widget/PopupWindow;

.field public x:Ljava/lang/Runnable;

.field public y:Lb/e/j/w;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb/d/h;

    invoke-direct {v0}, Lb/d/h;-><init>()V

    sput-object v0, Lb/b/c/m;->d:Lb/d/h;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lb/b/c/m;->e:Z

    new-array v4, v2, [I

    const v5, 0x1010054

    aput v5, v4, v1

    sput-object v4, Lb/b/c/m;->f:[I

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v5, "robolectric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    sput-boolean v4, Lb/b/c/m;->g:Z

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lb/b/c/m;->h:Z

    if-eqz v3, :cond_2

    sget-boolean v0, Lb/b/c/m;->i:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lb/b/c/m$a;

    invoke-direct {v1, v0}, Lb/b/c/m$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, Lb/b/c/m;->i:Z

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lb/b/c/k;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lb/b/c/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/c/m;->y:Lb/e/j/w;

    const/16 v1, -0x64

    iput v1, p0, Lb/b/c/m;->S:I

    new-instance v2, Lb/b/c/m$b;

    invoke-direct {v2, p0}, Lb/b/c/m$b;-><init>(Lb/b/c/m;)V

    iput-object v2, p0, Lb/b/c/m;->a0:Ljava/lang/Runnable;

    iput-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    iput-object p3, p0, Lb/b/c/m;->n:Lb/b/c/k;

    iput-object p4, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    instance-of p3, p1, Lb/b/c/j;

    if-eqz p3, :cond_0

    check-cast p1, Lb/b/c/j;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/l;->f()I

    move-result p1

    iput p1, p0, Lb/b/c/m;->S:I

    :cond_2
    iget p1, p0, Lb/b/c/m;->S:I

    if-ne p1, v1, :cond_3

    sget-object p1, Lb/b/c/m;->d:Lb/d/h;

    iget-object p3, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p1, p3, v0}, Lb/d/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lb/b/c/m;->S:I

    iget-object p3, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lb/d/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lb/b/c/m;->B(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lb/b/h/j;->d()V

    return-void
.end method


# virtual methods
.method public final A(Z)Z
    .locals 13

    iget-boolean v0, p0, Lb/b/c/m;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget v0, p0, Lb/b/c/m;->S:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    .line 2
    :goto_0
    iget-object v2, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lb/b/c/m;->R(Landroid/content/Context;I)I

    move-result v2

    .line 3
    iget-object v3, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lb/b/c/m;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4
    iget-boolean v3, p0, Lb/b/c/m;->V:Z

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-nez v3, :cond_6

    iget-object v3, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    const/high16 v7, 0x100c0000

    goto :goto_1

    :cond_3
    if-lt v7, v5, :cond_4

    const/high16 v7, 0xc0000

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lb/b/c/m;->k:Landroid/content/Context;

    iget-object v10, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v8, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lb/b/c/m;->U:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v7, "AppCompatDelegate"

    const-string v8, "Exception while getting ActivityInfo"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lb/b/c/m;->U:Z

    :cond_6
    :goto_3
    iput-boolean v6, p0, Lb/b/c/m;->V:Z

    iget-boolean v3, p0, Lb/b/c/m;->U:Z

    .line 5
    :goto_4
    iget-object v7, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v8, 0x1c

    const/16 v9, 0x17

    if-eq v7, v2, :cond_b

    if-eqz p1, :cond_b

    if-nez v3, :cond_b

    iget-boolean p1, p0, Lb/b/c/m;->O:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Lb/b/c/m;->g:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lb/b/c/m;->P:Z

    if-eqz p1, :cond_b

    :cond_7
    iget-object p1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v10, p1, Landroid/app/Activity;

    if-eqz v10, :cond_b

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    .line 6
    sget v10, Lb/e/b/c;->b:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_8

    goto :goto_5

    :cond_8
    if-gt v10, v9, :cond_9

    new-instance v10, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lb/e/b/b;

    invoke-direct {v11, p1}, Lb/e/b/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    invoke-static {p1}, Lb/e/b/d;->b(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_a

    :goto_5
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_a
    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_7
    if-nez p1, :cond_1c

    if-eq v7, v2, :cond_1c

    .line 7
    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, -0x31

    or-int/2addr v2, v10

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v2, v10, :cond_18

    if-lt v2, v8, :cond_c

    goto/16 :goto_10

    :cond_c
    const-string v8, "mDrawableCache"

    const-string v10, "ResourcesFlusher"

    if-lt v2, v5, :cond_12

    .line 8
    sget-boolean v2, Lb/b/a;->h:Z

    if-nez v2, :cond_d

    :try_start_1
    const-class v2, Landroid/content/res/Resources;

    const-string v5, "mResourcesImpl"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/b/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v2

    const-string v5, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    sput-boolean v6, Lb/b/a;->h:Z

    :cond_d
    sget-object v2, Lb/b/a;->g:Ljava/lang/reflect/Field;

    if-nez v2, :cond_e

    goto/16 :goto_10

    :cond_e
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    const-string v2, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v10, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    :goto_9
    if-nez p1, :cond_f

    goto/16 :goto_10

    :cond_f
    sget-boolean v2, Lb/b/a;->b:Z

    if-nez v2, :cond_10

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v2

    const-string v5, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sput-boolean v6, Lb/b/a;->b:Z

    :cond_10
    sget-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_11

    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception p1

    const-string v2, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v10, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_b
    if-eqz v4, :cond_18

    invoke-static {v4}, Lb/b/a;->a(Ljava/lang/Object;)V

    goto :goto_10

    :cond_12
    const-string v5, "Could not retrieve Resources#mDrawableCache field"

    const-string v11, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v2, v9, :cond_16

    .line 9
    sget-boolean v2, Lb/b/a;->b:Z

    if-nez v2, :cond_13

    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_c

    :catch_5
    move-exception v2

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sput-boolean v6, Lb/b/a;->b:Z

    :cond_13
    sget-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_14

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    invoke-static {v10, v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_d
    if-nez v4, :cond_15

    goto :goto_10

    :cond_15
    invoke-static {v4}, Lb/b/a;->a(Ljava/lang/Object;)V

    goto :goto_10

    :cond_16
    const/16 v12, 0x15

    if-lt v2, v12, :cond_18

    .line 10
    sget-boolean v2, Lb/b/a;->b:Z

    if-nez v2, :cond_17

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    :catch_7
    move-exception v2

    invoke-static {v10, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    sput-boolean v6, Lb/b/a;->b:Z

    :cond_17
    sget-object v2, Lb/b/a;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_18

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v4, p1

    goto :goto_f

    :catch_8
    move-exception p1

    invoke-static {v10, v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 11
    :cond_18
    :goto_10
    iget p1, p0, Lb/b/c/m;->T:I

    if-eqz p1, :cond_19

    iget-object v2, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_19

    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v2, p0, Lb/b/c/m;->T:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_19
    if-eqz v3, :cond_1d

    iget-object p1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1d

    check-cast p1, Landroid/app/Activity;

    instance-of v2, p1, Lb/j/g;

    if-eqz v2, :cond_1b

    move-object v2, p1

    check-cast v2, Lb/j/g;

    invoke-interface {v2}, Lb/j/g;->b()Lb/j/d;

    move-result-object v2

    check-cast v2, Lb/j/h;

    .line 12
    iget-object v2, v2, Lb/j/h;->b:Lb/j/d$b;

    .line 13
    sget-object v3, Lb/j/d$b;->e:Lb/j/d$b;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    if-eqz v1, :cond_1d

    goto :goto_11

    .line 15
    :cond_1b
    iget-boolean v1, p0, Lb/b/c/m;->Q:Z

    if-eqz v1, :cond_1d

    :goto_11
    invoke-virtual {p1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_12

    :cond_1c
    move v6, p1

    :cond_1d
    :goto_12
    if-eqz v6, :cond_1e

    .line 16
    iget-object p1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, p1, Lb/b/c/j;

    if-eqz v1, :cond_1e

    check-cast p1, Lb/b/c/j;

    invoke-virtual {p1}, Lb/b/c/j;->X0()V

    :cond_1e
    if-nez v0, :cond_1f

    .line 17
    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lb/b/c/m;->M(Landroid/content/Context;)Lb/b/c/m$g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/m$g;->e()V

    goto :goto_13

    :cond_1f
    iget-object p1, p0, Lb/b/c/m;->W:Lb/b/c/m$g;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lb/b/c/m$g;->a()V

    :cond_20
    :goto_13
    const/4 p1, 0x3

    if-ne v0, p1, :cond_22

    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    .line 18
    iget-object v0, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    if-nez v0, :cond_21

    new-instance v0, Lb/b/c/m$f;

    invoke-direct {v0, p0, p1}, Lb/b/c/m$f;-><init>(Lb/b/c/m;Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    :cond_21
    iget-object p1, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    .line 19
    invoke-virtual {p1}, Lb/b/c/m$g;->e()V

    goto :goto_14

    :cond_22
    iget-object p1, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lb/b/c/m$g;->a()V

    :cond_23
    :goto_14
    return v6
.end method

.method public final B(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Lb/b/c/m$e;

    if-nez v2, :cond_1

    new-instance v1, Lb/b/c/m$e;

    invoke-direct {v1, p0, v0}, Lb/b/c/m$e;-><init>(Lb/b/c/m;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lb/b/c/m;->f:[I

    invoke-static {v0, v1, v2}, Lb/b/h/z0;->n(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lb/b/h/z0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/h/z0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_0
    iget-object v0, v0, Lb/b/h/z0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2
    iput-object p1, p0, Lb/b/c/m;->l:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(ILb/b/c/m$j;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lb/b/c/m$j;->m:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, Lb/b/c/m;->R:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object p2, p2, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public D(Lb/b/g/i/g;)V
    .locals 2

    iget-boolean v0, p0, Lb/b/c/m;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/c/m;->K:Z

    iget-object v0, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {v0}, Lb/b/h/e0;->l()V

    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lb/b/c/m;->R:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/c/m;->K:Z

    return-void
.end method

.method public E(Lb/b/c/m$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lb/b/c/m$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/h/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {p0, p1}, Lb/b/c/m;->D(Lb/b/g/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lb/b/c/m$j;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lb/b/c/m$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lb/b/c/m;->C(ILb/b/c/m$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lb/b/c/m$j;->k:Z

    iput-boolean p2, p1, Lb/b/c/m$j;->l:Z

    iput-boolean p2, p1, Lb/b/c/m$j;->m:Z

    iput-object v1, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/b/c/m$j;->o:Z

    iget-object p2, p0, Lb/b/c/m;->M:Lb/b/c/m$j;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lb/b/c/m;->M:Lb/b/c/m$j;

    :cond_2
    return-void
.end method

.method public final F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public G(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Lb/e/j/e$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lb/b/c/s;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lb/e/j/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object v0, v0, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v4}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-boolean v1, v0, Lb/b/c/m$j;->m:Z

    if-nez v1, :cond_17

    invoke-virtual {p0, v0, p1}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_9

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lb/b/c/m;->N:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 5
    :cond_9
    iget-object v0, p0, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz v0, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0, v4}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lb/b/h/e0;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {v1}, Lb/b/h/e0;->c()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lb/b/c/m;->R:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {p1}, Lb/b/h/e0;->e()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {p1}, Lb/b/h/e0;->d()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, Lb/b/c/m$j;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Lb/b/c/m$j;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, Lb/b/c/m$j;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lb/b/c/m$j;->p:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Lb/b/c/m$j;->k:Z

    invoke-virtual {p0, v0, p1}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lb/b/c/m;->S(Lb/b/c/m$j;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_17

    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_9

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 6
    :cond_12
    iget-boolean p1, p0, Lb/b/c/m;->N:Z

    iput-boolean v4, p0, Lb/b/c/m;->N:Z

    invoke-virtual {p0, v4}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-boolean v1, v0, Lb/b/c/m$j;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_17

    invoke-virtual {p0, v0, v2}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    goto :goto_9

    .line 7
    :cond_13
    iget-object p1, p0, Lb/b/c/m;->u:Lb/b/g/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lb/b/g/a;->c()V

    goto :goto_7

    .line 8
    :cond_14
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object p1, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz p1, :cond_16

    .line 9
    check-cast p1, Lb/b/c/x;

    .line 10
    iget-object v0, p1, Lb/b/c/x;->g:Lb/b/h/f0;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lb/b/h/f0;->s()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p1, Lb/b/c/x;->g:Lb/b/h/f0;

    invoke-interface {p1}, Lb/b/h/f0;->collapseActionView()V

    const/4 p1, 0x1

    goto :goto_6

    :cond_15
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_16

    :goto_7
    const/4 p1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_7

    :cond_17
    :goto_9
    return v2
.end method

.method public H(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-object v1, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v2, v1}, Lb/b/g/i/g;->w(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lb/b/c/m$j;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v1}, Lb/b/g/i/g;->z()V

    iget-object v1, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v1}, Lb/b/g/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/b/c/m$j;->p:Z

    iput-boolean v1, v0, Lb/b/c/m$j;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iput-boolean p1, v0, Lb/b/c/m$j;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lb/b/c/m;->y:Lb/e/j/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/e/j/w;->b()V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 9

    iget-boolean v0, p0, Lb/b/c/m;->z:Z

    if-nez v0, :cond_1d

    .line 1
    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    sget-object v1, Lb/b/b;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lb/b/c/m;->t(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lb/b/c/m;->t(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x76

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lb/b/c/m;->t(I)Z

    :cond_2
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lb/b/c/m;->t(I)Z

    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lb/b/c/m;->I:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lb/b/c/m;->K()V

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/c/m;->J:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lb/b/c/m;->I:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Lb/b/c/m;->G:Z

    iput-boolean v3, p0, Lb/b/c/m;->F:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Lb/b/c/m;->F:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f040009

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lb/b/g/c;

    iget-object v7, p0, Lb/b/c/m;->k:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lb/b/h/e0;

    iput-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lb/b/h/e0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Lb/b/c/m;->G:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {v1, v2}, Lb/b/h/e0;->k(I)V

    :cond_6
    iget-boolean v1, p0, Lb/b/c/m;->D:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lb/b/h/e0;->k(I)V

    :cond_7
    iget-boolean v1, p0, Lb/b/c/m;->E:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lb/b/h/e0;->k(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lb/b/c/m;->H:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0c0016

    goto :goto_2

    :cond_a
    const v1, 0x7f0c0015

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_3
    if-eqz v0, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c

    new-instance v7, Lb/b/c/n;

    invoke-direct {v7, p0}, Lb/b/c/n;-><init>(Lb/b/c/m;)V

    .line 2
    sget-object v8, Lb/e/j/q;->a:Ljava/util/WeakHashMap;

    if-lt v1, v2, :cond_d

    invoke-static {v0, v7}, Lb/e/j/q$c;->d(Landroid/view/View;Lb/e/j/l;)V

    goto :goto_4

    .line 3
    :cond_c
    instance-of v1, v0, Lb/b/h/i0;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lb/b/h/i0;

    new-instance v2, Lb/b/c/o;

    invoke-direct {v2, p0}, Lb/b/c/o;-><init>(Lb/b/c/m;)V

    invoke-interface {v1, v2}, Lb/b/h/i0;->setOnFitSystemWindowsListener(Lb/b/h/i0$a;)V

    :cond_d
    :goto_4
    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-nez v1, :cond_e

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/b/c/m;->B:Landroid/widget/TextView;

    .line 4
    :cond_e
    sget-object v1, Lb/b/h/f1;->a:Ljava/lang/reflect/Method;

    const-string v1, "ViewUtils"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "makeOptionalFitsSystemWindows"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_f
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_5
    const-string v7, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v1, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v1, 0x7f09002c

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Lb/b/c/m;->l:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_11

    :goto_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_10

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_11

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v2, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lb/b/c/p;

    invoke-direct {v2, p0}, Lb/b/c/p;-><init>(Lb/b/c/m;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 6
    iput-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    .line 7
    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lb/b/c/m;->q:Ljava/lang/CharSequence;

    .line 8
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Lb/b/h/e0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 9
    :cond_13
    iget-object v1, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v1, :cond_14

    .line 10
    check-cast v1, Lb/b/c/x;

    .line 11
    iget-object v1, v1, Lb/b/c/x;->g:Lb/b/h/f0;

    invoke-interface {v1, v0}, Lb/b/h/f0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 12
    :cond_14
    iget-object v1, p0, Lb/b/c/m;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_15
    :goto_9
    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 14
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0}, Lb/e/j/q;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 15
    :cond_16
    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    sget-object v2, Lb/b/b;->j:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7d

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 16
    iput-boolean v5, p0, Lb/b/c/m;->z:Z

    invoke-virtual {p0, v3}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/c/m;->R:Z

    if-nez v1, :cond_1d

    iget-object v0, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-nez v0, :cond_1d

    invoke-virtual {p0, v4}, Lb/b/c/m;->Q(I)V

    goto :goto_a

    .line 17
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lb/b/c/m;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/c/m;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/c/m;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/c/m;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/c/m;->J:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_a
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/c/m;->B(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L(Landroid/view/Menu;)Lb/b/c/m$j;
    .locals 5

    iget-object v0, p0, Lb/b/c/m;->L:[Lb/b/c/m$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final M(Landroid/content/Context;)Lb/b/c/m$g;
    .locals 3

    iget-object v0, p0, Lb/b/c/m;->W:Lb/b/c/m$g;

    if-nez v0, :cond_1

    new-instance v0, Lb/b/c/m$h;

    .line 1
    sget-object v1, Lb/b/c/w;->a:Lb/b/c/w;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lb/b/c/w;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lb/b/c/w;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lb/b/c/w;->a:Lb/b/c/w;

    :cond_0
    sget-object p1, Lb/b/c/w;->a:Lb/b/c/w;

    .line 2
    invoke-direct {v0, p0, p1}, Lb/b/c/m$h;-><init>(Lb/b/c/m;Lb/b/c/w;)V

    iput-object v0, p0, Lb/b/c/m;->W:Lb/b/c/m$g;

    :cond_1
    iget-object p1, p0, Lb/b/c/m;->W:Lb/b/c/m$g;

    return-object p1
.end method

.method public N(I)Lb/b/c/m$j;
    .locals 4

    iget-object v0, p0, Lb/b/c/m;->L:[Lb/b/c/m$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lb/b/c/m$j;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lb/b/c/m;->L:[Lb/b/c/m$j;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lb/b/c/m$j;

    invoke-direct {v1, p1}, Lb/b/c/m$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final O()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final P()V
    .locals 3

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-boolean v0, p0, Lb/b/c/m;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Lb/b/c/x;

    iget-object v1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lb/b/c/m;->G:Z

    invoke-direct {v0, v1, v2}, Lb/b/c/x;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Lb/b/c/x;

    iget-object v1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lb/b/c/x;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lb/b/c/m;->b0:Z

    invoke-virtual {v0, v1}, Lb/b/c/a;->c(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final Q(I)V
    .locals 3

    iget v0, p0, Lb/b/c/m;->Z:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lb/b/c/m;->Z:I

    iget-boolean p1, p0, Lb/b/c/m;->Y:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/m;->a0:Ljava/lang/Runnable;

    .line 1
    sget-object v2, Lb/e/j/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2
    iput-boolean v1, p0, Lb/b/c/m;->Y:Z

    :cond_0
    return-void
.end method

.method public R(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    if-nez p2, :cond_0

    new-instance p2, Lb/b/c/m$f;

    invoke-direct {p2, p0, p1}, Lb/b/c/m$f;-><init>(Lb/b/c/m;Landroid/content/Context;)V

    iput-object p2, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    :cond_0
    iget-object p1, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lb/b/c/m$g;->c()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lb/b/c/m;->M(Landroid/content/Context;)Lb/b/c/m$g;

    move-result-object p1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final S(Lb/b/c/m$j;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, Lb/b/c/m$j;->m:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lb/b/c/m;->R:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v0, p1, Lb/b/c/m$j;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lb/b/c/m$j;->a:I

    iget-object v4, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Lb/b/c/m$j;->o:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1b

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1b

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object p2, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Lb/b/c/a;->b()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Lb/b/c/m;->k:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040002

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f0400ba

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const v4, 0x7f0f00fd

    :goto_3
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lb/b/g/c;

    invoke-direct {v4, p2, v2}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v4, p1, Lb/b/c/m$j;->j:Landroid/content/Context;

    sget-object p2, Lb/b/b;->j:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x56

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lb/b/c/m$j;->b:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lb/b/c/m$j;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, Lb/b/c/m$i;

    iget-object v4, p1, Lb/b/c/m$j;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Lb/b/c/m$i;-><init>(Lb/b/c/m;Landroid/content/Context;)V

    iput-object p2, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Lb/b/c/m$j;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v4, p1, Lb/b/c/m$j;->o:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object p2, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lb/b/c/m;->t:Lb/b/c/m$k;

    if-nez p2, :cond_10

    new-instance p2, Lb/b/c/m$k;

    invoke-direct {p2, p0}, Lb/b/c/m$k;-><init>(Lb/b/c/m;)V

    iput-object p2, p0, Lb/b/c/m;->t:Lb/b/c/m$k;

    :cond_10
    iget-object p2, p0, Lb/b/c/m;->t:Lb/b/c/m$k;

    .line 7
    iget-object v4, p1, Lb/b/c/m$j;->i:Lb/b/g/i/e;

    if-nez v4, :cond_11

    new-instance v4, Lb/b/g/i/e;

    iget-object v5, p1, Lb/b/c/m$j;->j:Landroid/content/Context;

    const v6, 0x7f0c0010

    invoke-direct {v4, v5, v6}, Lb/b/g/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Lb/b/c/m$j;->i:Lb/b/g/i/e;

    .line 8
    iput-object p2, v4, Lb/b/g/i/e;->f:Lb/b/g/i/m$a;

    .line 9
    iget-object p2, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    .line 10
    iget-object v5, p2, Lb/b/g/i/g;->b:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Lb/b/g/i/g;->b(Lb/b/g/i/m;Landroid/content/Context;)V

    .line 11
    :cond_11
    iget-object p2, p1, Lb/b/c/m$j;->i:Lb/b/g/i/e;

    iget-object v4, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p2, Lb/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    iget-object v5, p2, Lb/b/g/i/e;->c:Landroid/view/LayoutInflater;

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Lb/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v4, p2, Lb/b/g/i/e;->g:Lb/b/g/i/e$a;

    if-nez v4, :cond_12

    new-instance v4, Lb/b/g/i/e$a;

    invoke-direct {v4, p2}, Lb/b/g/i/e$a;-><init>(Lb/b/g/i/e;)V

    iput-object v4, p2, Lb/b/g/i/e;->g:Lb/b/g/i/e$a;

    :cond_12
    iget-object v4, p2, Lb/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lb/b/g/i/e;->g:Lb/b/g/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Lb/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p2, p2, Lb/b/g/i/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    iput-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1c

    .line 14
    iget-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_8

    :cond_16
    iget-object p2, p1, Lb/b/c/m$j;->i:Lb/b/g/i/e;

    invoke-virtual {p2}, Lb/b/g/i/e;->b()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lb/b/g/i/e$a;

    invoke-virtual {p2}, Lb/b/g/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_17

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_17
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    .line 15
    :cond_18
    iget-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_19
    iget v4, p1, Lb/b/c/m$j;->b:I

    iget-object v5, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    iget-object v4, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p1, Lb/b/c/m$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1b
    const/4 v5, -0x2

    :goto_b
    iput-boolean v2, p1, Lb/b/c/m$j;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lb/b/c/m$j;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lb/b/c/m$j;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lb/b/c/m$j;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lb/b/c/m$j;->m:Z

    return-void

    :cond_1c
    :goto_c
    iput-boolean v1, p1, Lb/b/c/m$j;->o:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public final T(Lb/b/c/m$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lb/b/c/m$j;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lb/b/c/m;->U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lb/b/g/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    :cond_3
    return v1
.end method

.method public final U(Lb/b/c/m$j;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lb/b/c/m;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lb/b/c/m$j;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lb/b/c/m;->M:Lb/b/c/m$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    :cond_2
    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lb/b/c/m$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lb/b/c/m$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lb/b/h/e0;->f()V

    :cond_6
    iget-object v5, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    if-nez v5, :cond_18

    iget-object v5, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v7, p1, Lb/b/c/m$j;->p:Z

    if-eqz v7, :cond_12

    :cond_7
    if-nez v5, :cond_d

    .line 1
    iget-object v5, p0, Lb/b/c/m;->k:Landroid/content/Context;

    iget v7, p1, Lb/b/c/m$j;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040009

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000a

    if-eqz v8, :cond_9

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Lb/b/g/c;

    invoke-direct {v4, v5, v1}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_c
    new-instance v4, Lb/b/g/i/g;

    invoke-direct {v4, v5}, Lb/b/g/i/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p0, v4, Lb/b/g/i/g;->f:Lb/b/g/i/g$a;

    .line 3
    invoke-virtual {p1, v4}, Lb/b/c/m$j;->a(Lb/b/g/i/g;)V

    .line 4
    iget-object v4, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    iget-object v4, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v4, :cond_f

    iget-object v5, p0, Lb/b/c/m;->s:Lb/b/c/m$c;

    if-nez v5, :cond_e

    new-instance v5, Lb/b/c/m$c;

    invoke-direct {v5, p0}, Lb/b/c/m$c;-><init>(Lb/b/c/m;)V

    iput-object v5, p0, Lb/b/c/m;->s:Lb/b/c/m$c;

    :cond_e
    iget-object v5, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    iget-object v7, p0, Lb/b/c/m;->s:Lb/b/c/m$c;

    invoke-interface {v4, v5, v7}, Lb/b/h/e0;->a(Landroid/view/Menu;Lb/b/g/i/m$a;)V

    :cond_f
    iget-object v4, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v4}, Lb/b/g/i/g;->z()V

    iget v4, p1, Lb/b/c/m$j;->a:I

    iget-object v5, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p1, v6}, Lb/b/c/m$j;->a(Lb/b/g/i/g;)V

    if-eqz v3, :cond_10

    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz p1, :cond_10

    iget-object p2, p0, Lb/b/c/m;->s:Lb/b/c/m$c;

    invoke-interface {p1, v6, p2}, Lb/b/h/e0;->a(Landroid/view/Menu;Lb/b/g/i/m$a;)V

    :cond_10
    return v1

    :cond_11
    iput-boolean v1, p1, Lb/b/c/m$j;->p:Z

    :cond_12
    iget-object v4, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v4}, Lb/b/g/i/g;->z()V

    iget-object v4, p1, Lb/b/c/m$j;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    iget-object v5, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v5, v4}, Lb/b/g/i/g;->v(Landroid/os/Bundle;)V

    iput-object v6, p1, Lb/b/c/m$j;->q:Landroid/os/Bundle;

    :cond_13
    iget-object v4, p1, Lb/b/c/m$j;->g:Landroid/view/View;

    iget-object v5, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    iget-object p2, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz p2, :cond_14

    iget-object v0, p0, Lb/b/c/m;->s:Lb/b/c/m$c;

    invoke-interface {p2, v6, v0}, Lb/b/h/e0;->a(Landroid/view/Menu;Lb/b/g/i/m$a;)V

    :cond_14
    iget-object p1, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {p1}, Lb/b/g/i/g;->y()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_16
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_4

    :cond_17
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Lb/b/c/m$j;->n:Z

    iget-object v0, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {v0, p2}, Lb/b/g/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-virtual {p2}, Lb/b/g/i/g;->y()V

    :cond_18
    iput-boolean v2, p1, Lb/b/c/m$j;->k:Z

    iput-boolean v1, p1, Lb/b/c/m$j;->l:Z

    iput-object p1, p0, Lb/b/c/m;->M:Lb/b/c/m$j;

    return v2
.end method

.method public final V()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/c/m;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/e/j/q;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final W()V
    .locals 2

    iget-boolean v0, p0, Lb/b/c/m;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X(Lb/e/j/a0;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/e/j/a0;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10

    iget-object v4, p0, Lb/b/c/m;->c0:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lb/b/c/m;->c0:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lb/b/c/m;->d0:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Lb/b/c/m;->c0:Landroid/graphics/Rect;

    iget-object v6, p0, Lb/b/c/m;->d0:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb/e/j/a0;->b()I

    move-result p2

    invoke-virtual {p1}, Lb/e/j/a0;->d()I

    move-result v7

    invoke-virtual {p1}, Lb/e/j/a0;->c()I

    move-result v8

    invoke-virtual {p1}, Lb/e/j/a0;->a()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Lb/b/h/f1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    invoke-static {v6}, Lb/e/j/q;->f(Landroid/view/View;)Lb/e/j/a0;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lb/e/j/a0;->b()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lb/e/j/a0;->c()I

    move-result v6

    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_5
    if-lez p1, :cond_8

    iget-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    iget-object v6, p0, Lb/b/c/m;->C:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    :cond_9
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lb/b/c/m;->C:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    .line 1
    sget-object v6, Lb/e/j/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    .line 2
    iget-object v5, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const v6, 0x7f060006

    goto :goto_9

    :cond_d
    iget-object v5, p0, Lb/b/c/m;->k:Landroid/content/Context;

    const v6, 0x7f060005

    :goto_9
    invoke-static {v5, v6}, Lb/e/c/a;->b(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    :cond_e
    iget-boolean p1, p0, Lb/b/c/m;->H:Z

    if-nez p1, :cond_f

    if-eqz v4, :cond_f

    const/4 v1, 0x0

    :cond_f
    move v5, p2

    goto :goto_a

    :cond_10
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_11

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_13

    iget-object p1, p0, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :cond_13
    :goto_b
    iget-object p1, p0, Lb/b/c/m;->C:Landroid/view/View;

    if-eqz p1, :cond_15

    if-eqz v4, :cond_14

    goto :goto_c

    :cond_14
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return v1
.end method

.method public a(Lb/b/g/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/b/c/m;->R:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/b/g/i/g;->k()Lb/b/g/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/m;->L(Landroid/view/Menu;)Lb/b/c/m$j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lb/b/c/m$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lb/b/g/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lb/b/h/e0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {p1}, Lb/b/h/e0;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lb/b/c/m;->O()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {v2}, Lb/b/h/e0;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {v0}, Lb/b/h/e0;->d()Z

    iget-boolean v0, p0, Lb/b/c/m;->R:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-object v0, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lb/b/c/m;->R:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/b/c/m;->Y:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lb/b/c/m;->Z:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lb/b/c/m;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lb/b/c/m;->a0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object v0

    iget-object v2, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lb/b/c/m$j;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lb/b/c/m$j;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lb/b/c/m$j;->h:Lb/b/g/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    invoke-interface {p1}, Lb/b/h/e0;->e()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lb/b/c/m;->N(I)Lb/b/c/m$j;

    move-result-object p1

    iput-boolean v0, p1, Lb/b/c/m$j;->o:Z

    invoke-virtual {p0, p1, v1}, Lb/b/c/m;->E(Lb/b/c/m$j;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/b/c/m;->S(Lb/b/c/m$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object p1, p1, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/c/m;->O:Z

    .line 1
    iget v1, p0, Lb/b/c/m;->S:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v1}, Lb/b/c/m;->R(Landroid/content/Context;I)I

    move-result v1

    sget-boolean v2, Lb/b/c/m;->h:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1, v3}, Lb/b/c/m;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 4
    :cond_1
    instance-of v2, p1, Lb/b/g/c;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v1, v3}, Lb/b/c/m;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v4, p1

    check-cast v4, Lb/b/g/c;

    invoke-virtual {v4, v2}, Lb/b/g/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    :cond_2
    sget-boolean v2, Lb/b/c/m;->g:Z

    if-nez v2, :cond_3

    return-object p1

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1b

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, -0x1

    iput v6, v5, Landroid/content/res/Configuration;->uiMode:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    invoke-virtual {p1, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    iput v8, v5, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v5, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 7
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput v6, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_2

    :cond_4
    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    iget v9, v7, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_5

    iput v9, v8, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    iget v6, v5, Landroid/content/res/Configuration;->mcc:I

    iget v9, v7, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v9, :cond_6

    iput v9, v8, Landroid/content/res/Configuration;->mcc:I

    :cond_6
    iget v6, v5, Landroid/content/res/Configuration;->mnc:I

    iget v9, v7, Landroid/content/res/Configuration;->mnc:I

    if-eq v6, v9, :cond_7

    iput v9, v8, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v6, 0x18

    if-lt v2, v6, :cond_8

    .line 8
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 9
    :cond_8
    iget-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v6, v9}, Lb/e/b/g;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_9
    :goto_1
    iget v6, v5, Landroid/content/res/Configuration;->touchscreen:I

    iget v9, v7, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v6, v9, :cond_a

    iput v9, v8, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v6, v5, Landroid/content/res/Configuration;->keyboard:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v9, :cond_b

    iput v9, v8, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v6, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v6, v9, :cond_c

    iput v9, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v6, v5, Landroid/content/res/Configuration;->navigation:I

    iget v9, v7, Landroid/content/res/Configuration;->navigation:I

    if-eq v6, v9, :cond_d

    iput v9, v8, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v6, v5, Landroid/content/res/Configuration;->navigationHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v6, v9, :cond_e

    iput v9, v8, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    iget v9, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v9, :cond_f

    iput v9, v8, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_10

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0xc0

    if-eq v6, v9, :cond_11

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_12

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0x300

    if-eq v6, v9, :cond_13

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v6, 0x1a

    if-lt v2, v6, :cond_15

    .line 10
    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0x3

    if-eq v6, v9, :cond_14

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0xc

    if-eq v6, v9, :cond_15

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    .line 11
    :cond_15
    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_16

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_17

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v9, :cond_18

    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v9, :cond_19

    iput v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v9, :cond_1a

    iput v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1a
    if-lt v2, v4, :cond_1c

    .line 12
    iget v2, v5, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1c

    iput v4, v8, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v8, v3

    .line 13
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v1, v8}, Lb/b/c/m;->F(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Lb/b/g/c;

    const v4, 0x7f0f0109

    invoke-direct {v2, p1, v4}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Lb/b/g/c;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_3

    :catch_2
    :cond_1d
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_21

    invoke-virtual {v2}, Lb/b/g/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x17

    if-lt v4, v5, :cond_21

    .line 16
    sget-object v4, Lb/e/c/b/h$a;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-boolean v5, Lb/e/c/b/h$a;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1f

    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lb/e/c/b/h$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    sput-boolean v0, Lb/e/c/b/h$a;->c:Z

    :cond_1f
    sget-object v0, Lb/e/c/b/h$a;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_20

    :try_start_6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    :try_start_7
    const-string v0, "ResourcesCompat"

    const-string v1, "Failed to invoke rebase() method via reflection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v3, Lb/e/c/b/h$a;->b:Ljava/lang/reflect/Method;

    :cond_20
    :goto_6
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_21
    :goto_7
    return-object v2
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lb/b/c/m;->S:I

    return v0
.end method

.method public g()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lb/b/c/m;->p:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/b/c/m;->P()V

    new-instance v0, Lb/b/g/f;

    iget-object v1, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/c/a;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lb/b/g/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/c/m;->p:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, p0, Lb/b/c/m;->p:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public h()Lb/b/c/a;
    .locals 1

    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Lb/e/b/g;->V(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lb/b/c/m;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lb/b/c/m;->Q(I)V

    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 7

    iget-boolean p1, p0, Lb/b/c/m;->F:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lb/b/c/m;->z:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object p1, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lb/b/c/x;

    .line 3
    iget-object v0, p1, Lb/b/c/x;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lb/b/c/x;->f(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lb/b/h/j;->a()Lb/b/h/j;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    .line 7
    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lb/b/h/j;->c:Lb/b/h/p0;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lb/b/h/p0;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/e;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget v3, v0, Lb/d/e;->f:I

    iget-object v4, v0, Lb/d/e;->e:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v2, v0, Lb/d/e;->f:I

    iput-boolean v2, v0, Lb/d/e;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    monitor-exit p1

    .line 12
    invoke-virtual {p0, v2}, Lb/b/c/m;->A(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/c/m;->O:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/c/m;->A(Z)Z

    invoke-virtual {p0}, Lb/b/c/m;->K()V

    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Lb/e/b/g;->C(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, Lb/b/c/m;->b0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lb/b/c/a;->c(Z)V

    .line 4
    :cond_1
    :goto_1
    sget-object v0, Lb/b/c/l;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lb/b/c/l;->s(Lb/b/c/l;)V

    sget-object v1, Lb/b/c/l;->b:Lb/d/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lb/d/c;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 5
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lb/b/c/m;->P:Z

    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lb/b/c/l;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lb/b/c/l;->s(Lb/b/c/l;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lb/b/c/m;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/m;->a0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/c/m;->Q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/c/m;->R:Z

    iget v0, p0, Lb/b/c/m;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lb/b/c/m;->d:Lb/d/h;

    iget-object v1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lb/b/c/m;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/d/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lb/b/c/m;->d:Lb/d/h;

    iget-object v1, p0, Lb/b/c/m;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/d/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :cond_3
    iget-object v0, p0, Lb/b/c/m;->W:Lb/b/c/m$g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/b/c/m$g;->a()V

    :cond_4
    iget-object v0, p0, Lb/b/c/m;->X:Lb/b/c/m$g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lb/b/c/m$g;->a()V

    :cond_5
    return-void
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    check-cast v0, Lb/b/c/x;

    .line 3
    iput-boolean v1, v0, Lb/b/c/x;->w:Z

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Lb/b/c/m;->e0:Lb/b/c/t;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/c/m;->k:Landroid/content/Context;

    sget-object v2, Lb/b/b;->j:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x74

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/b/c/t;

    invoke-direct {v0}, Lb/b/c/t;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/t;

    iput-object v2, p0, Lb/b/c/m;->e0:Lb/b/c/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lb/b/c/t;

    invoke-direct {v0}, Lb/b/c/t;-><init>()V

    :goto_0
    iput-object v0, p0, Lb/b/c/m;->e0:Lb/b/c/t;

    :cond_1
    :goto_1
    sget-boolean v0, Lb/b/c/m;->e:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lb/b/c/m;->f0:Lb/b/c/u;

    if-nez v0, :cond_2

    new-instance v0, Lb/b/c/u;

    invoke-direct {v0}, Lb/b/c/u;-><init>()V

    iput-object v0, p0, Lb/b/c/m;->f0:Lb/b/c/u;

    :cond_2
    iget-object v0, p0, Lb/b/c/m;->f0:Lb/b/c/u;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v6, :cond_8

    move-object v7, p4

    check-cast v7, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v5, :cond_8

    iget-object v8, v0, Lb/b/c/u;->a:Ljava/util/Deque;

    .line 3
    :goto_2
    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v9, :cond_4

    .line 4
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v2, :cond_4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v10, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :catch_0
    :cond_4
    :goto_3
    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_6

    .line 5
    invoke-interface {v8}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v9, v3

    .line 6
    :cond_6
    iget-object v0, v0, Lb/b/c/u;->a:Ljava/util/Deque;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz v9, :cond_7

    if-eq v7, v9, :cond_7

    .line 7
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "include"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v6, :cond_a

    .line 8
    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v5, :cond_e

    goto :goto_8

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_b

    goto :goto_9

    .line 9
    :cond_b
    iget-object v6, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    :goto_7
    if-nez v0, :cond_c

    :goto_8
    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    if-eq v0, v6, :cond_e

    instance-of v7, v0, Landroid/view/View;

    if-eqz v7, :cond_e

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Lb/e/j/q;->h(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 10
    :goto_a
    iget-object v6, p0, Lb/b/c/m;->e0:Lb/b/c/t;

    sget-boolean v7, Lb/b/c/m;->e:Z

    sget v8, Lb/b/h/e1;->a:I

    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_b

    :cond_f
    move-object p1, p3

    .line 12
    :goto_b
    sget-object v0, Lb/b/b;->x:[I

    invoke-virtual {p1, p4, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v7, :cond_10

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    :goto_c
    const/4 v8, 0x4

    if-nez v7, :cond_11

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_11

    const-string v9, "AppCompatViewInflater"

    const-string v10, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_13

    instance-of v0, p1, Lb/b/g/c;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lb/b/g/c;

    .line 13
    iget v0, v0, Lb/b/g/c;->a:I

    if-eq v0, v7, :cond_13

    .line 14
    :cond_12
    new-instance v0, Lb/b/g/c;

    invoke-direct {v0, p1, v7}, Lb/b/g/c;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    .line 15
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    const-string v0, "Button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_d

    :cond_14
    const/16 v2, 0xd

    goto/16 :goto_e

    :sswitch_1
    const-string v0, "EditText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_d

    :cond_15
    const/16 v2, 0xc

    goto/16 :goto_e

    :sswitch_2
    const-string v0, "CheckBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    const/16 v2, 0xb

    goto/16 :goto_e

    :sswitch_3
    const-string v0, "AutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_d

    :cond_17
    const/16 v2, 0xa

    goto/16 :goto_e

    :sswitch_4
    const-string v0, "ImageView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_d

    :cond_18
    const/16 v2, 0x9

    goto/16 :goto_e

    :sswitch_5
    const-string v0, "ToggleButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_d

    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_e

    :sswitch_6
    const-string v0, "RadioButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v2, 0x7

    goto :goto_e

    :sswitch_7
    const-string v0, "Spinner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v2, 0x6

    goto :goto_e

    :sswitch_8
    const-string v0, "SeekBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v2, 0x5

    goto :goto_e

    :sswitch_9
    const-string v0, "ImageButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v2, 0x4

    goto :goto_e

    :sswitch_a
    const-string v0, "TextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_d

    :sswitch_b
    const-string v0, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v2, 0x2

    goto :goto_e

    :sswitch_c
    const-string v0, "CheckedTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v2, 0x1

    goto :goto_e

    :sswitch_d
    const-string v0, "RatingBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_d

    :cond_20
    const/4 v2, 0x0

    goto :goto_e

    :goto_d
    const/4 v2, -0x1

    :cond_21
    :goto_e
    packed-switch v2, :pswitch_data_0

    move-object v0, v3

    goto :goto_10

    .line 16
    :pswitch_0
    new-instance v0, Lb/b/h/f;

    invoke-direct {v0, p1, p4}, Lb/b/h/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 17
    :pswitch_1
    new-instance v0, Lb/b/h/k;

    invoke-direct {v0, p1, p4}, Lb/b/h/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 18
    :pswitch_2
    new-instance v0, Lb/b/h/g;

    invoke-direct {v0, p1, p4}, Lb/b/h/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 19
    :pswitch_3
    new-instance v0, Lb/b/h/d;

    invoke-direct {v0, p1, p4}, Lb/b/h/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 20
    :pswitch_4
    new-instance v0, Lb/b/h/n;

    .line 21
    invoke-direct {v0, p1, p4, v1}, Lb/b/h/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_f

    .line 22
    :pswitch_5
    new-instance v0, Lb/b/h/d0;

    invoke-direct {v0, p1, p4}, Lb/b/h/d0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 23
    :pswitch_6
    new-instance v0, Lb/b/h/r;

    invoke-direct {v0, p1, p4}, Lb/b/h/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 24
    :pswitch_7
    new-instance v0, Lb/b/h/x;

    const v2, 0x7f0400d5

    .line 25
    invoke-direct {v0, p1, p4, v2}, Lb/b/h/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_f

    .line 26
    :pswitch_8
    new-instance v0, Lb/b/h/u;

    invoke-direct {v0, p1, p4}, Lb/b/h/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 27
    :pswitch_9
    new-instance v0, Lb/b/h/l;

    const v2, 0x7f040093

    .line 28
    invoke-direct {v0, p1, p4, v2}, Lb/b/h/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_f

    .line 29
    :pswitch_a
    new-instance v0, Lb/b/h/b0;

    invoke-direct {v0, p1, p4}, Lb/b/h/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 30
    :pswitch_b
    new-instance v0, Lb/b/h/o;

    invoke-direct {v0, p1, p4}, Lb/b/h/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 31
    :pswitch_c
    new-instance v0, Lb/b/h/h;

    invoke-direct {v0, p1, p4}, Lb/b/h/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 32
    :pswitch_d
    new-instance v0, Lb/b/h/s;

    invoke-direct {v0, p1, p4}, Lb/b/h/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    :goto_f
    invoke-virtual {v6, v0, p2}, Lb/b/c/t;->b(Landroid/view/View;Ljava/lang/String;)V

    :goto_10
    if-nez v0, :cond_26

    if-eq p3, p1, :cond_26

    const-string p3, "view"

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    const-string p2, "class"

    invoke-interface {p4, v3, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_22
    :try_start_3
    iget-object p3, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p4, p3, v5

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v7, p3, :cond_25

    const/4 p3, 0x0

    :goto_11
    sget-object v0, Lb/b/c/t;->c:[Ljava/lang/String;

    array-length v2, v0

    if-ge p3, v2, :cond_24

    aget-object v0, v0, p3

    invoke-virtual {v6, p1, p2, v0}, Lb/b/c/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_23

    iget-object p1, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object v3, p1, v1

    aput-object v3, p1, v5

    move-object v3, v0

    goto :goto_12

    :cond_23
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_24
    iget-object p1, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object v3, p1, v1

    aput-object v3, p1, v5

    goto :goto_12

    :cond_25
    :try_start_4
    invoke-virtual {v6, p1, p2, v3}, Lb/b/c/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object v3, p2, v1

    aput-object v3, p2, v5

    move-object v3, p1

    goto :goto_12

    :catchall_1
    move-exception p1

    iget-object p2, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object v3, p2, v1

    aput-object v3, p2, v5

    throw p1

    :catch_2
    iget-object p1, v6, Lb/b/c/t;->e:[Ljava/lang/Object;

    aput-object v3, p1, v1

    aput-object v3, p1, v5

    :goto_12
    move-object v0, v3

    :cond_26
    if-eqz v0, :cond_29

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_29

    .line 36
    sget-object p2, Lb/e/j/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_13

    .line 37
    :cond_27
    sget-object p2, Lb/b/c/t;->b:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    new-instance p3, Lb/b/c/t$a;

    invoke-direct {p3, v0, p2}, Lb/b/c/t$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_29
    :goto_13
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lb/b/c/m;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/c/m;->Q:Z

    invoke-virtual {p0}, Lb/b/c/m;->z()Z

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/c/m;->Q:Z

    .line 1
    invoke-virtual {p0}, Lb/b/c/m;->P()V

    iget-object v1, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Lb/b/c/x;

    .line 3
    iput-boolean v0, v1, Lb/b/c/x;->w:Z

    iget-object v0, v1, Lb/b/c/x;->v:Lb/b/g/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/g/g;->a()V

    :cond_0
    return-void
.end method

.method public t(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lb/b/c/m;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lb/b/c/m;->F:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Lb/b/c/m;->F:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Lb/b/c/m;->l:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->G:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->F:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->H:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->E:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->D:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lb/b/c/m;->W()V

    iput-boolean v4, p0, Lb/b/c/m;->J:Z

    return v4
.end method

.method public u(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lb/b/c/m;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object p1, p1, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object p1, p1, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/c/m;->J()V

    iget-object v0, p0, Lb/b/c/m;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lb/b/c/m;->m:Lb/b/c/m$e;

    .line 1
    iget-object p1, p1, Lb/b/g/h;->b:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lb/b/c/m;->T:I

    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lb/b/c/m;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Lb/b/c/m;->r:Lb/b/h/e0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/b/h/e0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lb/b/c/m;->o:Lb/b/c/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lb/b/c/x;

    .line 3
    iget-object v0, v0, Lb/b/c/x;->g:Lb/b/h/f0;

    invoke-interface {v0, p1}, Lb/b/h/f0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lb/b/c/m;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/b/c/m;->A(Z)Z

    move-result v0

    return v0
.end method
