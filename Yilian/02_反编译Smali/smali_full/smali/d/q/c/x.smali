.class public Ld/q/c/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/q/c/x$a;,
        Ld/q/c/x$b;
    }
.end annotation


# instance fields
.field public final a:Ld/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/a<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            "Ld/q/c/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/e<",
            "Landroidx/recyclerview/widget/RecyclerView$x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/e/a;

    invoke-direct {v0}, Ld/e/a;-><init>()V

    iput-object v0, p0, Ld/q/c/x;->a:Ld/e/a;

    new-instance v0, Ld/e/e;

    invoke-direct {v0}, Ld/e/e;-><init>()V

    iput-object v0, p0, Ld/q/c/x;->b:Ld/e/e;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$x;Landroidx/recyclerview/widget/RecyclerView$h$c;)V
    .locals 2

    iget-object v0, p0, Ld/q/c/x;->a:Ld/e/a;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Ld/e/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ld/q/c/x$a;

    if-nez v0, :cond_0

    invoke-static {}, Ld/q/c/x$a;->a()Ld/q/c/x$a;

    move-result-object v0

    iget-object v1, p0, Ld/q/c/x;->a:Ld/e/a;

    invoke-virtual {v1, p1, v0}, Ld/e/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Ld/q/c/x$a;->b:Landroidx/recyclerview/widget/RecyclerView$h$c;

    iget p1, v0, Ld/q/c/x$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Ld/q/c/x$a;->a:I

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 6

    iget-object v0, p0, Ld/q/c/x;->b:Ld/e/e;

    invoke-virtual {v0}, Ld/e/e;->h()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Ld/q/c/x;->b:Ld/e/e;

    invoke-virtual {v2, v0}, Ld/e/e;->i(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Ld/q/c/x;->b:Ld/e/e;

    .line 1
    iget-object v3, v2, Ld/e/e;->c:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Ld/e/e;->e:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v0

    iput-boolean v1, v2, Ld/e/e;->a:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget-object v0, p0, Ld/q/c/x;->a:Ld/e/a;

    invoke-virtual {v0, p1}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/q/c/x$a;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ld/q/c/x$a;->b(Ld/q/c/x$a;)V

    :cond_2
    return-void
.end method
