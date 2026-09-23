.class public final synthetic Ll0/u0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll0/z0;


# direct methods
.method public synthetic constructor <init>(Ll0/z0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll0/u0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/u0;->b:Ll0/z0;

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
    .locals 1

    .line 1
    iget v0, p0, Ll0/u0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll0/u0;->b:Ll0/z0;

    .line 7
    .line 8
    invoke-interface {v0}, Ll0/z0;->onCancel()V

    .line 9
    .line 10
    .line 11
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    iget-object v0, p0, Ll0/u0;->b:Ll0/z0;

    .line 15
    .line 16
    invoke-interface {v0}, Ll0/z0;->b()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
