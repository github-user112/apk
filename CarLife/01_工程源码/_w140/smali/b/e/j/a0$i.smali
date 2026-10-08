.class public Lb/e/j/a0$i;
.super Lb/e/j/a0$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/e/j/a0$h;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public h(IIII)Lb/e/j/a0;
    .locals 1

    iget-object v0, p0, Lb/e/j/a0$f;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/e/j/a0;->h(Landroid/view/WindowInsets;)Lb/e/j/a0;

    move-result-object p1

    return-object p1
.end method

.method public m(Lb/e/d/b;)V
    .locals 0

    return-void
.end method
