.class public final Lr3/g;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lr3/v;

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Lr3/z;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ln3/m;


# direct methods
.method public constructor <init>(Lr3/v;Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/g;->a:Lr3/v;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/g;->b:Lf9/a;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/g;->c:Lr3/z;

    .line 6
    .line 7
    iput-object p4, p0, Lr3/g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lr3/g;->e:Ln3/m;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lf1/i0;

    .line 2
    .line 3
    iget-object p1, p0, Lr3/g;->a:Lr3/v;

    .line 4
    .line 5
    iget-object v0, p1, Lr3/v;->n:Landroid/view/WindowManager;

    .line 6
    .line 7
    iget-object v1, p1, Lr3/v;->o:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lr3/g;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lr3/g;->e:Ln3/m;

    .line 15
    .line 16
    iget-object v2, p0, Lr3/g;->b:Lf9/a;

    .line 17
    .line 18
    iget-object v3, p0, Lr3/g;->c:Lr3/z;

    .line 19
    .line 20
    invoke-virtual {p1, v2, v3, v0, v1}, Lr3/v;->j(Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lc8/p;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
