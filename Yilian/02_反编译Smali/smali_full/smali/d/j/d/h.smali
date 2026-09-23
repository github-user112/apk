.class public Ld/j/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/j/d/u0$d;

.field public final synthetic b:Ld/j/d/u0$d;

.field public final synthetic c:Z

.field public final synthetic d:Ld/e/a;


# direct methods
.method public constructor <init>(Ld/j/d/c;Ld/j/d/u0$d;Ld/j/d/u0$d;ZLd/e/a;)V
    .locals 0

    iput-object p2, p0, Ld/j/d/h;->a:Ld/j/d/u0$d;

    iput-object p3, p0, Ld/j/d/h;->b:Ld/j/d/u0$d;

    iput-boolean p4, p0, Ld/j/d/h;->c:Z

    iput-object p5, p0, Ld/j/d/h;->d:Ld/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ld/j/d/h;->a:Ld/j/d/u0$d;

    .line 1
    iget-object v0, v0, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v1, p0, Ld/j/d/h;->b:Ld/j/d/u0$d;

    .line 3
    iget-object v1, v1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    iget-boolean v2, p0, Ld/j/d/h;->c:Z

    iget-object v3, p0, Ld/j/d/h;->d:Ld/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ld/j/d/n0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/e/a;Z)V

    return-void
.end method
