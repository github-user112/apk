.class public final Lc/g0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/m0;


# direct methods
.method public synthetic constructor <init>(Lc/m0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc/g0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc/g0;->b:Lc/m0;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/g0;->b:Lc/m0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc/m0;->c()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    iget-object v0, p0, Lc/g0;->b:Lc/m0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lc/m0;->b()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_1
    iget-object v0, p0, Lc/g0;->b:Lc/m0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lc/m0;->c()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
