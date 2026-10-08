.class public Lb/b/c/x$b;
.super Lb/e/j/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/c/x;


# direct methods
.method public constructor <init>(Lb/b/c/x;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/x$b;->a:Lb/b/c/x;

    invoke-direct {p0}, Lb/e/j/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/x$b;->a:Lb/b/c/x;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/c/x;->v:Lb/b/g/g;

    iget-object p1, p1, Lb/b/c/x;->f:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
