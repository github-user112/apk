.class public final synthetic Lj8/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lf9/a;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj8/h0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/h0;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/h0;->c:Lf9/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lj8/h0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lj8/h0;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lj8/h0;->c:Lf9/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lj8/h0;->b:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lj8/h0;->c:Lf9/a;

    .line 27
    .line 28
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
