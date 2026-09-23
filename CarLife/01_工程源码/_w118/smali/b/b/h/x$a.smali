.class public Lb/b/h/x$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/h/x;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/h/x;


# direct methods
.method public constructor <init>(Lb/b/h/x;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/x$a;->b:Lb/b/h/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lb/b/h/x$a;->b:Lb/b/h/x;

    invoke-virtual {v0}, Lb/b/h/x;->getInternalPopup()Lb/b/h/x$f;

    move-result-object v0

    invoke-interface {v0}, Lb/b/h/x$f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/h/x$a;->b:Lb/b/h/x;

    invoke-virtual {v0}, Lb/b/h/x;->b()V

    :cond_0
    iget-object v0, p0, Lb/b/h/x$a;->b:Lb/b/h/x;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
