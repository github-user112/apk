.class public final synthetic Ly7/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Lf9/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly7/w;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/w;->b:Lf9/a;

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
    iget v0, p0, Ly7/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

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
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 21
    .line 22
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 27
    .line 28
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 33
    .line 34
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    iget-object v0, p0, Ly7/w;->b:Lf9/a;

    .line 39
    .line 40
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
