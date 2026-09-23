.class public final Lc/i0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:Lc/f0;

.field public final synthetic b:Lc/f0;

.field public final synthetic c:Lc/g0;

.field public final synthetic d:Lc/g0;


# direct methods
.method public constructor <init>(Lc/f0;Lc/f0;Lc/g0;Lc/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc/i0;->a:Lc/f0;

    .line 5
    .line 6
    iput-object p2, p0, Lc/i0;->b:Lc/f0;

    .line 7
    .line 8
    iput-object p3, p0, Lc/i0;->c:Lc/g0;

    .line 9
    .line 10
    iput-object p4, p0, Lc/i0;->d:Lc/g0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/i0;->d:Lc/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/g0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/i0;->c:Lc/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/g0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/i0;->b:Lc/f0;

    .line 7
    .line 8
    new-instance v1, Lc/b;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lc/b;-><init>(Landroid/window/BackEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc/f0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/i0;->a:Lc/f0;

    .line 7
    .line 8
    new-instance v1, Lc/b;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lc/b;-><init>(Landroid/window/BackEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lc/f0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
