.class public Ld/b/k/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/m/l;


# instance fields
.field public final synthetic a:Ld/b/k/k;


# direct methods
.method public constructor <init>(Ld/b/k/k;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/l;->a:Ld/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/g/m/z;)Ld/g/m/z;
    .locals 6

    invoke-virtual {p2}, Ld/g/m/z;->d()I

    move-result v0

    iget-object v1, p0, Ld/b/k/l;->a:Ld/b/k/k;

    invoke-virtual {v1, v0}, Ld/b/k/k;->M(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Ld/g/m/z;->b()I

    move-result v0

    invoke-virtual {p2}, Ld/g/m/z;->c()I

    move-result v2

    invoke-virtual {p2}, Ld/g/m/z;->a()I

    move-result v3

    .line 1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    new-instance v4, Ld/g/m/z$e;

    invoke-direct {v4, p2}, Ld/g/m/z$e;-><init>(Ld/g/m/z;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    new-instance v4, Ld/g/m/z$d;

    invoke-direct {v4, p2}, Ld/g/m/z$d;-><init>(Ld/g/m/z;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    new-instance v4, Ld/g/m/z$c;

    invoke-direct {v4, p2}, Ld/g/m/z$c;-><init>(Ld/g/m/z;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ld/g/m/z$f;

    invoke-direct {v4, p2}, Ld/g/m/z$f;-><init>(Ld/g/m/z;)V

    .line 2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ld/g/g/b;->a(IIII)Ld/g/g/b;

    move-result-object p2

    .line 3
    invoke-virtual {v4, p2}, Ld/g/m/z$f;->c(Ld/g/g/b;)V

    .line 4
    invoke-virtual {v4}, Ld/g/m/z$f;->a()Ld/g/m/z;

    move-result-object p2

    .line 5
    :cond_3
    invoke-static {p1, p2}, Ld/g/m/s;->G(Landroid/view/View;Ld/g/m/z;)Ld/g/m/z;

    move-result-object p1

    return-object p1
.end method
