.class public Ld/s/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Ld/e/a;

.field public final synthetic b:Ld/s/k;


# direct methods
.method public constructor <init>(Ld/s/k;Ld/e/a;)V
    .locals 0

    iput-object p1, p0, Ld/s/l;->b:Ld/s/k;

    iput-object p2, p0, Ld/s/l;->a:Ld/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Ld/s/l;->a:Ld/e/a;

    invoke-virtual {v0, p1}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/s/l;->b:Ld/s/k;

    iget-object v0, v0, Ld/s/k;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Ld/s/l;->b:Ld/s/k;

    iget-object v0, v0, Ld/s/k;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
