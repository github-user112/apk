.class public Ld/j/d/c$b;
.super Ld/j/d/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Ld/j/d/p;


# direct methods
.method public constructor <init>(Ld/j/d/u0$d;Ld/g/i/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/j/d/c$c;-><init>(Ld/j/d/u0$d;Ld/g/i/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/j/d/c$b;->c:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ld/j/d/p;
    .locals 4

    iget-boolean v0, p0, Ld/j/d/c$b;->c:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Ld/j/d/c$b;->d:Ld/j/d/p;

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 2
    iget-object v1, v0, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    iget-object v0, v0, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 4
    sget-object v2, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v0}, Ld/b/k/r;->U(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Ld/j/d/p;

    move-result-object p1

    iput-object p1, p0, Ld/j/d/c$b;->d:Ld/j/d/p;

    iput-boolean v3, p0, Ld/j/d/c$b;->c:Z

    return-object p1
.end method
