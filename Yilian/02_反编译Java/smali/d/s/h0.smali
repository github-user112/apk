.class public Ld/s/h0;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Ld/s/w;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/s/i0;Ld/s/w;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/s/h0;->a:Ld/s/w;

    iput-object p3, p0, Ld/s/h0;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/s/h0;->a:Ld/s/w;

    iget-object v0, p0, Ld/s/h0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/s/w;->c(Landroid/view/View;)V

    return-void
.end method
