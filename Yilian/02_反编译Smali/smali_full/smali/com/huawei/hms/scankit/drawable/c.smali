.class public Lcom/huawei/hms/scankit/drawable/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/drawable/c;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/c;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->c(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;Z)Z

    return-void
.end method
