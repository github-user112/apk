.class public Lb/b/c/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/j/l;


# instance fields
.field public final synthetic a:Lb/b/c/m;


# direct methods
.method public constructor <init>(Lb/b/c/m;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/n;->a:Lb/b/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/e/j/a0;)Lb/e/j/a0;
    .locals 4

    invoke-virtual {p2}, Lb/e/j/a0;->d()I

    move-result v0

    iget-object v1, p0, Lb/b/c/n;->a:Lb/b/c/m;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lb/b/c/m;->X(Lb/e/j/a0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lb/e/j/a0;->b()I

    move-result v0

    invoke-virtual {p2}, Lb/e/j/a0;->c()I

    move-result v2

    invoke-virtual {p2}, Lb/e/j/a0;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lb/e/j/a0;->f(IIII)Lb/e/j/a0;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lb/e/j/q;->j(Landroid/view/View;Lb/e/j/a0;)Lb/e/j/a0;

    move-result-object p1

    return-object p1
.end method
