.class public final Le4/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Le4/r;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x23

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Le4/q;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Le4/q;-><init>(Landroidx/core/widget/NestedScrollView;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Le4/s;->a:Le4/r;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Lib/d;

    .line 19
    .line 20
    const/16 v0, 0xe

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lib/d;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Le4/s;->a:Le4/r;

    .line 26
    .line 27
    return-void
.end method
