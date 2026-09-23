.class public final synthetic Lw0/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/v2;


# direct methods
.method public synthetic constructor <init>(Lf1/v2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/s0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/s0;->b:Lf1/v2;

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
    iget v0, p0, Lw0/s0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw0/s0;->b:Lf1/v2;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lw0/t0;->a:Lv/m;

    .line 9
    .line 10
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx1/b;

    .line 15
    .line 16
    iget-wide v0, v0, Lx1/b;->a:J

    .line 17
    .line 18
    new-instance v2, Lx1/b;

    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lx1/b;-><init>(J)V

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :pswitch_0
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lx1/b;

    .line 29
    .line 30
    iget-wide v0, v0, Lx1/b;->a:J

    .line 31
    .line 32
    new-instance v2, Lx1/b;

    .line 33
    .line 34
    invoke-direct {v2, v0, v1}, Lx1/b;-><init>(J)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
