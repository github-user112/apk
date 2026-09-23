.class public final synthetic Lh0/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh0/n0;


# direct methods
.method public synthetic constructor <init>(Lh0/n0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh0/m0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh0/m0;->b:Lh0/n0;

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
    iget v0, p0, Lh0/m0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh0/m0;->b:Lh0/n0;

    .line 7
    .line 8
    iget-object v1, v0, Lh0/n0;->p:Lh0/k0;

    .line 9
    .line 10
    invoke-interface {v1}, Lh0/k0;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v0, v0, Lh0/n0;->p:Lh0/k0;

    .line 15
    .line 16
    invoke-interface {v0}, Lh0/k0;->d()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v1, v0

    .line 21
    int-to-float v0, v1

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lh0/m0;->b:Lh0/n0;

    .line 28
    .line 29
    iget-object v0, v0, Lh0/n0;->p:Lh0/k0;

    .line 30
    .line 31
    invoke-interface {v0}, Lh0/k0;->e()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lh0/m0;->b:Lh0/n0;

    .line 41
    .line 42
    iget-object v0, v0, Lh0/n0;->p:Lh0/k0;

    .line 43
    .line 44
    invoke-interface {v0}, Lh0/k0;->b()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
