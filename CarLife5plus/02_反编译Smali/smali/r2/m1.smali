.class public final Lr2/m1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/support/v4/media/session/t;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/support/v4/media/session/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lr2/m1;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lr2/m1;->b:Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    iput-object p3, p0, Lr2/m1;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr2/m1;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lr2/m1;->b:Landroid/support/v4/media/session/t;

    .line 6
    .line 7
    iget-object v1, p0, Lr2/m1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lc5/a;

    .line 12
    .line 13
    iget-object v2, v0, Lc5/a;->c:Lib/d;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v0, v0, Lc5/a;->d:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, La5/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit v2

    .line 28
    throw v0

    .line 29
    :cond_0
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    return-object v0
.end method
