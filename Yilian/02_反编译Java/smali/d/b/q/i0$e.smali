.class public Ld/b/q/i0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Ld/b/q/i0;


# direct methods
.method public constructor <init>(Ld/b/q/i0;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    iget-object v0, v0, Ld/b/q/i0;->c:Ld/b/q/d0;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/g/m/s;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    iget-object v0, v0, Ld/b/q/i0;->c:Ld/b/q/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    iget-object v1, v1, Ld/b/q/i0;->c:Ld/b/q/d0;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    iget-object v0, v0, Ld/b/q/i0;->c:Ld/b/q/d0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    iget v2, v1, Ld/b/q/i0;->o:I

    if-gt v0, v2, :cond_0

    iget-object v0, v1, Ld/b/q/i0;->B:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Ld/b/q/i0$e;->a:Ld/b/q/i0;

    invoke-virtual {v0}, Ld/b/q/i0;->d()V

    :cond_0
    return-void
.end method
