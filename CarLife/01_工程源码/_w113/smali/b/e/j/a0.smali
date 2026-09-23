.class public Lb/e/j/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/e/j/a0$a;,
        Lb/e/j/a0$d;,
        Lb/e/j/a0$c;,
        Lb/e/j/a0$b;,
        Lb/e/j/a0$e;,
        Lb/e/j/a0$j;,
        Lb/e/j/a0$i;,
        Lb/e/j/a0$h;,
        Lb/e/j/a0$g;,
        Lb/e/j/a0$f;,
        Lb/e/j/a0$k;
    }
.end annotation


# static fields
.field public static final a:Lb/e/j/a0;


# instance fields
.field public final b:Lb/e/j/a0$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lb/e/j/a0$j;->n:Lb/e/j/a0;

    goto :goto_0

    :cond_0
    sget-object v0, Lb/e/j/a0$k;->a:Lb/e/j/a0;

    :goto_0
    sput-object v0, Lb/e/j/a0;->a:Lb/e/j/a0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/e/j/a0$j;

    invoke-direct {v0, p0, p1}, Lb/e/j/a0$j;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/e/j/a0$i;

    invoke-direct {v0, p0, p1}, Lb/e/j/a0$i;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/e/j/a0$h;

    invoke-direct {v0, p0, p1}, Lb/e/j/a0$h;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Lb/e/j/a0$g;

    invoke-direct {v0, p0, p1}, Lb/e/j/a0$g;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v0, Lb/e/j/a0$f;

    invoke-direct {v0, p0, p1}, Lb/e/j/a0$f;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    goto :goto_1

    :cond_4
    new-instance p1, Lb/e/j/a0$k;

    invoke-direct {p1, p0}, Lb/e/j/a0$k;-><init>(Lb/e/j/a0;)V

    iput-object p1, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lb/e/j/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/e/j/a0$k;

    invoke-direct {p1, p0}, Lb/e/j/a0$k;-><init>(Lb/e/j/a0;)V

    iput-object p1, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    return-void
.end method

.method public static e(Lb/e/d/b;IIII)Lb/e/d/b;
    .locals 5

    iget v0, p0, Lb/e/d/b;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lb/e/d/b;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lb/e/d/b;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lb/e/d/b;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/WindowInsets;)Lb/e/j/a0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/e/j/a0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/e/j/a0;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/e/j/a0;
    .locals 2

    new-instance v0, Lb/e/j/a0;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {v0, p0}, Lb/e/j/a0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lb/e/j/q;->f(Landroid/view/View;)Lb/e/j/a0;

    move-result-object p0

    .line 3
    iget-object v1, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v1, p0}, Lb/e/j/a0$k;->l(Lb/e/j/a0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 5
    iget-object p1, v0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {p1, p0}, Lb/e/j/a0$k;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v0}, Lb/e/j/a0$k;->g()Lb/e/d/b;

    move-result-object v0

    iget v0, v0, Lb/e/d/b;->e:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v0}, Lb/e/j/a0$k;->g()Lb/e/d/b;

    move-result-object v0

    iget v0, v0, Lb/e/d/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v0}, Lb/e/j/a0$k;->g()Lb/e/d/b;

    move-result-object v0

    iget v0, v0, Lb/e/d/b;->d:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-virtual {v0}, Lb/e/j/a0$k;->g()Lb/e/d/b;

    move-result-object v0

    iget v0, v0, Lb/e/d/b;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/e/j/a0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb/e/j/a0;

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    iget-object p1, p1, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    invoke-static {v0, p1}, Lb/e/b/g;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(IIII)Lb/e/j/a0;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/e/j/a0$d;

    invoke-direct {v0, p0}, Lb/e/j/a0$d;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/e/j/a0$c;

    invoke-direct {v0, p0}, Lb/e/j/a0$c;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/e/j/a0$b;

    invoke-direct {v0, p0}, Lb/e/j/a0$b;-><init>(Lb/e/j/a0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lb/e/j/a0$e;

    invoke-direct {v0, p0}, Lb/e/j/a0$e;-><init>(Lb/e/j/a0;)V

    .line 2
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lb/e/d/b;->a(IIII)Lb/e/d/b;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lb/e/j/a0$e;->d(Lb/e/d/b;)V

    .line 4
    invoke-virtual {v0}, Lb/e/j/a0$e;->b()Lb/e/j/a0;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    instance-of v1, v0, Lb/e/j/a0$f;

    if-eqz v1, :cond_0

    check-cast v0, Lb/e/j/a0$f;

    iget-object v0, v0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/e/j/a0;->b:Lb/e/j/a0$k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/e/j/a0$k;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
