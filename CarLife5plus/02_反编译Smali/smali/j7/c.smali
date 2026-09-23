.class public final Lj7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lcom/baidu/carlife/sdk/CarLifeContext;

.field public final b:Ll7/h;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lj7/c;->a:Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 10
    .line 11
    new-instance p1, Ll7/h;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {p1, v0, v1}, Ll7/h;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lj7/c;->b:Ll7/h;

    .line 19
    .line 20
    return-void
.end method
