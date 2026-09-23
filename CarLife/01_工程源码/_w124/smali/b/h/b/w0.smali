.class public Lb/h/b/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/c;
.implements Lb/j/u;


# instance fields
.field public final b:Lb/j/t;

.field public c:Lb/j/h;

.field public d:Lb/m/b;


# direct methods
.method public constructor <init>(Lb/h/b/m;Lb/j/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/b/w0;->c:Lb/j/h;

    iput-object p1, p0, Lb/h/b/w0;->d:Lb/m/b;

    iput-object p2, p0, Lb/h/b/w0;->b:Lb/j/t;

    return-void
.end method


# virtual methods
.method public a(Lb/j/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/h/b/w0;->c:Lb/j/h;

    const-string v1, "handleLifecycleEvent"

    .line 1
    invoke-virtual {v0, v1}, Lb/j/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/j/d$a;->e()Lb/j/d$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/j/h;->f(Lb/j/d$b;)V

    return-void
.end method

.method public a0()Lb/j/t;
    .locals 1

    invoke-virtual {p0}, Lb/h/b/w0;->c()V

    iget-object v0, p0, Lb/h/b/w0;->b:Lb/j/t;

    return-object v0
.end method

.method public b()Lb/j/d;
    .locals 1

    invoke-virtual {p0}, Lb/h/b/w0;->c()V

    iget-object v0, p0, Lb/h/b/w0;->c:Lb/j/h;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lb/h/b/w0;->c:Lb/j/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/j/h;

    invoke-direct {v0, p0}, Lb/j/h;-><init>(Lb/j/g;)V

    iput-object v0, p0, Lb/h/b/w0;->c:Lb/j/h;

    .line 1
    new-instance v0, Lb/m/b;

    invoke-direct {v0, p0}, Lb/m/b;-><init>(Lb/m/c;)V

    .line 2
    iput-object v0, p0, Lb/h/b/w0;->d:Lb/m/b;

    :cond_0
    return-void
.end method

.method public l()Lb/m/a;
    .locals 1

    invoke-virtual {p0}, Lb/h/b/w0;->c()V

    iget-object v0, p0, Lb/h/b/w0;->d:Lb/m/b;

    .line 1
    iget-object v0, v0, Lb/m/b;->b:Lb/m/a;

    return-object v0
.end method
