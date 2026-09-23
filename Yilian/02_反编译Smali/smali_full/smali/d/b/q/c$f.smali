.class public Ld/b/q/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Ld/b/q/c;


# direct methods
.method public constructor <init>(Ld/b/q/c;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/c$f;->a:Ld/b/q/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/i/g;Z)V
    .locals 2

    instance-of v0, p1, Ld/b/p/i/r;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld/b/p/i/g;->k()Ld/b/p/i/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/p/i/g;->c(Z)V

    :cond_0
    iget-object v0, p0, Ld/b/q/c$f;->a:Ld/b/q/c;

    .line 1
    iget-object v0, v0, Ld/b/p/i/b;->e:Ld/b/p/i/m$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Ld/b/p/i/m$a;->a(Ld/b/p/i/g;Z)V

    :cond_1
    return-void
.end method

.method public b(Ld/b/p/i/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ld/b/q/c$f;->a:Ld/b/q/c;

    move-object v2, p1

    check-cast v2, Ld/b/p/i/r;

    .line 1
    iget-object v2, v2, Ld/b/p/i/r;->B:Ld/b/p/i/i;

    .line 2
    iget v2, v2, Ld/b/p/i/i;->a:I

    .line 3
    iput v2, v1, Ld/b/q/c;->y:I

    .line 4
    iget-object v1, v1, Ld/b/p/i/b;->e:Ld/b/p/i/m$a;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p1}, Ld/b/p/i/m$a;->b(Ld/b/p/i/g;)Z

    move-result v0

    :cond_1
    return v0
.end method
