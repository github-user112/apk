.class public Ld/s/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/c;->k(Landroid/view/ViewGroup;Ld/s/s;Ld/s/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Ld/s/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p2, p0, Ld/s/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld/s/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Ld/s/c$a;->c:Landroid/view/View;

    iput p5, p0, Ld/s/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Ld/s/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/s/c0;->a(Landroid/view/View;)Ld/s/b0;

    move-result-object p1

    iget-object v0, p0, Ld/s/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Ld/s/b0;->d(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ld/s/c$a;->c:Landroid/view/View;

    iget v0, p0, Ld/s/c$a;->d:F

    .line 1
    sget-object v1, Ld/s/c0;->a:Ld/s/g0;

    invoke-virtual {v1, p1, v0}, Ld/s/g0;->e(Landroid/view/View;F)V

    return-void
.end method
