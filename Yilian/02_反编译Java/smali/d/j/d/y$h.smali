.class public Ld/j/d/y$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/j/d/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/y;->b(Ld/j/d/v;Ld/j/d/r;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Ld/j/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p2, p0, Ld/j/d/y$h;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/j/d/y;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p1, p0, Ld/j/d/y$h;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
