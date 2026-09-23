.class public Ld/j/d/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/f;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/f;


# direct methods
.method public constructor <init>(Ld/j/d/f;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/f$a;->a:Ld/j/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/j/d/f$a;->a:Ld/j/d/f;

    iget-object v1, v0, Ld/j/d/f;->a:Landroid/view/ViewGroup;

    iget-object v0, v0, Ld/j/d/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Ld/j/d/f$a;->a:Ld/j/d/f;

    iget-object v0, v0, Ld/j/d/f;->c:Ld/j/d/c$b;

    invoke-virtual {v0}, Ld/j/d/c$c;->a()V

    return-void
.end method
