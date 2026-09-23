.class public Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 1

    sget-object p1, Ld/l/e$a;->ON_START:Ld/l/e$a;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    sget-object p1, Ld/l/e$a;->ON_DESTROY:Ld/l/e$a;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    throw v0

    .line 1
    :cond_1
    throw v0
.end method
