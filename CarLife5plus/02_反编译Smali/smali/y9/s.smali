.class public final Ly9/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly9/s;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ly9/s;->b:Ljava/lang/Object;

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
    iget v0, p0, Ly9/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly9/s;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Llb/n0;

    .line 9
    .line 10
    invoke-virtual {v0}, Llb/n0;->b()Llb/w;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getType(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    iget-object v0, p0, Ly9/s;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ly9/q0;

    .line 23
    .line 24
    iget-object v0, v0, Ly9/q0;->l:Lr8/o;

    .line 25
    .line 26
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_1
    iget-object v0, p0, Ly9/s;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
