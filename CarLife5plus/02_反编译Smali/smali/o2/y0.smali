.class public final Lo2/y0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo2/v0;


# direct methods
.method public synthetic constructor <init>(Lo2/v0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo2/y0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lo2/y0;->b:Lo2/v0;

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
    iget v0, p0, Lo2/y0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lo2/u0;

    .line 7
    .line 8
    iget-object v0, p0, Lo2/y0;->b:Lo2/v0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0, v1, v1}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    check-cast p1, Lo2/u0;

    .line 18
    .line 19
    iget-object v0, p0, Lo2/y0;->b:Lo2/v0;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, v1, v1}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    check-cast p1, Lo2/u0;

    .line 29
    .line 30
    iget-object v0, p0, Lo2/y0;->b:Lo2/v0;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1, v1}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_2
    check-cast p1, Lo2/u0;

    .line 40
    .line 41
    iget-object v0, p0, Lo2/y0;->b:Lo2/v0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v0, v1, v1}, Lo2/u0;->j(Lo2/u0;Lo2/v0;II)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lr8/z;->a:Lr8/z;

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
