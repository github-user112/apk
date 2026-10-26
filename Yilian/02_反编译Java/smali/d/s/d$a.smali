.class public Ld/s/d$a;
.super Ld/s/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/d;->K(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/s/d;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/s/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ld/s/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/s/k;)V
    .locals 3

    iget-object v0, p0, Ld/s/d$a;->a:Landroid/view/View;

    .line 1
    sget-object v1, Ld/s/c0;->a:Ld/s/g0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Ld/s/g0;->e(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Ld/s/d$a;->a:Landroid/view/View;

    .line 3
    sget-object v1, Ld/s/c0;->a:Ld/s/g0;

    invoke-virtual {v1, v0}, Ld/s/g0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Ld/s/k;->v(Ld/s/k$d;)Ld/s/k;

    return-void
.end method
