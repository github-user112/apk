.class public final Ld/q/c/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/q/c/m$b;,
        Ld/q/c/m$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ld/q/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ld/q/c/m$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/q/c/m$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ld/q/c/m;->e:Ljava/lang/ThreadLocal;

    new-instance v0, Ld/q/c/m$a;

    invoke-direct {v0}, Ld/q/c/m$a;-><init>()V

    sput-object v0, Ld/q/c/m;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ld/q/c/m;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ld/q/c/m;->b:J

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    .line 1
    iput p2, p1, Ld/q/c/m$b;->a:I

    iput p3, p1, Ld/q/c/m$b;->b:I

    return-void
.end method

.method public b(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v0, :cond_2

    iget-object v5, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    .line 2
    iput v1, v6, Ld/q/c/m$b;->d:I

    iget-object v6, v6, Ld/q/c/m$b;->c:[I

    if-eqz v6, :cond_0

    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    .line 3
    :cond_0
    iget-object v4, v5, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    iget v4, v4, Ld/q/c/m$b;->d:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v2, v0, :cond_7

    iget-object v6, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    iget v8, v7, Ld/q/c/m$b;->a:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v7, Ld/q/c/m$b;->b:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v8

    const/4 v8, 0x0

    :goto_2
    iget v10, v7, Ld/q/c/m$b;->d:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_6

    iget-object v10, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_4

    new-instance v10, Ld/q/c/m$c;

    invoke-direct {v10}, Ld/q/c/m$c;-><init>()V

    iget-object v11, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v10, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/q/c/m$c;

    :goto_3
    iget-object v11, v7, Ld/q/c/m$b;->c:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v12

    if-gt v11, v9, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v10, Ld/q/c/m$c;->a:Z

    iput v9, v10, Ld/q/c/m$c;->b:I

    iput v11, v10, Ld/q/c/m$c;->c:I

    iput-object v6, v10, Ld/q/c/m$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v7, Ld/q/c/m$b;->c:[I

    aget v11, v11, v8

    iput v11, v10, Ld/q/c/m$c;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    sget-object v2, Ld/q/c/m;->f:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 4
    :goto_6
    iget-object v2, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Ld/q/c/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/q/c/m$c;

    iget-object v3, v2, Ld/q/c/m$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_8

    goto/16 :goto_9

    .line 5
    :cond_8
    iget-boolean v3, v2, Ld/q/c/m$c;->a:Z

    if-eqz v3, :cond_9

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_7

    :cond_9
    move-wide v6, p1

    :goto_7
    iget-object v3, v2, Ld/q/c/m$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v8, v2, Ld/q/c/m$c;->e:I

    invoke-virtual {p0, v3, v8, v6, v7}, Ld/q/c/m;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$x;->b:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_e

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->g()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_a

    goto :goto_8

    .line 6
    :cond_a
    iget-boolean v7, v3, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v7, :cond_b

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v7}, Ld/q/c/b;->f()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->J()V

    :cond_b
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->f0:Ld/q/c/m$b;

    .line 7
    iput v1, v7, Ld/q/c/m$b;->d:I

    iget-object v8, v7, Ld/q/c/m$b;->c:[I

    if-eqz v8, :cond_c

    invoke-static {v8, v4}, Ljava/util/Arrays;->fill([II)V

    .line 8
    :cond_c
    iget v7, v7, Ld/q/c/m$b;->d:I

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    :try_start_0
    const-string p1, "RV Nested Prefetch"

    invoke-static {p1}, Ld/g/i/b;->a(Ljava/lang/String;)V

    iget-object p1, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 9
    iput v5, p1, Landroidx/recyclerview/widget/RecyclerView$u;->d:I

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Ld/g/i/b;->b()V

    throw p1

    .line 11
    :cond_e
    :goto_8
    iput-boolean v1, v2, Ld/q/c/m$c;->a:Z

    iput v1, v2, Ld/q/c/m$c;->b:I

    iput v1, v2, Ld/q/c/m$c;->c:I

    iput-object v6, v2, Ld/q/c/m$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v1, v2, Ld/q/c/m$c;->e:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_9
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v0}, Ld/q/c/b;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Ld/q/c/b;

    invoke-virtual {v3, v2}, Ld/q/c/b;->e(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->u(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$q;

    :try_start_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->D()V

    invoke-virtual {v0, p2, v1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$q;->j(IZJ)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$x;->g()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$x;->h()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$q;->g(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$q;->a(Landroidx/recyclerview/widget/RecyclerView$x;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->E(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->E(Z)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Ld/g/i/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Ld/q/c/m;->b:J

    invoke-static {}, Ld/g/i/b;->b()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v6, p0, Ld/q/c/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Ld/q/c/m;->c:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ld/q/c/m;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-wide v0, p0, Ld/q/c/m;->b:J

    invoke-static {}, Ld/g/i/b;->b()V

    return-void

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Ld/q/c/m;->b:J

    invoke-static {}, Ld/g/i/b;->b()V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
