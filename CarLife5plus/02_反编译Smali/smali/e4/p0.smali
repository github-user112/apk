.class public final Le4/p0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Le4/p0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le4/p0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Le4/p0;->b:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Le4/p0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Le4/p0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Le4/r0;

    .line 13
    .line 14
    invoke-interface {p1}, Le4/r0;->a()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Le4/p0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Le4/p0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Le4/a1;

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iget-object v1, p1, Le4/a1;->a:Le4/z0;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Le4/z0;->e(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Le4/p0;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v0, p1}, Le4/w0;->f(Landroid/view/View;Le4/a1;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Le4/p0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Le4/r0;

    .line 26
    .line 27
    invoke-interface {p1}, Le4/r0;->c()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Le4/p0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Le4/p0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Le4/r0;

    .line 13
    .line 14
    invoke-interface {p1}, Le4/r0;->b()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
