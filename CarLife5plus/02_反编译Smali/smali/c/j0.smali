.class public final Lc/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/r;
.implements Lc/c;


# instance fields
.field public final a:Landroidx/lifecycle/v;

.field public final b:Lc/n0;

.field public c:Lc/k0;

.field public final synthetic d:Lc/m0;


# direct methods
.method public constructor <init>(Lc/m0;Landroidx/lifecycle/v;Lc/n0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onBackPressedCallback"

    .line 5
    .line 6
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lc/j0;->d:Lc/m0;

    .line 10
    .line 11
    iput-object p2, p0, Lc/j0;->a:Landroidx/lifecycle/v;

    .line 12
    .line 13
    iput-object p3, p0, Lc/j0;->b:Lc/n0;

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 9

    .line 1
    sget-object p1, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    const-string p1, "onBackPressedCallback"

    .line 6
    .line 7
    iget-object p2, p0, Lc/j0;->b:Lc/n0;

    .line 8
    .line 9
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lc/j0;->d:Lc/m0;

    .line 13
    .line 14
    iget-object p1, v2, Lc/m0;->b:Ls8/k;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ls8/k;->addLast(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lc/k0;

    .line 20
    .line 21
    invoke-direct {p1, v2, p2}, Lc/k0;-><init>(Lc/m0;Lc/n0;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p2, Lc/n0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lc/m0;->e()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lc/l0;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v1, 0x0

    .line 37
    const-class v3, Lc/m0;

    .line 38
    .line 39
    const-string v4, "updateEnabledCallbacks"

    .line 40
    .line 41
    const-string v5, "updateEnabledCallbacks()V"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-direct/range {v0 .. v8}, Lc/l0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p2, Lc/n0;->c:Lg9/j;

    .line 48
    .line 49
    iput-object p1, p0, Lc/j0;->c:Lc/k0;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    sget-object p1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 53
    .line 54
    if-ne p2, p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lc/j0;->c:Lc/k0;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lc/k0;->cancel()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    sget-object p1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 65
    .line 66
    if-ne p2, p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lc/j0;->cancel()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/j0;->a:Landroidx/lifecycle/v;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/j0;->b:Lc/n0;

    .line 7
    .line 8
    iget-object v0, v0, Lc/n0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lc/j0;->c:Lc/k0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lc/k0;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lc/j0;->c:Lc/k0;

    .line 22
    .line 23
    return-void
.end method
