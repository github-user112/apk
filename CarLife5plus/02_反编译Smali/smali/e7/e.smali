.class public final synthetic Le7/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Le7/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le7/e;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Le7/e;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Le7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le7/e;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc8/z0;

    .line 9
    .line 10
    iget-object v0, v0, Lc8/z0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lq5/f;

    .line 13
    .line 14
    iget-boolean v1, p0, Le7/e;->b:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Lq5/f;->f:Z

    .line 17
    .line 18
    iget-boolean v1, v0, Lq5/f;->c:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lq5/f;->d:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v2, v0, Lq5/f;->f:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Lq5/f;->e:Ld7/g;

    .line 33
    .line 34
    const-wide/32 v2, 0x493e0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Le7/e;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lq5/a;

    .line 44
    .line 45
    iget-boolean v1, p0, Le7/e;->b:Z

    .line 46
    .line 47
    iget-object v0, v0, Lq5/a;->a:Le7/i;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Le7/i;->e(Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    iget-object v0, p0, Le7/e;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Le7/g;

    .line 56
    .line 57
    iget-boolean v1, p0, Le7/e;->b:Z

    .line 58
    .line 59
    iget-object v0, v0, Le7/g;->c:Le7/i;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Le7/i;->e(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
