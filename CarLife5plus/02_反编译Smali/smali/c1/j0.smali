.class public final Lc1/j0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/j0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc1/j0;->b:Ljava/lang/String;

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
    .locals 3

    .line 1
    iget v0, p0, Lc1/j0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Lc1/j0;->b:Ljava/lang/String;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ly2/j;

    .line 11
    .line 12
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 13
    .line 14
    sget-object v0, Ly2/r;->a:Ly2/u;

    .line 15
    .line 16
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1, v0, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Ly2/j;

    .line 25
    .line 26
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 27
    .line 28
    sget-object v0, Ly2/r;->a:Ly2/u;

    .line 29
    .line 30
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v0, v2}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    invoke-static {p1, v0}, Ly2/t;->b(Ly2/j;I)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
