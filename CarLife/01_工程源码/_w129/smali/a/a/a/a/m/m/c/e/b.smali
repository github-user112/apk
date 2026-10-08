.class public final La/a/a/a/m/m/c/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:La/a/a/a/m/m/c/e/d;

.field public final b:Ljava/util/concurrent/Semaphore;

.field public volatile c:I

.field public volatile d:La/a/a/a/a/a/b;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/c/e/d;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/c/e/b;->a:La/a/a/a/m/m/c/e/d;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, La/a/a/a/m/m/c/e/b;->b:Ljava/util/concurrent/Semaphore;

    const/4 p1, 0x2

    iput p1, p0, La/a/a/a/m/m/c/e/b;->c:I

    return-void
.end method
