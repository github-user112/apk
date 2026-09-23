.class public final synthetic Lx/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx/x;


# direct methods
.method public synthetic constructor <init>(Lx/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx/v;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx/v;->b:Lx/x;

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
    iget v0, p0, Lx/v;->a:I

    .line 2
    .line 3
    check-cast p1, Lx1/b;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lx/v;->b:Lx/x;

    .line 9
    .line 10
    iget-boolean v0, p1, Lx/f;->v:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lx/f;->w:Lf9/a;

    .line 15
    .line 16
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    iget-object p1, p0, Lx/v;->b:Lx/x;

    .line 23
    .line 24
    iget-object v0, p1, Lx/x;->K:Lf9/a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-boolean v0, p1, Lx/x;->L:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Lr2/i1;->l:Lf1/w2;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lg2/a;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-interface {p1, v0}, Lg2/a;->a(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 48
    .line 49
    return-object p1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
