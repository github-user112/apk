.class public final La/d/a/f/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:La/d/a/e/c;

.field public final synthetic c:La/d/a/f/b;


# direct methods
.method public constructor <init>(La/d/a/e/c;La/d/a/f/b;)V
    .locals 0

    iput-object p1, p0, La/d/a/f/g;->b:La/d/a/e/c;

    iput-object p2, p0, La/d/a/f/g;->c:La/d/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, La/d/a/f/g;->b:La/d/a/e/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, La/d/a/f/g;->c:La/d/a/f/b;

    invoke-interface {p1}, La/d/a/f/b;->b()V

    return-void
.end method
