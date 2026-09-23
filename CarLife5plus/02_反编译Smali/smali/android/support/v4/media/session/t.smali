.class public final Landroid/support/v4/media/session/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ld3/d;
.implements Ldc/d;
.implements Lea/b0;
.implements Lhb/a;
.implements Lhb/c;
.implements Ll4/n;
.implements Lhb/e;
.implements Lmb/b;


# static fields
.field public static d:I


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroid/support/v4/media/session/t;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Lib/d;

    const/16 v0, 0x15

    .line 32
    invoke-direct {p1, v0}, Lib/d;-><init>(I)V

    .line 33
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 34
    new-instance p1, Ls/s;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ls/s;-><init>(I)V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    .line 35
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Ll2/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ll2/c;-><init>(I)V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 37
    new-instance p1, Ll2/c;

    invoke-direct {p1, v0}, Ll2/c;-><init>(I)V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    .line 38
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    return-void

    .line 40
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Lh1/e;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/ref/Reference;

    invoke-direct {p1, v0}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    .line 44
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p1, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    .line 49
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 61
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 84
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/session/t;->a:I

    iput-object p2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    if-eqz p1, :cond_d

    .line 88
    const-string v1, "MediaSession"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 89
    sget v1, Ly4/a;->a:I

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 96
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 98
    const-string v1, "MediaButtonReceiver"

    const-string v3, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    .line 99
    const-string v1, "MediaSessionCompat"

    const-string v6, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_4

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_3

    const/high16 v2, 0x2000000

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 103
    :goto_1
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 104
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 105
    new-instance v2, Landroid/support/v4/media/session/r;

    .line 106
    invoke-direct {v2, p1}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_6

    .line 108
    new-instance v2, Landroid/support/v4/media/session/p;

    .line 109
    invoke-direct {v2, p1}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const/16 v2, 0x16

    if-lt v0, v2, :cond_7

    .line 111
    new-instance v2, Landroid/support/v4/media/session/n;

    .line 112
    invoke-direct {v2, p1}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    goto :goto_2

    .line 114
    :cond_7
    new-instance v2, Landroid/support/v4/media/session/m;

    invoke-direct {v2, p1}, Landroid/support/v4/media/session/m;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 115
    :goto_2
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_3

    :cond_8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_3
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    new-instance v3, Landroid/support/v4/media/session/h;

    .line 118
    invoke-direct {v3}, Landroid/support/v4/media/session/k;-><init>()V

    .line 119
    invoke-virtual {p0, v3, v2}, Landroid/support/v4/media/session/t;->j1(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    .line 120
    iget-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/media/session/m;

    .line 121
    iget-object v2, v2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v2, v4}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 122
    iget-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/media/session/m;

    .line 123
    iget-object v2, v2, Landroid/support/v4/media/session/m;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_b

    .line 124
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    if-lt v0, v1, :cond_9

    .line 125
    new-instance v0, Landroid/support/v4/media/session/g;

    .line 126
    invoke-direct {v0, p1, v2}, Landroid/support/v4/media/session/f;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_4

    .line 127
    :cond_9
    new-instance v0, Landroid/support/v4/media/session/f;

    invoke-direct {v0, p1, v2}, Landroid/support/v4/media/session/f;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 128
    :goto_4
    sget v0, Landroid/support/v4/media/session/t;->d:I

    if-nez v0, :cond_a

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x43a00000    # 320.0f

    .line 130
    invoke-static {v5, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Landroid/support/v4/media/session/t;->d:I

    :cond_a
    return-void

    .line 131
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionToken must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, La7/c;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    move-result-object v0

    .line 64
    iput-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 65
    invoke-static {p1}, La7/c;->A(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    move-result-object p1

    .line 66
    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    const/16 v0, 0x12

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 69
    new-instance v0, Ln4/i;

    invoke-direct {v0, p1}, Ln4/i;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    sget-object v0, Ln4/a;->b:Ln4/a;

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Ln4/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Ln4/a;->b:Ln4/a;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ln4/a;

    .line 75
    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    .line 77
    const-class v3, Ln4/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Ln4/a;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    :try_start_2
    sput-object v1, Ln4/a;->b:Ln4/a;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 80
    :cond_1
    :goto_2
    sget-object v0, Ln4/a;->b:Ln4/a;

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Lc5/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcc/h;Lcc/b;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    sget-object v0, Lcc/d;->i:Lcc/d;

    sget-object v0, Lcc/e;->i:Lcc/e;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lh0/t;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 24
    sget-object p1, Ls/l0;->a:Ls/c0;

    .line 25
    new-instance p1, Ls/c0;

    invoke-direct {p1}, Ls/c0;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lja/e;)V
    .locals 2

    const/16 p1, 0x11

    iput p1, p0, Landroid/support/v4/media/session/t;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Lkb/l;

    const-string v0, "Type parameter upper bound erasure results"

    invoke-direct {p1, v0}, Lkb/l;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, La8/g0;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 11
    new-instance v0, Lba/j;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lkb/l;->b(Lf9/k;)Lkb/f;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 27
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/t;-><init>(I)V

    .line 28
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/Class;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/16 v0, 0x1b

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 56
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    iget-object v2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 58
    iget-object v2, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lmb/c;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 21
    new-instance p1, Lkb/l;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lkb/l;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lba/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lkb/l;->c(Lf9/k;)Lf1/e;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp4/x;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv9/y;Lba/a;Lgb/a;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Landroid/support/v4/media/session/t;->a:I

    const-string v0, "module"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    new-instance p3, Lu0/j;

    invoke-direct {p3, p1, p2}, Lu0/j;-><init>(Lv9/y;Lba/a;)V

    iput-object p3, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public static Z0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-class v0, Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static l1(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :catch_0
    const-string p0, "MediaSessionCompat"

    .line 13
    .line 14
    const-string v1, "Could not unparcel the data."

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public A(Lob/e;)Llb/k0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public A0(Lob/d;)Llb/k0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->K(Lob/d;)Llb/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-static {v0}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public B(Lob/c;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lya/a;

    .line 2
    .line 3
    return p1
.end method

.method public B0(Lob/c;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->J(Lob/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public C(Llb/x0;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->K(Lob/d;)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmb/g;->F(Lob/d;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->d(Lob/d;)Llb/a0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lmb/g;->F(Lob/d;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public C0(Lob/e;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->z0(Lob/e;)Lob/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public D(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->D(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public D0(Lob/e;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lmb/g;->y(Lob/h;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public E(Lob/e;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lmb/g;->D(Lob/h;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public E0(Lpa/s0;Lra/f;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lgb/a;

    .line 14
    .line 15
    iget-object v0, v0, Lgb/a;->k:Lva/m;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/List;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lpa/h;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public F(Lob/h;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->Q(Lob/h;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public F0(Lob/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->M(Lob/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public G(Lhb/w;Lva/a;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgb/a;

    .line 4
    .line 5
    const-string v1, "proto"

    .line 6
    .line 7
    invoke-static {p2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "kind"

    .line 11
    .line 12
    invoke-static {p3, v1}, La2/f;->M(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    instance-of v1, p2, Lpa/a0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    instance-of v1, p2, Lpa/i0;

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    invoke-static {p3}, Le1/d;->b(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq p2, v1, :cond_6

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p2, v1, :cond_6

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-ne p2, v1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    if-eq p3, p2, :cond_5

    .line 45
    .line 46
    const/4 p2, 0x2

    .line 47
    if-eq p3, p2, :cond_4

    .line 48
    .line 49
    const/4 p2, 0x3

    .line 50
    if-eq p3, p2, :cond_3

    .line 51
    .line 52
    const/4 p2, 0x4

    .line 53
    if-eq p3, p2, :cond_2

    .line 54
    .line 55
    const-string p2, "null"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string p2, "PROPERTY_SETTER"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string p2, "PROPERTY_GETTER"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const-string p2, "PROPERTY"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const-string p2, "FUNCTION"

    .line 68
    .line 69
    :goto_0
    const-string p3, "Unsupported callable kind with property proto for receiver annotations: "

    .line 70
    .line 71
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    .line 87
    .line 88
    const/16 p3, 0xa

    .line 89
    .line 90
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 91
    .line 92
    invoke-static {v0, p3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lpa/h;

    .line 114
    .line 115
    iget-object v1, p1, Lhb/w;->a:Lra/f;

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    return-object p2

    .line 126
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v0, "Unknown message: "

    .line 131
    .line 132
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public G0(Lob/d;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->K(Lob/d;)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->d(Lob/d;)Llb/a0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lmb/g;->V(Lob/e;)Llb/k0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    return p1
.end method

.method public H(Lhb/w;Lpa/i0;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lgb/a;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 18
    .line 19
    invoke-static {v1, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lpa/h;

    .line 41
    .line 42
    iget-object v2, p1, Lhb/w;->a:Lra/f;

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p2
.end method

.method public H0(Lob/d;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->c(Lob/d;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public I(Lob/d;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->g(Lob/d;)Llb/p;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public I0(Lob/e;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/t;->A0(Lob/d;)Llb/k0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmb/g;->G(Lob/h;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lmb/g;->H(Lob/d;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public J(Lob/c;)Lmb/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->W(Lob/c;)Lmb/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J0(Ljava/util/List;)Lg3/w;
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Lg3/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    :try_start_2
    iget-object v3, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lg3/h;

    .line 19
    .line 20
    invoke-interface {v4, v3}, Lg3/g;->a(Lg3/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    move-object v3, v4

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    move-object v1, v4

    .line 29
    goto :goto_2

    .line 30
    :catch_1
    move-exception v0

    .line 31
    move-object v1, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lg3/h;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lb3/g;

    .line 41
    .line 42
    iget-object p1, p1, Lg3/h;->a:Ld3/e;

    .line 43
    .line 44
    invoke-virtual {p1}, Ld3/e;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lg3/h;

    .line 54
    .line 55
    iget v2, p1, Lg3/h;->b:I

    .line 56
    .line 57
    iget p1, p1, Lg3/h;->c:I

    .line 58
    .line 59
    invoke-static {v2, p1}, Lb3/d0;->b(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    new-instance p1, Lb3/n0;

    .line 64
    .line 65
    invoke-direct {p1, v2, v3}, Lb3/n0;-><init>(J)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Lg3/w;

    .line 71
    .line 72
    iget-wide v4, v4, Lg3/w;->b:J

    .line 73
    .line 74
    invoke-static {v4, v5}, Lb3/n0;->g(J)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_1

    .line 79
    .line 80
    move-object v1, p1

    .line 81
    :cond_1
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-wide v1, v1, Lb3/n0;->a:J

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {v2, v3}, Lb3/n0;->e(J)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {v2, v3}, Lb3/n0;->f(J)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {p1, v1}, Lb3/d0;->b(II)J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    :goto_1
    iget-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Lg3/h;

    .line 101
    .line 102
    invoke-virtual {p1}, Lg3/h;->c()Lb3/n0;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v3, Lg3/w;

    .line 107
    .line 108
    invoke-direct {v3, v0, v1, v2, p1}, Lg3/w;-><init>(Lb3/g;JLb3/n0;)V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 112
    .line 113
    return-object v3

    .line 114
    :catch_2
    move-exception v0

    .line 115
    :goto_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v5, "Error while applying EditCommand batch to buffer (length="

    .line 125
    .line 126
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v5, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v5, Lg3/h;

    .line 132
    .line 133
    iget-object v5, v5, Lg3/h;->a:Ld3/e;

    .line 134
    .line 135
    invoke-virtual {v5}, Ld3/e;->l()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v5, ", composition="

    .line 143
    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v5, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v5, Lg3/h;

    .line 150
    .line 151
    invoke-virtual {v5}, Lg3/h;->c()Lb3/n0;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v5, ", selection="

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v5, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v5, Lg3/h;

    .line 166
    .line 167
    iget v6, v5, Lg3/h;->b:I

    .line 168
    .line 169
    iget v5, v5, Lg3/h;->c:I

    .line 170
    .line 171
    invoke-static {v6, v5}, Lb3/d0;->b(II)J

    .line 172
    .line 173
    .line 174
    move-result-wide v5

    .line 175
    invoke-static {v5, v6}, Lb3/n0;->h(J)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v5, "):"

    .line 183
    .line 184
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/16 v3, 0xa

    .line 195
    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance v8, La8/q;

    .line 200
    .line 201
    const/16 v3, 0xc

    .line 202
    .line 203
    invoke-direct {v8, v3, v1, p0}, La8/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const/16 v9, 0x3c

    .line 207
    .line 208
    const-string v5, "\n"

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    move-object v3, p1

    .line 213
    invoke-static/range {v3 .. v9}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v1, "toString(...)"

    .line 221
    .line 222
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {v2, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    throw v2
.end method

.method public K(Lob/d;)Llb/a0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->g(Lob/d;)Llb/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lmb/g;->N(Llb/p;)Llb/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public K0()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lq8/e;

    .line 20
    .line 21
    :try_start_0
    iget-object v3, v2, Lq8/e;->b:Ljava/io/FileOutputStream;

    .line 22
    .line 23
    invoke-static {v3}, Lq8/l;->d(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v2, Lq8/e;->a:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, "could not delete temporary file: "

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    sget-object v3, Lq8/l;->g:Ljava/util/logging/Logger;

    .line 61
    .line 62
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 63
    .line 64
    const-string v5, "could not delete file "

    .line 65
    .line 66
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public L(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->E(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public L0(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc5/a;

    .line 9
    .line 10
    iget-boolean v1, v0, Lc5/a;->g:Z

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Lc5/a;->f:Landroid/os/Bundle;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-static {p1, v1}, Lm9/e0;->l0(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iput-object v2, v0, Lc5/a;->f:Landroid/os/Bundle;

    .line 42
    .line 43
    :cond_2
    return-object v3

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public M(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lgb/a;

    .line 9
    .line 10
    iget-object v0, v0, Lgb/a;->i:Lva/m;

    .line 11
    .line 12
    invoke-static {p2, v0}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lpa/e;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lu0/j;

    .line 25
    .line 26
    iget-object p1, p1, Lhb/w;->a:Lra/f;

    .line 27
    .line 28
    invoke-virtual {v0, p3, p2, p1}, Lu0/j;->D(Llb/w;Lpa/e;Lra/f;)Lza/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public M0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->M0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public N(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->G(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public N0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v1, v0, Lp4/x;->t:Lp4/m;

    .line 6
    .line 7
    iget-object v1, v1, Lp4/m;->c:Lj/j;

    .line 8
    .line 9
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->N0(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    return-void
.end method

.method public O(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ld3/e;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ld3/e;->t(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    :goto_0
    return v1
.end method

.method public O0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->O0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public P(I)I
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/e;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ld3/e;->w(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/CharSequence;

    .line 17
    .line 18
    add-int/lit8 v1, p1, -0x1

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method

.method public P0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->P0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public Q(Lob/e;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->L(Lob/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->Q0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public R()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll4/y;

    .line 4
    .line 5
    return-object v0
.end method

.method public R0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->R0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public S(Lua/b;)Lhb/d;
    .locals 3

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Laa/b;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lna/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Lna/f;->c()Lhb/i;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lhb/i;->c:Lhb/j;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lra/e;->g:Lra/e;

    .line 24
    .line 25
    invoke-static {v0, p1, v2}, Lg5/a;->F(Laa/b;Lua/b;Lra/e;)Laa/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object v2, v0, Laa/c;->a:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-static {v2}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lna/f;->g(Laa/c;)Lhb/d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public S0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v1, v0, Lp4/x;->t:Lp4/m;

    .line 6
    .line 7
    iget-object v1, v1, Lp4/m;->c:Lj/j;

    .line 8
    .line 9
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->S0(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    return-void
.end method

.method public T0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->T0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public U(Llb/w;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->U0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public V(Lv9/q0;Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lmb/g;->v(Lv9/q0;Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public V0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->V0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public W(Lob/e;I)Llb/n0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lmb/g;->c(Lob/d;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p2, v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2}, Lmb/g;->p(Lob/d;I)Llb/n0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public W0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->W0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public X(Lob/d;)Lob/d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmb/g;->Z(Lmb/b;Lob/d;)Lob/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->X0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public Y(Lob/e;)Llb/a0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lmb/g;->Y(Lob/e;Z)Llb/a0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public Y0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/x;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/x;->v:Lp4/k;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lp4/k;->j()Lp4/x;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lp4/x;->l:Landroid/support/v4/media/session/t;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/t;->Y0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public Z(Lob/e;)Llb/a0;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lmb/g;->Y(Lob/e;Z)Llb/a0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public a(Llb/p;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->N(Llb/p;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a0(Lob/h;Lob/h;)Z
    .locals 2

    .line 1
    const-string v0, "c1"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "c2"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Llb/k0;

    .line 12
    .line 13
    const-string v1, "Failed requirement."

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    instance-of v0, p2, Llb/k0;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-static {p1, p2}, Lmb/g;->b(Lob/h;Lob/h;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    check-cast p1, Llb/k0;

    .line 28
    .line 29
    check-cast p2, Llb/k0;

    .line 30
    .line 31
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/Map;

    .line 34
    .line 35
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lmb/c;

    .line 38
    .line 39
    invoke-interface {v1, p1, p2}, Lmb/c;->a(Llb/k0;Llb/k0;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Llb/k0;

    .line 54
    .line 55
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Llb/k0;

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 79
    return p1

    .line 80
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 81
    return p1

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public a1(Lja/a;)Llb/x0;
    .locals 0

    .line 1
    iget-object p1, p1, Lja/a;->f:Llb/a0;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lp4/o;->Z(Llb/w;)Llb/x0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p1

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lr8/o;

    .line 16
    .line 17
    invoke-virtual {p1}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lnb/i;

    .line 22
    .line 23
    return-object p1
.end method

.method public b(Lob/g;)I
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lob/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lob/d;

    .line 11
    .line 12
    invoke-static {p1}, Lmb/g;->c(Lob/d;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    instance-of v0, p1, Lob/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lob/a;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "unknown type argument list type: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public b0(Llb/a0;)Lob/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmb/g;->e(Lmb/b;Lob/f;)Lob/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b1(Lv9/q0;Lja/a;)Llb/w;
    .locals 2

    .line 1
    const-string v0, "typeParameter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeAttr"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lkb/f;

    .line 14
    .line 15
    new-instance v1, Llb/m0;

    .line 16
    .line 17
    invoke-direct {v1, p1, p2}, Llb/m0;-><init>(Lv9/q0;Lja/a;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Llb/w;

    .line 25
    .line 26
    return-object p1
.end method

.method public c(Llb/p;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->X(Llb/p;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c0(Lob/e;Lob/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c1()La5/d;
    .locals 6

    .line 1
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc5/a;

    .line 6
    .line 7
    iget-object v2, v1, Lc5/a;->c:Lib/d;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v1, v1, Lc5/a;->d:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, La5/d;

    .line 44
    .line 45
    invoke-static {v5, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    move-object v4, v3

    .line 52
    :cond_1
    if-eqz v4, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    monitor-exit v2

    .line 58
    return-object v4

    .line 59
    :goto_1
    monitor-exit v2

    .line 60
    throw v0
.end method

.method public d(Lob/d;)Llb/a0;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->g(Lob/d;)Llb/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lmb/g;->X(Llb/p;)Llb/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public d0(Ljava/lang/CharSequence;IILl4/v;)Z
    .locals 3

    .line 1
    iget v0, p4, Ll4/v;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ll4/y;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Ll4/y;

    .line 16
    .line 17
    instance-of v2, p1, Landroid/text/Spannable;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast p1, Landroid/text/Spannable;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    :goto_0
    invoke-direct {v0, p1}, Ll4/y;-><init>(Landroid/text/Spannable;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lib/d;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Ll4/w;

    .line 43
    .line 44
    invoke-direct {p1, p4}, Ll4/w;-><init>(Ll4/v;)V

    .line 45
    .line 46
    .line 47
    iget-object p4, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p4, Ll4/y;

    .line 50
    .line 51
    const/16 v0, 0x21

    .line 52
    .line 53
    invoke-virtual {p4, p1, p2, p3, v0}, Ll4/y;->setSpan(Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    return v1
.end method

.method public d1(Lpa/h;Lra/f;)Lw9/c;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lu0/j;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lu0/j;->j(Lpa/h;Lra/f;)Lw9/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public e(Lya/b;)Llb/n0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->S(Lya/b;)Llb/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e0(Ljava/util/ArrayList;)Llb/x0;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_8

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-static {p1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_4

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Llb/x0;

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    invoke-static {v7}, Llb/c;->j(Llb/w;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v5, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 52
    :goto_2
    instance-of v8, v7, Llb/a0;

    .line 53
    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    check-cast v7, Llb/a0;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    instance-of v6, v7, Llb/p;

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    check-cast v7, Llb/p;

    .line 64
    .line 65
    iget-object v7, v7, Llb/p;->b:Llb/a0;

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    :goto_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lac/p;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_4
    if-eqz v5, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    filled-new-array {p1}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Lnb/k;->x:Lnb/k;

    .line 89
    .line 90
    invoke-static {v0, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_5
    sget-object v1, Lmb/t;->a:Lmb/t;

    .line 96
    .line 97
    if-nez v6, :cond_6

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lmb/t;->b(Ljava/util/ArrayList;)Llb/a0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-static {p1, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_7

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Llb/x0;

    .line 128
    .line 129
    invoke-static {v2}, Llb/c;->D(Llb/w;)Llb/a0;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    invoke-virtual {v1, v0}, Lmb/t;->b(Ljava/util/ArrayList;)Llb/a0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v1, v3}, Lmb/t;->b(Ljava/util/ArrayList;)Llb/a0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {p1, v0}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_8
    invoke-static {p1}, Ls8/p;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Llb/x0;

    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v0, "Expected some types"

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method

.method public e1(J)Landroid/view/autofill/AutofillId;
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
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, Lk2/n;->g(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/view/View;

    .line 16
    .line 17
    invoke-static {v1}, Lp4/e;->o(Landroid/view/View;)Lf4/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lf4/d;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v1}, Ls1/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1, p2}, Lu2/a;->b(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public f(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p1, "proto"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public f0(Lhb/w;Lva/a;IILpa/a1;)Ljava/util/List;
    .locals 0

    .line 1
    const-string p4, "callableProto"

    .line 2
    .line 3
    invoke-static {p2, p4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "kind"

    .line 7
    .line 8
    invoke-static {p3, p2}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Lgb/a;

    .line 14
    .line 15
    iget-object p2, p2, Lgb/a;->j:Lva/m;

    .line 16
    .line 17
    invoke-virtual {p5, p2}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljava/util/List;

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    sget-object p2, Ls8/w;->a:Ls8/w;

    .line 26
    .line 27
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 p4, 0xa

    .line 30
    .line 31
    invoke-static {p2, p4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    check-cast p4, Lpa/h;

    .line 53
    .line 54
    iget-object p5, p1, Lhb/w;->a:Lra/f;

    .line 55
    .line 56
    invoke-virtual {p0, p4, p5}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object p3
.end method

.method public f1()Llb/j0;
    .locals 6

    .line 1
    sget-object v4, Lmb/e;->a:Lmb/e;

    .line 2
    .line 3
    new-instance v0, Llb/j0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    sget-object v5, Lmb/f;->a:Lmb/f;

    .line 8
    .line 9
    move-object v3, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Llb/j0;-><init>(ZZLmb/b;Lmb/e;Lmb/f;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public g(Lob/e;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->B(Lob/d;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public g0(Lv9/q0;)Lob/i;
    .locals 1

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lv9/q0;->J()Llb/y0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getVariance(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Li9/a;->q(Llb/y0;)Lob/i;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public g1(Lb4/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb4/p;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lv/a1;

    .line 8
    .line 9
    iget v2, p1, Lb4/j;->b:I

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lb4/j;->a:Landroid/graphics/Typeface;

    .line 14
    .line 15
    new-instance v2, Lb4/a;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, v1, p1}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lb4/p;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Lb4/b;

    .line 26
    .line 27
    invoke-direct {p1, v1, v2}, Lb4/b;-><init>(Lv/a1;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lb4/p;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public h(Lob/d;)Llb/x0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->P(Lob/d;)Llb/x0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h0(Lob/d;I)Llb/n0;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lmb/g;->p(Lob/d;I)Llb/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h1(Ljava/lang/String;La5/d;)V
    .locals 3

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc5/a;

    .line 9
    .line 10
    iget-object v1, v0, Lc5/a;->c:Lib/d;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v0, Lc5/a;->d:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lc5/a;->d:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    const-string p1, "SavedStateProvider with the given key is already registered"

    .line 31
    .line 32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_0
    monitor-exit v1

    .line 39
    throw p1
.end method

.method public i(Lob/f;Lob/f;)Llb/x0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmb/g;->m(Lmb/b;Lob/e;Lob/e;)Llb/x0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i0(Lob/e;)Lmb/a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmb/g;->T(Lmb/b;Lob/e;)Lmb/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i1()V
    .locals 5

    .line 1
    const-class v0, Landroidx/lifecycle/k;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc5/a;

    .line 6
    .line 7
    iget-boolean v1, v1, Lc5/a;->h:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, La5/a;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, La5/a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, La5/a;-><init>(Landroid/support/v4/media/session/t;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, La5/a;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, v1, La5/a;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "Class "

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v2

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public j(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->z(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public j0(I)I
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/e;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ld3/e;->w(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return p1
.end method

.method public j1(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/support/v4/media/session/m;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1, p1}, Landroid/support/v4/media/session/m;->e(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/m;->e(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->y(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public k0(I)I
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld3/e;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ld3/e;->t(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/CharSequence;

    .line 16
    .line 17
    add-int/lit8 v1, p1, -0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return p1
.end method

.method public k1(Llb/s0;Ljava/util/List;Lja/a;)Lt8/g;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Lt8/g;

    .line 8
    .line 9
    new-instance v4, Lt8/e;

    .line 10
    .line 11
    invoke-direct {v4}, Lt8/e;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Lt8/g;-><init>(Lt8/e;)V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_16

    .line 26
    .line 27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Llb/w;

    .line 32
    .line 33
    invoke-virtual {v4}, Llb/w;->D0()Llb/k0;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-interface {v5}, Llb/k0;->k()Lv9/h;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    instance-of v6, v5, Lv9/e;

    .line 42
    .line 43
    if-eqz v6, :cond_14

    .line 44
    .line 45
    iget-object v2, v2, Lja/a;->e:Ljava/util/Set;

    .line 46
    .line 47
    invoke-virtual {v4}, Llb/w;->G0()Llb/x0;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    instance-of v6, v5, Llb/p;

    .line 52
    .line 53
    const-string v9, "getType(...)"

    .line 54
    .line 55
    const/16 v11, 0xa

    .line 56
    .line 57
    const-string v12, "getParameters(...)"

    .line 58
    .line 59
    if-eqz v6, :cond_c

    .line 60
    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Llb/p;

    .line 63
    .line 64
    iget-object v14, v6, Llb/p;->b:Llb/a0;

    .line 65
    .line 66
    invoke-virtual {v14}, Llb/w;->D0()Llb/k0;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    invoke-interface {v15}, Llb/k0;->m()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v15

    .line 74
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v15

    .line 78
    if-nez v15, :cond_5

    .line 79
    .line 80
    invoke-virtual {v14}, Llb/w;->D0()Llb/k0;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    invoke-interface {v15}, Llb/k0;->k()Lv9/h;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    if-nez v15, :cond_0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_0
    invoke-virtual {v14}, Llb/w;->D0()Llb/k0;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    invoke-interface {v15}, Llb/k0;->m()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-static {v15, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v10, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {v15, v11}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    if-eqz v15, :cond_4

    .line 120
    .line 121
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    check-cast v15, Lv9/q0;

    .line 126
    .line 127
    invoke-virtual {v4}, Llb/w;->B0()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-interface {v15}, Lv9/q0;->getIndex()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    invoke-static {v8, v11}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Llb/n0;

    .line 140
    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    invoke-interface {v2, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_1

    .line 148
    .line 149
    const/4 v11, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    const/4 v11, 0x0

    .line 152
    :goto_1
    if-eqz v8, :cond_2

    .line 153
    .line 154
    if-nez v11, :cond_2

    .line 155
    .line 156
    invoke-virtual {v1}, Llb/s0;->f()Llb/q0;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    invoke-virtual {v8}, Llb/n0;->b()Llb/w;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    invoke-static {v13, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v13}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    if-nez v11, :cond_3

    .line 172
    .line 173
    :cond_2
    new-instance v8, Llb/f0;

    .line 174
    .line 175
    invoke-direct {v8, v15}, Llb/f0;-><init>(Lv9/q0;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const/16 v11, 0xa

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_4
    const/4 v8, 0x2

    .line 185
    const/4 v11, 0x0

    .line 186
    invoke-static {v14, v10, v11, v8}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    :cond_5
    :goto_2
    iget-object v6, v6, Llb/p;->c:Llb/a0;

    .line 191
    .line 192
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-nez v7, :cond_b

    .line 205
    .line 206
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-interface {v7}, Llb/k0;->k()Lv9/h;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    if-nez v7, :cond_6

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_6
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-static {v7, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v8, Ljava/util/ArrayList;

    .line 229
    .line 230
    const/16 v10, 0xa

    .line 231
    .line 232
    invoke-static {v7, v10}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_a

    .line 248
    .line 249
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    check-cast v10, Lv9/q0;

    .line 254
    .line 255
    invoke-virtual {v4}, Llb/w;->B0()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-interface {v10}, Lv9/q0;->getIndex()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    invoke-static {v12, v11}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    check-cast v11, Llb/n0;

    .line 268
    .line 269
    if-eqz v2, :cond_7

    .line 270
    .line 271
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-eqz v12, :cond_7

    .line 276
    .line 277
    const/4 v12, 0x1

    .line 278
    goto :goto_4

    .line 279
    :cond_7
    const/4 v12, 0x0

    .line 280
    :goto_4
    if-eqz v11, :cond_8

    .line 281
    .line 282
    if-nez v12, :cond_8

    .line 283
    .line 284
    invoke-virtual {v1}, Llb/s0;->f()Llb/q0;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-virtual {v11}, Llb/n0;->b()Llb/w;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    invoke-static {v13, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v13}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    if-nez v12, :cond_9

    .line 300
    .line 301
    :cond_8
    new-instance v11, Llb/f0;

    .line 302
    .line 303
    invoke-direct {v11, v10}, Llb/f0;-><init>(Lv9/q0;)V

    .line 304
    .line 305
    .line 306
    :cond_9
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_a
    const/4 v10, 0x2

    .line 311
    const/4 v11, 0x0

    .line 312
    invoke-static {v6, v8, v11, v10}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    :cond_b
    :goto_5
    invoke-static {v14, v6}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    goto/16 :goto_9

    .line 321
    .line 322
    :cond_c
    instance-of v6, v5, Llb/a0;

    .line 323
    .line 324
    if-eqz v6, :cond_13

    .line 325
    .line 326
    move-object v6, v5

    .line 327
    check-cast v6, Llb/a0;

    .line 328
    .line 329
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-nez v7, :cond_12

    .line 342
    .line 343
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-interface {v7}, Llb/k0;->k()Lv9/h;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    if-nez v7, :cond_d

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_d
    invoke-virtual {v6}, Llb/w;->D0()Llb/k0;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-interface {v7}, Llb/k0;->m()Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-static {v7, v12}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    new-instance v8, Ljava/util/ArrayList;

    .line 366
    .line 367
    const/16 v10, 0xa

    .line 368
    .line 369
    invoke-static {v7, v10}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    if-eqz v10, :cond_11

    .line 385
    .line 386
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    check-cast v10, Lv9/q0;

    .line 391
    .line 392
    invoke-virtual {v4}, Llb/w;->B0()Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v11

    .line 396
    invoke-interface {v10}, Lv9/q0;->getIndex()I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    invoke-static {v12, v11}, Ls8/p;->f0(ILjava/util/List;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    check-cast v11, Llb/n0;

    .line 405
    .line 406
    if-eqz v2, :cond_e

    .line 407
    .line 408
    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v12

    .line 412
    if-eqz v12, :cond_e

    .line 413
    .line 414
    const/4 v12, 0x1

    .line 415
    goto :goto_7

    .line 416
    :cond_e
    const/4 v12, 0x0

    .line 417
    :goto_7
    if-eqz v11, :cond_f

    .line 418
    .line 419
    if-nez v12, :cond_f

    .line 420
    .line 421
    invoke-virtual {v1}, Llb/s0;->f()Llb/q0;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-virtual {v11}, Llb/n0;->b()Llb/w;

    .line 426
    .line 427
    .line 428
    move-result-object v13

    .line 429
    invoke-static {v13, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12, v13}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    if-nez v12, :cond_10

    .line 437
    .line 438
    :cond_f
    new-instance v11, Llb/f0;

    .line 439
    .line 440
    invoke-direct {v11, v10}, Llb/f0;-><init>(Lv9/q0;)V

    .line 441
    .line 442
    .line 443
    :cond_10
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_11
    const/4 v10, 0x2

    .line 448
    const/4 v11, 0x0

    .line 449
    invoke-static {v6, v8, v11, v10}, Llb/c;->q(Llb/a0;Ljava/util/List;Llb/h0;I)Llb/a0;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    goto :goto_9

    .line 454
    :cond_12
    :goto_8
    move-object v2, v6

    .line 455
    :goto_9
    invoke-static {v2, v5}, Llb/c;->h(Llb/x0;Llb/w;)Llb/x0;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    sget-object v4, Llb/y0;->e:Llb/y0;

    .line 460
    .line 461
    invoke-virtual {v1, v2, v4}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v3, v1}, Lt8/g;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_13
    new-instance v1, Lac/p;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 472
    .line 473
    .line 474
    throw v1

    .line 475
    :cond_14
    instance-of v4, v5, Lv9/q0;

    .line 476
    .line 477
    if-eqz v4, :cond_16

    .line 478
    .line 479
    iget-object v4, v2, Lja/a;->e:Ljava/util/Set;

    .line 480
    .line 481
    if-eqz v4, :cond_15

    .line 482
    .line 483
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    const/4 v6, 0x1

    .line 488
    if-ne v4, v6, :cond_15

    .line 489
    .line 490
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/t;->a1(Lja/a;)Llb/x0;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v3, v1}, Lt8/g;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_15
    check-cast v5, Lv9/q0;

    .line 499
    .line 500
    invoke-interface {v5}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    const-string v5, "getUpperBounds(...)"

    .line 505
    .line 506
    invoke-static {v4, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/media/session/t;->k1(Llb/s0;Ljava/util/List;Lja/a;)Lt8/g;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v3, v1}, Lt8/g;->addAll(Ljava/util/Collection;)Z

    .line 514
    .line 515
    .line 516
    :cond_16
    :goto_a
    iget-object v1, v3, Lt8/g;->a:Lt8/e;

    .line 517
    .line 518
    invoke-virtual {v1}, Lt8/e;->b()Lt8/e;

    .line 519
    .line 520
    .line 521
    iget v1, v1, Lt8/e;->i:I

    .line 522
    .line 523
    if-lez v1, :cond_17

    .line 524
    .line 525
    return-object v3

    .line 526
    :cond_17
    sget-object v1, Lt8/g;->b:Lt8/g;

    .line 527
    .line 528
    return-object v1
.end method

.method public l(Lob/d;)Llb/f0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->i(Lob/d;)Llb/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l0(Lob/e;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->j(Lob/e;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public m(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->x(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public m0(Lhb/w;Lva/a;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lgb/a;

    .line 4
    .line 5
    const-string v1, "proto"

    .line 6
    .line 7
    invoke-static {p2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "kind"

    .line 11
    .line 12
    invoke-static {p3, v1}, La2/f;->M(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    instance-of v1, p2, Lpa/n;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast p2, Lpa/n;

    .line 20
    .line 21
    iget-object p3, v0, Lgb/a;->b:Lva/m;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/util/List;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v1, p2, Lpa/a0;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast p2, Lpa/a0;

    .line 35
    .line 36
    iget-object p3, v0, Lgb/a;->d:Lva/m;

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/util/List;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    instance-of v1, p2, Lpa/i0;

    .line 46
    .line 47
    if-eqz v1, :cond_7

    .line 48
    .line 49
    invoke-static {p3}, Le1/d;->b(I)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    const/4 v1, 0x1

    .line 54
    if-eq p3, v1, :cond_4

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    if-eq p3, v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    if-ne p3, v1, :cond_2

    .line 61
    .line 62
    check-cast p2, Lpa/i0;

    .line 63
    .line 64
    iget-object p3, v0, Lgb/a;->g:Lva/m;

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/util/List;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string p2, "Unsupported callable kind with property proto"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_3
    check-cast p2, Lpa/i0;

    .line 82
    .line 83
    iget-object p3, v0, Lgb/a;->f:Lva/m;

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Ljava/util/List;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    check-cast p2, Lpa/i0;

    .line 93
    .line 94
    iget-object p3, v0, Lgb/a;->e:Lva/m;

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ljava/util/List;

    .line 101
    .line 102
    :goto_0
    if-nez p2, :cond_5

    .line 103
    .line 104
    sget-object p2, Ls8/w;->a:Ls8/w;

    .line 105
    .line 106
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    .line 107
    .line 108
    const/16 v0, 0xa

    .line 109
    .line 110
    invoke-static {p2, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lpa/h;

    .line 132
    .line 133
    iget-object v1, p1, Lhb/w;->a:Lra/f;

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    return-object p3

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, "Unknown message: "

    .line 149
    .line 150
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public n(Llb/n0;)Lob/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->t(Llb/n0;)Lob/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n0(Lhb/w;Lpa/i0;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lgb/a;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 18
    .line 19
    invoke-static {v1, v0}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lpa/h;

    .line 41
    .line 42
    iget-object v2, p1, Lhb/w;->a:Lra/f;

    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p2
.end method

.method public o(Lob/h;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->U(Lob/h;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o0(Lob/d;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->F(Lob/d;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public p(Lob/c;)Lob/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->k(Lob/c;)Lob/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p0(Llb/p;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->N(Llb/p;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lpa/x0;Lra/f;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lgb/a;

    .line 14
    .line 15
    iget-object v0, v0, Lgb/a;->l:Lva/m;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/List;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lpa/h;

    .line 53
    .line 54
    invoke-virtual {p0, v1, p2}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public q0(Llb/n0;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->K(Llb/n0;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public r(Lob/d;)Llb/p;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->g(Lob/d;)Llb/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r0(Lhb/u;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lhb/u;->d:Lpa/k;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lgb/a;

    .line 11
    .line 12
    iget-object v1, v1, Lgb/a;->c:Lva/m;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/List;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 23
    .line 24
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {v0, v2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lpa/h;

    .line 50
    .line 51
    iget-object v3, p1, Lhb/w;->a:Lra/f;

    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-object v1
.end method

.method public s(Lob/d;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lmb/g;->f(Lob/e;)Llb/l;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public s0(Lob/g;I)Llb/n0;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lob/f;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lob/d;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lmb/g;->p(Lob/d;I)Llb/n0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    instance-of v0, p1, Lob/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lob/a;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "get(...)"

    .line 28
    .line 29
    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Llb/n0;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "unknown type argument list type: "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method

.method public t(Lob/h;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->A(Lob/h;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public t0(Ldc/e;Lw8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lg9/t;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lec/k;

    .line 9
    .line 10
    new-instance v2, Ldc/n;

    .line 11
    .line 12
    iget-object v3, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Ldc/h0;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1, v3}, Ldc/n;-><init>(Lg9/t;Ldc/e;Ldc/h0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, p2}, Lec/f;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 24
    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/t;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Bounds{lower="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lx3/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " upper="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lx3/b;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "}"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public u(Lob/e;)Lob/g;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->d(Lob/e;)Lob/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u0(Lob/d;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->h(Lob/d;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v(Lob/c;)Llb/x0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->O(Lob/c;)Llb/x0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v0(Lob/e;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lmb/g;->f(Lob/e;)Llb/l;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public w(Lhb/w;Lpa/v;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lgb/a;

    .line 9
    .line 10
    iget-object v0, v0, Lgb/a;->h:Lva/m;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Ljava/util/List;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    sget-object p2, Ls8/w;->a:Ls8/w;

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    invoke-static {p2, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lpa/h;

    .line 48
    .line 49
    iget-object v2, p1, Lhb/w;->a:Lra/f;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/session/t;->d1(Lpa/h;Lra/f;)Lw9/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-object v0
.end method

.method public w0(Lob/d;)Z
    .locals 1

    .line 1
    const-string v0, "$receiver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p1, Lma/g;

    .line 7
    .line 8
    return p1
.end method

.method public x(Lob/e;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmb/g;->R(Lmb/b;Lob/e;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x0(Llb/n0;)Llb/x0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmb/g;->r(Lmb/b;Llb/n0;)Llb/x0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y(Llb/p;)Llb/a0;
    .locals 0

    .line 1
    invoke-static {p1}, Lmb/g;->X(Llb/p;)Llb/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y0(Lob/h;I)Lv9/q0;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lmb/g;->q(Lob/h;I)Lv9/q0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z(Lob/e;Lob/e;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lmb/g;->w(Lob/e;Lob/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public z0(Lob/e;)Lob/c;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<this>"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lmb/g;->f(Lob/e;)Llb/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Llb/l;->b:Llb/a0;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    move-object v0, p1

    .line 22
    check-cast v0, Lob/f;

    .line 23
    .line 24
    :cond_1
    invoke-static {p0, v0}, Lmb/g;->e(Lmb/b;Lob/f;)Lob/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
