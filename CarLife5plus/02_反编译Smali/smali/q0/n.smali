.class public final Lq0/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final a:Lq0/d;


# direct methods
.method public constructor <init>(Lq0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/n;->a:Lq0/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lq0/n;->a:Lq0/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lq0/n;->a:Lq0/d;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lq0/d;->a(Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq0/n;->a:Lq0/d;

    .line 2
    .line 3
    iget-object p1, p1, Lq0/d;->a:Lq0/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lq0/e;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lq0/n;->a:Lq0/d;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lq0/d;->a(Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
