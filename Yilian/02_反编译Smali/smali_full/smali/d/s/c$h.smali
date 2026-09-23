.class public Ld/s/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/c;->k(Landroid/view/ViewGroup;Ld/s/s;Ld/s/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/s/c$k;

.field public mViewBounds:Ld/s/c$k;


# direct methods
.method public constructor <init>(Ld/s/c;Ld/s/c$k;)V
    .locals 0

    iput-object p2, p0, Ld/s/c$h;->a:Ld/s/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Ld/s/c$h;->a:Ld/s/c$k;

    iput-object p1, p0, Ld/s/c$h;->mViewBounds:Ld/s/c$k;

    return-void
.end method
