.class public final Ld7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld7/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld7/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget p2, p0, Ld7/d;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p2, "holder"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget p1, Ld7/f;->z:I

    .line 15
    .line 16
    const-string p1, "f"

    .line 17
    .line 18
    const-string p2, "*** WARNING *** surfaceChanged() gave us a null surface!"

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Ld7/d;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 27
    .line 28
    new-instance p2, Ld7/v;

    .line 29
    .line 30
    invoke-direct {p2, p3, p4}, Ld7/v;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p1, Ld7/f;->p:Ld7/v;

    .line 34
    .line 35
    invoke-virtual {p1}, Ld7/f;->e()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Ld7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "holder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld7/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lv7/p;

    .line 14
    .line 15
    iget-object v0, v0, Lv7/p;->c:Lf8/b;

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "getSurface(...)"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lf8/b;->a(Landroid/view/Surface;)V

    .line 27
    .line 28
    .line 29
    :pswitch_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget v0, p0, Ld7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "holder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ld7/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lv7/p;

    .line 14
    .line 15
    iget-object p1, p1, Lv7/p;->c:Lf8/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Lf8/b;->h()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object p1, p0, Ld7/d;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Ld7/f;->p:Ld7/v;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
