.class public Ld/g/m/v$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/m/v;->e(Landroid/view/View;Ld/g/m/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/g/m/w;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/g/m/v;Ld/g/m/w;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/g/m/v$a;->a:Ld/g/m/w;

    iput-object p3, p0, Ld/g/m/v$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/g/m/v$a;->a:Ld/g/m/w;

    iget-object v0, p0, Ld/g/m/v$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/g/m/w;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/g/m/v$a;->a:Ld/g/m/w;

    iget-object v0, p0, Ld/g/m/v$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/g/m/w;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/g/m/v$a;->a:Ld/g/m/w;

    iget-object v0, p0, Ld/g/m/v$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/g/m/w;->c(Landroid/view/View;)V

    return-void
.end method
