.class public final Lr2/a0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr2/b0;


# direct methods
.method public synthetic constructor <init>(Lr2/b0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr2/a0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr2/a0;->b:Lr2/b0;

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
    .locals 5

    .line 1
    iget v0, p0, Lr2/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lr2/k2;

    .line 7
    .line 8
    iget-object v0, p1, Lr2/k2;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lr2/a0;->b:Lr2/b0;

    .line 18
    .line 19
    iget-object v1, v0, Lr2/b0;->d:Lr2/u;

    .line 20
    .line 21
    invoke-virtual {v1}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, v0, Lr2/b0;->P:Lr2/a0;

    .line 26
    .line 27
    new-instance v3, Lk2/d;

    .line 28
    .line 29
    const/4 v4, 0x5

    .line 30
    invoke-direct {v3, v4, p1, v0}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v2, v3}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_0
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .line 40
    .line 41
    iget-object v0, p0, Lr2/a0;->b:Lr2/b0;

    .line 42
    .line 43
    iget-object v1, v0, Lr2/b0;->d:Lr2/u;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v0, v0, Lr2/b0;->d:Lr2/u;

    .line 50
    .line 51
    invoke-interface {v1, v0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
