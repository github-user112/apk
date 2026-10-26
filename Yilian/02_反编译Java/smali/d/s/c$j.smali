.class public Ld/s/c$j;
.super Ld/s/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/c;->k(Landroid/view/ViewGroup;Ld/s/s;Ld/s/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ld/s/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Ld/s/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ld/s/n;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/s/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public b(Ld/s/k;)V
    .locals 1

    iget-object p1, p0, Ld/s/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ld/b/k/r;->y0(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Ld/s/k;)V
    .locals 1

    iget-object p1, p0, Ld/s/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ld/b/k/r;->y0(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Ld/s/k;)V
    .locals 2

    iget-boolean v0, p0, Ld/s/c$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/s/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld/b/k/r;->y0(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Ld/s/k;->v(Ld/s/k$d;)Ld/s/k;

    return-void
.end method
