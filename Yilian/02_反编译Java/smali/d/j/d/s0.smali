.class public Ld/j/d/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/d;


# instance fields
.field public a:Ld/l/i;

.field public b:Ld/r/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/j/d/s0;->a:Ld/l/i;

    iput-object v0, p0, Ld/j/d/s0;->b:Ld/r/c;

    return-void
.end method


# virtual methods
.method public a(Ld/l/e$a;)V
    .locals 2

    iget-object v0, p0, Ld/j/d/s0;->a:Ld/l/i;

    const-string v1, "handleLifecycleEvent"

    .line 1
    invoke-virtual {v0, v1}, Ld/l/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/l/e$a;->a()Ld/l/e$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/l/i;->g(Ld/l/e$b;)V

    return-void
.end method

.method public getLifecycle()Ld/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/j/d/s0;->a:Ld/l/i;

    if-nez v0, :cond_0

    new-instance v0, Ld/l/i;

    invoke-direct {v0, p0}, Ld/l/i;-><init>(Ld/l/h;)V

    iput-object v0, p0, Ld/j/d/s0;->a:Ld/l/i;

    .line 2
    new-instance v0, Ld/r/c;

    invoke-direct {v0, p0}, Ld/r/c;-><init>(Ld/r/d;)V

    .line 3
    iput-object v0, p0, Ld/j/d/s0;->b:Ld/r/c;

    .line 4
    :cond_0
    iget-object v0, p0, Ld/j/d/s0;->a:Ld/l/i;

    return-object v0
.end method

.method public getSavedStateRegistry()Ld/r/b;
    .locals 1

    iget-object v0, p0, Ld/j/d/s0;->b:Ld/r/c;

    .line 1
    iget-object v0, v0, Ld/r/c;->b:Ld/r/b;

    return-object v0
.end method
