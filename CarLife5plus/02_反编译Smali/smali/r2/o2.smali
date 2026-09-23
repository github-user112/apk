.class public final Lr2/o2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Lo/e;

.field public final synthetic c:Lb3/i0;


# direct methods
.method public constructor <init>(Lr2/a;Lo/e;Lb3/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/o2;->a:Lr2/a;

    .line 2
    .line 3
    iput-object p2, p0, Lr2/o2;->b:Lo/e;

    .line 4
    .line 5
    iput-object p3, p0, Lr2/o2;->c:Lb3/i0;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/o2;->b:Lo/e;

    .line 2
    .line 3
    iget-object v1, p0, Lr2/o2;->a:Lr2/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "listener"

    .line 9
    .line 10
    iget-object v2, p0, Lr2/o2;->c:Lb3/i0;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lc7/a;->D(Landroid/view/View;)Lj4/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lj4/a;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    return-object v0
.end method
