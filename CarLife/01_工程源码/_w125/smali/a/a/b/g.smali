.class public final synthetic La/a/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/b/i;


# direct methods
.method public synthetic constructor <init>(La/a/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/g;->b:La/a/b/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, La/a/b/g;->b:La/a/b/i;

    .line 1
    iget-object v1, v0, La/a/b/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object v1

    iget-object v2, v0, La/a/b/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v3, v1, La/a/b/n/h;->e0:La/a/b/s/b;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, La/a/b/n/i;

    invoke-direct {v2, v1}, La/a/b/n/i;-><init>(La/a/b/n/h;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    sget-object v2, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    new-instance v4, La/a/b/n/j;

    invoke-direct {v4, v1, v3}, La/a/b/n/j;-><init>(La/a/b/n/h;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, v0, La/a/b/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    return-void
.end method
