.class public final synthetic Lcom/baidu/carlife/sdk/internal/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Lf9/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/baidu/carlife/sdk/internal/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/internal/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 19
    .line 20
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 25
    .line 26
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 37
    .line 38
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->a(Lf9/a;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/a;->b:Lf9/a;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->b(Lf9/a;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
