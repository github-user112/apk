.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# instance fields
.field public final synthetic a:Ld/r/b;


# direct methods
.method public constructor <init>(Ld/r/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 0

    sget-object p1, Ld/l/e$a;->ON_START:Ld/l/e$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/b;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Ld/l/e$a;->ON_STOP:Ld/l/e$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Ld/r/b;

    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Ld/r/b;->e:Z

    :cond_1
    return-void
.end method
