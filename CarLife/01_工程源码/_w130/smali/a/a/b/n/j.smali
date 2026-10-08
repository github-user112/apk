.class public La/a/b/n/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:La/a/b/n/h;


# direct methods
.method public constructor <init>(La/a/b/n/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/j;->c:La/a/b/n/h;

    iput-object p2, p0, La/a/b/n/j;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, La/a/b/n/j;->c:La/a/b/n/h;

    .line 1
    iget-object v0, v0, La/a/b/n/h;->e0:La/a/b/s/b;

    const-string v1, "\u76d1\u542c\u5185\u5bb9:"

    .line 2
    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/b/n/j;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    return-void
.end method
