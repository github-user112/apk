.class public Ld/j/d/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/j/d/n0$a;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ld/g/i/a;


# direct methods
.method public constructor <init>(Ld/j/d/n0$a;Landroidx/fragment/app/Fragment;Ld/g/i/a;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/h0;->a:Ld/j/d/n0$a;

    iput-object p2, p0, Ld/j/d/h0;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ld/j/d/h0;->c:Ld/g/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/j/d/h0;->a:Ld/j/d/n0$a;

    iget-object v1, p0, Ld/j/d/h0;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/j/d/h0;->c:Ld/g/i/a;

    check-cast v0, Ld/j/d/y$d;

    invoke-virtual {v0, v1, v2}, Ld/j/d/y$d;->a(Landroidx/fragment/app/Fragment;Ld/g/i/a;)V

    return-void
.end method
