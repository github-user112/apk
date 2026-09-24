.class public Lb/h/b/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/b/f;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/h/b/f;


# direct methods
.method public constructor <init>(Lb/h/b/f;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/f$a;->b:Lb/h/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/b/f$a;->b:Lb/h/b/f;

    iget-object v1, v0, Lb/h/b/f;->a:Landroid/view/ViewGroup;

    iget-object v0, v0, Lb/h/b/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lb/h/b/f$a;->b:Lb/h/b/f;

    iget-object v0, v0, Lb/h/b/f;->c:Lb/h/b/c$b;

    invoke-virtual {v0}, Lb/h/b/c$c;->a()V

    return-void
.end method
