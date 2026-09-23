.class public final La/a/a/a/m/m/d/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/d/d;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/d;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/d$c;->b:La/a/a/a/m/m/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/m/d/d$c;->b:La/a/a/a/m/m/d/d;

    .line 1
    iget-object v0, v0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    .line 2
    invoke-interface {v0}, La/a/a/a/c;->s0()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, La/a/a/a/m/m/d/d$c;->b:La/a/a/a/m/m/d/d;

    .line 3
    iget-boolean v1, v0, La/a/a/a/m/m/d/d;->h:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    .line 5
    invoke-interface {v0}, La/a/a/a/c;->Z()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/m/m/d/d$c;->b:La/a/a/a/m/m/d/d;

    new-instance v2, La/a/a/a/m/m/d/a;

    invoke-direct {v2, v1}, La/a/a/a/m/m/d/a;-><init>(La/a/a/a/m/m/d/d;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
