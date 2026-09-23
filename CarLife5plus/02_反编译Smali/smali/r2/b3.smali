.class public final Lr2/b3;
.super Landroid/database/ContentObserver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Lcc/h;


# direct methods
.method public constructor <init>(Lcc/h;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/b3;->a:Lcc/h;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lr2/b3;->a:Lcc/h;

    .line 2
    .line 3
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method
