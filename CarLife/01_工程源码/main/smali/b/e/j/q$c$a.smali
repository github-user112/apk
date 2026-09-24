.class public Lb/e/j/q$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/j/q$c;->d(Landroid/view/View;Lb/e/j/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lb/e/j/a0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/e/j/l;


# direct methods
.method public constructor <init>(Landroid/view/View;Lb/e/j/l;)V
    .locals 0

    iput-object p1, p0, Lb/e/j/q$c$a;->b:Landroid/view/View;

    iput-object p2, p0, Lb/e/j/q$c$a;->c:Lb/e/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/e/j/q$c$a;->a:Lb/e/j/a0;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-static {p2, p1}, Lb/e/j/a0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/e/j/a0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lb/e/j/q$c$a;->b:Landroid/view/View;

    invoke-static {p2, v3}, Lb/e/j/q$c;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Lb/e/j/q$c$a;->a:Lb/e/j/a0;

    invoke-virtual {v0, p2}, Lb/e/j/a0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/e/j/q$c$a;->c:Lb/e/j/l;

    invoke-interface {p2, p1, v0}, Lb/e/j/l;->a(Landroid/view/View;Lb/e/j/a0;)Lb/e/j/a0;

    move-result-object p1

    invoke-virtual {p1}, Lb/e/j/a0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Lb/e/j/q$c$a;->a:Lb/e/j/a0;

    iget-object p2, p0, Lb/e/j/q$c$a;->c:Lb/e/j/l;

    invoke-interface {p2, p1, v0}, Lb/e/j/l;->a(Landroid/view/View;Lb/e/j/a0;)Lb/e/j/a0;

    move-result-object p2

    if-lt v1, v2, :cond_1

    invoke-virtual {p2}, Lb/e/j/a0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 1
    :cond_1
    sget-object v0, Lb/e/j/q;->a:Ljava/util/WeakHashMap;

    const/16 v0, 0x14

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lb/e/j/a0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
