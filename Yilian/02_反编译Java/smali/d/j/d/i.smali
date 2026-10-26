.class public Ld/j/d/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/j/d/p0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ld/j/d/c;Ld/j/d/p0;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p2, p0, Ld/j/d/i;->a:Ld/j/d/p0;

    iput-object p3, p0, Ld/j/d/i;->b:Landroid/view/View;

    iput-object p4, p0, Ld/j/d/i;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/j/d/i;->a:Ld/j/d/p0;

    iget-object v1, p0, Ld/j/d/i;->b:Landroid/view/View;

    iget-object v2, p0, Ld/j/d/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Ld/j/d/p0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
