.class public final synthetic La8/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;


# direct methods
.method public synthetic constructor <init>(Lp1/p;I)V
    .locals 0

    .line 1
    iput p2, p0, La8/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/o;->b:Lp1/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, La8/o;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, La8/o;->b:Lp1/p;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 11
    .line 12
    const-string v0, "CONNECT_USB_DEVICE_IGNORE"

    .line 13
    .line 14
    invoke-static {v0}, Ll8/d;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lp1/p;->clear()V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    sget-object v0, Lz7/b2;->Companion:Lz7/x1;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lz7/b2;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {v2}, Lp1/p;->clear()V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
