.class public Ld/j/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/c;->b(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ld/j/d/u0$d;

.field public final synthetic c:Ld/j/d/c;


# direct methods
.method public constructor <init>(Ld/j/d/c;Ljava/util/List;Ld/j/d/u0$d;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/c$a;->c:Ld/j/d/c;

    iput-object p2, p0, Ld/j/d/c$a;->a:Ljava/util/List;

    iput-object p3, p0, Ld/j/d/c$a;->b:Ld/j/d/u0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/j/d/c$a;->a:Ljava/util/List;

    iget-object v1, p0, Ld/j/d/c$a;->b:Ld/j/d/u0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/j/d/c$a;->a:Ljava/util/List;

    iget-object v1, p0, Ld/j/d/c$a;->b:Ld/j/d/u0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/j/d/c$a;->c:Ld/j/d/c;

    iget-object v1, p0, Ld/j/d/c$a;->b:Ld/j/d/u0$d;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 3
    iget-object v1, v1, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 4
    invoke-virtual {v1, v0}, Ld/j/d/u0$d$c;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
