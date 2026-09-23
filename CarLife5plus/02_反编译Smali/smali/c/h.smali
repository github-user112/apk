.class public final synthetic Lc/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc/h;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lc/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget p1, p0, Lc/h;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lc/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/lifecycle/v;

    .line 9
    .line 10
    iget-object p2, p0, Lc/h;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Lf1/b1;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 15
    .line 16
    invoke-interface {p2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p1, p0, Lc/h;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lc/m0;

    .line 23
    .line 24
    iget-object v0, p0, Lc/h;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lp4/n;

    .line 27
    .line 28
    sget-object v1, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 29
    .line 30
    if-ne p2, v1, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, La4/a;->a(Lp4/n;)Landroid/window/OnBackInvokedDispatcher;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p1, Lc/m0;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 37
    .line 38
    iget-boolean p2, p1, Lc/m0;->g:Z

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lc/m0;->d(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
