.class public Ld/j/d/u0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/u0;->a(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;Ld/j/d/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/u0$c;

.field public final synthetic b:Ld/j/d/u0;


# direct methods
.method public constructor <init>(Ld/j/d/u0;Ld/j/d/u0$c;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/u0$a;->b:Ld/j/d/u0;

    iput-object p2, p0, Ld/j/d/u0$a;->a:Ld/j/d/u0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/j/d/u0$a;->b:Ld/j/d/u0;

    iget-object v0, v0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/j/d/u0$a;->a:Ld/j/d/u0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/j/d/u0$a;->a:Ld/j/d/u0$c;

    .line 1
    iget-object v1, v0, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 2
    iget-object v0, v0, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Ld/j/d/u0$d$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
