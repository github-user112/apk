.class public Ld/b/q/t;
.super Ld/b/q/f0;
.source ""


# instance fields
.field public final synthetic j:Ld/b/q/u$d;

.field public final synthetic k:Ld/b/q/u;


# direct methods
.method public constructor <init>(Ld/b/q/u;Landroid/view/View;Ld/b/q/u$d;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/t;->k:Ld/b/q/u;

    iput-object p3, p0, Ld/b/q/t;->j:Ld/b/q/u$d;

    invoke-direct {p0, p2}, Ld/b/q/f0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Ld/b/p/i/p;
    .locals 1

    iget-object v0, p0, Ld/b/q/t;->j:Ld/b/q/u$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Ld/b/q/t;->k:Ld/b/q/u;

    invoke-virtual {v0}, Ld/b/q/u;->getInternalPopup()Ld/b/q/u$f;

    move-result-object v0

    invoke-interface {v0}, Ld/b/q/u$f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/q/t;->k:Ld/b/q/u;

    invoke-virtual {v0}, Ld/b/q/u;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
