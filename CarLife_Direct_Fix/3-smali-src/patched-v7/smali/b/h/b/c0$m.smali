.class public Lb/h/b/c0$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/b/m$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lb/h/b/a;

.field public c:I


# virtual methods
.method public a()V
    .locals 5

    iget v0, p0, Lb/h/b/c0$m;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/h/b/c0$m;->b:Lb/h/b/a;

    iget-object v2, v2, Lb/h/b/a;->p:Lb/h/b/c0;

    invoke-virtual {v2}, Lb/h/b/c0;->J()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/h/b/m;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lb/h/b/m;->y0(Lb/h/b/m$d;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lb/h/b/m;->C()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lb/h/b/m;->B0()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lb/h/b/c0$m;->b:Lb/h/b/a;

    iget-object v3, v2, Lb/h/b/a;->p:Lb/h/b/c0;

    iget-boolean v4, p0, Lb/h/b/c0$m;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Lb/h/b/c0;->g(Lb/h/b/a;ZZZ)V

    return-void
.end method
