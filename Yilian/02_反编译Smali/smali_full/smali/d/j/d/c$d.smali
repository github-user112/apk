.class public Ld/j/d/c$d;
.super Ld/j/d/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/j/d/u0$d;Ld/g/i/a;ZZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ld/j/d/c$c;-><init>(Ld/j/d/u0$d;Ld/g/i/a;)V

    .line 1
    iget-object p2, p1, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 2
    sget-object v0, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 3
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Ld/j/d/c$d;->c:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 7
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p2

    goto :goto_2

    .line 9
    :cond_1
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 14
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Ld/j/d/c$d;->c:Ljava/lang/Object;

    const/4 p2, 0x1

    :goto_2
    iput-boolean p2, p0, Ld/j/d/c$d;->d:Z

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 15
    iget-object p1, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 17
    :cond_4
    iget-object p1, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Ld/j/d/c$d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ld/j/d/p0;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Ld/j/d/n0;->b:Ld/j/d/p0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ld/j/d/p0;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ld/j/d/n0;->b:Ld/j/d/p0;

    return-object p1

    :cond_1
    sget-object v0, Ld/j/d/n0;->c:Ld/j/d/p0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ld/j/d/p0;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ld/j/d/n0;->c:Ld/j/d/p0;

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object p1, p0, Ld/j/d/c$c;->a:Ld/j/d/u0$d;

    .line 2
    iget-object p1, p1, Ld/j/d/u0$d;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
