.class public final Lk2/c0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk2/d0;


# direct methods
.method public synthetic constructor <init>(Lk2/d0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk2/c0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk2/c0;->b:Lk2/d0;

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
    .locals 1

    .line 1
    iget v0, p0, Lk2/c0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/MotionEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lk2/c0;->b:Lk2/d0;

    .line 9
    .line 10
    iget-object v0, v0, Lk2/d0;->a:Lk2/e0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lk2/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    const-string p1, "onTouchEvent"

    .line 21
    .line 22
    invoke-static {p1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    throw p1

    .line 27
    :pswitch_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 28
    .line 29
    iget-object v0, p0, Lk2/c0;->b:Lk2/d0;

    .line 30
    .line 31
    iget-object v0, v0, Lk2/d0;->a:Lk2/e0;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lk2/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    const-string p1, "onTouchEvent"

    .line 42
    .line 43
    invoke-static {p1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
