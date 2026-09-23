.class public Ld/j/d/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/i/a$a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ld/j/d/c$b;


# direct methods
.method public constructor <init>(Ld/j/d/c;Landroid/view/View;Landroid/view/ViewGroup;Ld/j/d/c$b;)V
    .locals 0

    iput-object p2, p0, Ld/j/d/g;->a:Landroid/view/View;

    iput-object p3, p0, Ld/j/d/g;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Ld/j/d/g;->c:Ld/j/d/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Ld/j/d/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Ld/j/d/g;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Ld/j/d/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Ld/j/d/g;->c:Ld/j/d/c$b;

    invoke-virtual {v0}, Ld/j/d/c$c;->a()V

    return-void
.end method
