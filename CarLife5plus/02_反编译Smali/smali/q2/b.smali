.class public final Lq2/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq2/c;


# direct methods
.method public synthetic constructor <init>(Lq2/c;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq2/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq2/b;->b:Lq2/c;

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
    .locals 5

    .line 1
    iget v0, p0, Lq2/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    .line 7
    .line 8
    iget-object v1, v0, Lq2/c;->o:Lr1/n;

    .line 9
    .line 10
    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.modifier.ModifierLocalConsumer"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Ld0/a0;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Ld0/c;->c:Lp2/f;

    .line 21
    .line 22
    invoke-interface {v0, v2}, Lp2/e;->y(Lp2/f;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ld0/t0;

    .line 27
    .line 28
    iget-object v2, v1, Ld0/a0;->a:Ld0/t0;

    .line 29
    .line 30
    new-instance v3, Ld0/v;

    .line 31
    .line 32
    invoke-direct {v3, v2, v0}, Ld0/v;-><init>(Ld0/t0;Ld0/t0;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Ld0/a0;->b:Lf1/k1;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Ld0/q0;

    .line 41
    .line 42
    invoke-direct {v3, v0, v2}, Ld0/q0;-><init>(Ld0/t0;Ld0/t0;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Ld0/a0;->c:Lf1/k1;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    .line 54
    .line 55
    invoke-virtual {v0}, Lq2/c;->C0()V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
