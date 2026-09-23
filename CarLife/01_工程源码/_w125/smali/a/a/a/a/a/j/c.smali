.class public abstract La/a/a/a/a/j/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/j/c$a;
    }
.end annotation


# instance fields
.field public final a:La/a/a/a/c;

.field public final b:La/a/a/a/a/j/c$a;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/j/c;->a:La/a/a/a/c;

    iput-object p2, p0, La/a/a/a/a/j/c;->b:La/a/a/a/a/j/c$a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/j/c;->b:La/a/a/a/a/j/c$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, La/a/a/a/a/j/c$a;->b(La/a/a/a/a/j/c;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/j/c;->b:La/a/a/a/a/j/c$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, La/a/a/a/a/j/c$a;->e(La/a/a/a/a/j/c;)V

    :goto_0
    return-void
.end method

.method public abstract d()La/a/a/a/a/a/b;
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g(La/a/a/a/a/a/b;)V
.end method
