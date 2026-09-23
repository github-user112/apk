.class public final synthetic Lnc/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lnc/o0;


# direct methods
.method public synthetic constructor <init>(Lnc/o0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnc/n0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lnc/n0;->b:Lnc/o0;

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
    .locals 2

    .line 1
    iget v0, p0, Lnc/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnc/n0;->b:Lnc/o0;

    .line 7
    .line 8
    iget-object v1, v0, Lnc/o0;->j:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-interface {v1}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, [Llc/e;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lnc/m0;->c(Llc/e;[Llc/e;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lnc/n0;->b:Lnc/o0;

    .line 26
    .line 27
    iget-object v0, v0, Lnc/o0;->b:Lnc/w;

    .line 28
    .line 29
    invoke-interface {v0}, Lnc/w;->c()[Lkc/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
