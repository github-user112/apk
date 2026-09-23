.class public Ld/b/k/u$b;
.super Ld/g/m/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/u;


# direct methods
.method public constructor <init>(Ld/b/k/u;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/u$b;->a:Ld/b/k/u;

    invoke-direct {p0}, Ld/g/m/x;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/u$b;->a:Ld/b/k/u;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/k/u;->u:Ld/b/p/g;

    iget-object p1, p1, Ld/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
