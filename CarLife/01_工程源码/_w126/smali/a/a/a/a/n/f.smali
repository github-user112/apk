.class public final La/a/a/a/n/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/k/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/k/a/a<",
            "Lc/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;JLc/k/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "J",
            "Lc/k/a/a<",
            "Lc/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "looper"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, La/a/a/a/n/f;->a:Lc/k/a/a;

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    iput-wide p2, p0, La/a/a/a/n/f;->b:J

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, 0x0

    invoke-direct {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, La/a/a/a/n/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Landroid/os/Handler;

    new-instance p3, La/a/a/a/n/a;

    invoke-direct {p3, p0}, La/a/a/a/n/a;-><init>(La/a/a/a/n/f;)V

    invoke-direct {p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, La/a/a/a/n/f;->f:Landroid/os/Handler;

    return-void
.end method
