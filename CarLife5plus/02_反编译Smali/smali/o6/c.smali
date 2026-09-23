.class public final Lo6/c;
.super Lo6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Lp6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo6/a;-><init>(Lp6/a;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo6/c;->g:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lp6/b;->getArguments()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "request_code"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget v0, p0, Lo6/c;->g:I

    .line 21
    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    iput v0, p0, Lo6/c;->g:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    sget-object v0, Lt6/c;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    const-class v0, Lt6/c;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lt6/c;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    invoke-virtual {p0}, Lo6/a;->b()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method public final g(Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lc7/a;->t(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    new-instance v0, Landroidx/lifecycle/z;

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lo6/a;->e:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p1, v1, p2, p3, v0}, Lm9/e0;->F0(Landroid/app/Activity;Lb7/a;Ljava/util/List;ILandroidx/lifecycle/z;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
