.class public Lcom/huawei/hms/scankit/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/ViewfinderView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/ViewfinderView;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/G;->a:Lcom/huawei/hms/scankit/ViewfinderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/G;->a:Lcom/huawei/hms/scankit/ViewfinderView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/huawei/hms/scankit/ViewfinderView;->m:I

    iget-object p1, p0, Lcom/huawei/hms/scankit/G;->a:Lcom/huawei/hms/scankit/ViewfinderView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
