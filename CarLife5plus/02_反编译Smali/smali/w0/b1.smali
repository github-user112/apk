.class public final synthetic Lw0/b1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Lf9/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/b1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/b1;->b:Lf9/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw0/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lk2/w;

    .line 7
    .line 8
    iget-object p1, p0, Lw0/b1;->b:Lf9/a;

    .line 9
    .line 10
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    const-string v0, "it"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lw0/b1;->b:Lf9/a;

    .line 22
    .line 23
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    check-cast p1, Ln3/c;

    .line 29
    .line 30
    iget-object p1, p0, Lw0/b1;->b:Lf9/a;

    .line 31
    .line 32
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lx1/b;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_2
    check-cast p1, Ln3/c;

    .line 40
    .line 41
    iget-object p1, p0, Lw0/b1;->b:Lf9/a;

    .line 42
    .line 43
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lx1/b;

    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
