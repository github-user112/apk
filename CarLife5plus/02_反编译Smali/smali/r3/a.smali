.class public final Lr3/a;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;


# direct methods
.method public synthetic constructor <init>(Lr3/t;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr3/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr3/a;->b:Lr3/t;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lr3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lc/n0;

    .line 7
    .line 8
    iget-object p1, p0, Lr3/a;->b:Lr3/t;

    .line 9
    .line 10
    iget-object v0, p1, Lr3/t;->e:Lr3/s;

    .line 11
    .line 12
    iget-boolean v0, v0, Lr3/s;->a:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lr3/t;->d:Lf9/a;

    .line 17
    .line 18
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Lf1/i0;

    .line 25
    .line 26
    new-instance p1, Lc8/p;

    .line 27
    .line 28
    const/16 v0, 0x9

    .line 29
    .line 30
    iget-object v1, p0, Lr3/a;->b:Lr3/t;

    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
