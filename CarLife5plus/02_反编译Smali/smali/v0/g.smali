.class public final synthetic Lv0/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv0/h;


# direct methods
.method public synthetic constructor <init>(Lv0/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv0/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv0/g;->b:Lv0/h;

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
    .locals 1

    .line 1
    iget v0, p0, Lv0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv0/g;->b:Lv0/h;

    .line 7
    .line 8
    iget-object v0, v0, Lv0/h;->d:Lv0/k;

    .line 9
    .line 10
    iget-object v0, v0, Lv0/k;->a:Lo2/w;

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lv0/g;->b:Lv0/h;

    .line 14
    .line 15
    iget-object v0, v0, Lv0/h;->d:Lv0/k;

    .line 16
    .line 17
    iget-object v0, v0, Lv0/k;->b:Lb3/l0;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lv0/g;->b:Lv0/h;

    .line 21
    .line 22
    iget-object v0, v0, Lv0/h;->d:Lv0/k;

    .line 23
    .line 24
    iget-object v0, v0, Lv0/k;->a:Lo2/w;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
