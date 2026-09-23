.class public Ld/j/d/y$e;
.super Ld/j/d/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld/j/d/y;


# direct methods
.method public constructor <init>(Ld/j/d/y;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/y$e;->b:Ld/j/d/y;

    invoke-direct {p0}, Ld/j/d/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Ld/j/d/y$e;->b:Ld/j/d/y;

    .line 1
    iget-object p1, p1, Ld/j/d/y;->q:Ld/j/d/v;

    .line 2
    iget-object v0, p1, Ld/j/d/v;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    throw v1
.end method
