.class public Ld/g/g/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g/g/d$a;
    }
.end annotation


# static fields
.field public static final a:Ld/g/g/j;

.field public static final b:Ld/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/f<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/g/g/i;

    invoke-direct {v0}, Ld/g/g/i;-><init>()V

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/g/g/h;

    invoke-direct {v0}, Ld/g/g/h;-><init>()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, Ld/g/g/g;

    invoke-direct {v0}, Ld/g/g/g;-><init>()V

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 1
    sget-object v0, Ld/g/g/f;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    const-string v0, "TypefaceCompatApi24Impl"

    const-string v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Ld/g/g/f;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Ld/g/g/f;

    invoke-direct {v0}, Ld/g/g/f;-><init>()V

    goto :goto_1

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    new-instance v0, Ld/g/g/e;

    invoke-direct {v0}, Ld/g/g/e;-><init>()V

    goto :goto_1

    :cond_6
    new-instance v0, Ld/g/g/j;

    invoke-direct {v0}, Ld/g/g/j;-><init>()V

    .line 3
    :goto_1
    sput-object v0, Ld/g/g/d;->a:Ld/g/g/j;

    .line 4
    new-instance v0, Ld/e/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld/e/f;-><init>(I)V

    sput-object v0, Ld/g/g/d;->b:Ld/e/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 7

    if-eqz p0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 1
    sget-object v0, Ld/g/g/d;->a:Ld/g/g/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Ld/g/g/j;->g(Landroid/graphics/Typeface;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ld/g/g/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g/f/b/d;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Ld/g/g/d;->a:Ld/g/g/j;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2, p2}, Ld/g/g/j;->a(Landroid/content/Context;Ld/g/f/b/d;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    return-object v1

    .line 4
    :cond_2
    throw v1

    .line 5
    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Ld/g/f/b/c;Landroid/content/res/Resources;IILd/g/f/b/h$c;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 4

    instance-of v0, p1, Ld/g/f/b/f;

    if-eqz v0, :cond_8

    check-cast p1, Ld/g/f/b/f;

    .line 1
    iget-object v0, p1, Ld/g/f/b/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p5, :cond_2

    .line 3
    invoke-virtual {p5, v0, p6}, Ld/g/f/b/h$c;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p7, :cond_4

    .line 4
    iget v0, p1, Ld/g/f/b/f;->c:I

    if-nez v0, :cond_5

    goto :goto_2

    :cond_4
    if-nez p5, :cond_5

    :goto_2
    const/4 v2, 0x1

    :cond_5
    if-eqz p7, :cond_6

    .line 5
    iget p7, p1, Ld/g/f/b/f;->b:I

    goto :goto_3

    :cond_6
    const/4 p7, -0x1

    .line 6
    :goto_3
    invoke-static {p6}, Ld/g/f/b/h$c;->c(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p6

    new-instance v0, Ld/g/g/d$a;

    invoke-direct {v0, p5}, Ld/g/g/d$a;-><init>(Ld/g/f/b/h$c;)V

    .line 7
    iget-object p1, p1, Ld/g/f/b/f;->a:Ld/g/j/e;

    .line 8
    new-instance p5, Ld/g/j/c;

    invoke-direct {p5, v0, p6}, Ld/g/j/c;-><init>(Ld/g/j/i;Landroid/os/Handler;)V

    if-eqz v2, :cond_7

    invoke-static {p0, p1, p5, p4, p7}, Ld/g/j/f;->c(Landroid/content/Context;Ld/g/j/e;Ld/g/j/c;II)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :cond_7
    invoke-static {p0, p1, p4, v1, p5}, Ld/g/j/f;->b(Landroid/content/Context;Ld/g/j/e;ILjava/util/concurrent/Executor;Ld/g/j/c;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    .line 9
    :cond_8
    sget-object p7, Ld/g/g/d;->a:Ld/g/g/j;

    check-cast p1, Ld/g/f/b/d;

    invoke-virtual {p7, p0, p1, p2, p4}, Ld/g/g/j;->a(Landroid/content/Context;Ld/g/f/b/d;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p5, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {p5, p0, p6}, Ld/g/f/b/h$c;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_4

    :cond_9
    const/4 p1, -0x3

    invoke-virtual {p5, p1, p6}, Ld/g/f/b/h$c;->a(ILandroid/os/Handler;)V

    :cond_a
    :goto_4
    if-eqz p0, :cond_b

    sget-object p1, Ld/g/g/d;->b:Ld/e/f;

    invoke-static {p2, p3, p4}, Ld/g/g/d;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ld/e/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, Ld/g/g/d;->a:Ld/g/g/j;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ld/g/g/j;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, Ld/g/g/d;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ld/g/g/d;->b:Ld/e/f;

    invoke-virtual {p2, p1, p0}, Ld/e/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static d(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
