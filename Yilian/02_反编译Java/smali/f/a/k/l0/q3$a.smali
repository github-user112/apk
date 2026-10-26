.class public Lf/a/k/l0/q3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/q3;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/l0/q3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/q3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/q3$a;->a:Lf/a/k/l0/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/q3$a;->a:Lf/a/k/l0/q3;

    iget-object v0, v0, Lf/a/k/l0/q3;->Y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/q3$a;->a:Lf/a/k/l0/q3;

    iget-object v0, v0, Lf/a/k/l0/q3;->Z:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
