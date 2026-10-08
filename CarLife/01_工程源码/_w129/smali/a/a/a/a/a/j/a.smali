.class public final La/a/a/a/a/j/a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/a/j/b;


# direct methods
.method public constructor <init>(La/a/a/a/a/j/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/j/a;->b:La/a/a/a/a/j/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/a/a/j/a;->b:La/a/a/a/a/j/b;

    .line 2
    iget-object v0, v0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    .line 3
    invoke-interface {v0}, La/a/a/a/c;->M()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/a/j/a;->b:La/a/a/a/a/j/b;

    .line 4
    iget-object v0, v0, La/a/a/a/a/j/b;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/j/a;->b:La/a/a/a/a/j/b;

    .line 6
    iget-object v0, v0, La/a/a/a/a/j/b;->b:La/a/a/a/c;

    .line 7
    invoke-interface {v0}, La/a/a/a/c;->d()V

    goto :goto_0

    :cond_0
    const-string v0, "sendHandler"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
