.class public final Lq3/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lq3/b;

.field public static final c:Lq3/b;

.field public static final d:Lq3/b;

.field public static final e:Lq3/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq3/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lq3/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq3/b;->b:Lq3/b;

    .line 9
    .line 10
    new-instance v0, Lq3/b;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lq3/b;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lq3/b;->c:Lq3/b;

    .line 17
    .line 18
    new-instance v0, Lq3/b;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lq3/b;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lq3/b;->d:Lq3/b;

    .line 25
    .line 26
    new-instance v0, Lq3/b;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lq3/b;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lq3/b;->e:Lq3/b;

    .line 33
    .line 34
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lq3/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lq3/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    check-cast p1, Ly2/j;

    .line 12
    .line 13
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_1
    check-cast p1, Lo2/u0;

    .line 17
    .line 18
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_2
    check-cast p1, Lq3/i;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p1, p1, Lq3/i;->q:Lq3/h;

    .line 28
    .line 29
    new-instance v1, Lcom/baidu/carlife/sdk/internal/a;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/baidu/carlife/sdk/internal/a;-><init>(Lf9/a;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
