.class public final Ld1/a;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ld1/a;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Ld1/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Ld1/a;->b:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ld1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1/s;

    .line 7
    .line 8
    iget-object v0, p0, Ld1/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lg9/x;

    .line 11
    .line 12
    iget v1, p0, Ld1/a;->b:I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lw1/s;->E0(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_0
    check-cast p1, Lo2/u0;

    .line 26
    .line 27
    iget-object v0, p0, Ld1/a;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lo2/v0;

    .line 30
    .line 31
    iget v1, p0, Ld1/a;->b:I

    .line 32
    .line 33
    neg-int v1, v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {p1, v0, v1, v2}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
