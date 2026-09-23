.class public final Lb4/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb4/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj/f;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb4/q;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/q;->d:Ljava/lang/Object;

    iput-object p2, p0, Lb4/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb4/q;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lb4/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb4/q;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lj/f;

    .line 9
    .line 10
    iget-object v0, v0, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 11
    .line 12
    iget-object v1, p0, Lb4/q;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/view/View;

    .line 15
    .line 16
    iget-object v2, p0, Lb4/q;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lj/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lb4/q;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lb4/h;

    .line 27
    .line 28
    invoke-virtual {v0}, Lb4/h;->call()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lb4/q;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lb4/i;

    .line 37
    .line 38
    iget-object v2, p0, Lb4/q;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v3, Lb4/a;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v3, v4, v1, v0}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
