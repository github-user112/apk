.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->j(Ld/r/b;Ld/l/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/l/e;

.field public final synthetic b:Ld/r/b;


# direct methods
.method public constructor <init>(Ld/l/e;Ld/r/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Ld/l/e;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Ld/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 0

    sget-object p1, Ld/l/e$a;->ON_START:Ld/l/e$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Ld/l/e;

    check-cast p1, Ld/l/i;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Ld/l/i;->d(Ljava/lang/String;)V

    iget-object p1, p1, Ld/l/i;->a:Ld/c/a/b/a;

    invoke-virtual {p1, p0}, Ld/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Ld/r/b;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Ld/r/b;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
