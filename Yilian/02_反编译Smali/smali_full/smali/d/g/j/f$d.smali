.class public Ld/g/j/f$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/j/f;->b(Landroid/content/Context;Ld/g/j/e;ILjava/util/concurrent/Executor;Ld/g/j/c;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/g/l/a<",
        "Ld/g/j/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/g/j/f$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/g/j/f$e;)V
    .locals 4

    sget-object v0, Ld/g/j/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld/g/j/f;->d:Ld/e/h;

    iget-object v2, p0, Ld/g/j/f$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v2, Ld/g/j/f;->d:Ld/e/h;

    iget-object v3, p0, Ld/g/j/f$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ld/e/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/g/l/a;

    invoke-interface {v2, p1}, Ld/g/l/a;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld/g/j/f$e;

    invoke-virtual {p0, p1}, Ld/g/j/f$d;->a(Ld/g/j/f$e;)V

    return-void
.end method
