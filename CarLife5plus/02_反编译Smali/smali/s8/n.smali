.class public final Ls8/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lh9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ls8/n;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ls8/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Ls8/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls8/n;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lwb/j;

    .line 9
    .line 10
    invoke-interface {v0}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    new-instance v0, Ls8/a0;

    .line 16
    .line 17
    iget-object v1, p0, Ls8/n;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lf9/a;

    .line 20
    .line 21
    invoke-interface {v1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Iterator;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ls8/a0;-><init>(Ljava/util/Iterator;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_1
    iget-object v0, p0, Ls8/n;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v0}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
