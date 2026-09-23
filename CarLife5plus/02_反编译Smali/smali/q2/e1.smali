.class public final Lq2/e1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq2/h1;


# direct methods
.method public synthetic constructor <init>(Lq2/h1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq2/e1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq2/e1;->b:Lq2/h1;

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
    .locals 3

    .line 1
    iget v0, p0, Lq2/e1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq2/e1;->b:Lq2/h1;

    .line 7
    .line 8
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lq2/h1;->N0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lq2/e1;->b:Lq2/h1;

    .line 19
    .line 20
    iget-object v1, v0, Lq2/h1;->E:Ly1/o;

    .line 21
    .line 22
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lq2/h1;->D:Lb2/c;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lq2/h1;->A0(Ly1/o;Lb2/c;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
