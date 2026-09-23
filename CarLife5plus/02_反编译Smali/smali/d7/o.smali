.class public final Ld7/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Le7/g;

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public d:Ld7/k;

.field public final e:Landroid/os/Handler;

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field public final h:Ljava/lang/Object;

.field public final i:Ld7/n;

.field public final j:La2/d;


# direct methods
.method public constructor <init>(Le7/g;Ld7/k;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld7/o;->g:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ld7/o;->h:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ld7/n;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1, p0}, Ld7/n;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ld7/o;->i:Ld7/n;

    .line 21
    .line 22
    new-instance v0, La2/d;

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    invoke-direct {v0, v1, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ld7/o;->j:La2/d;

    .line 29
    .line 30
    invoke-static {}, Lg5/a;->a0()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Ld7/o;->a:Le7/g;

    .line 34
    .line 35
    iput-object p2, p0, Ld7/o;->d:Ld7/k;

    .line 36
    .line 37
    iput-object p3, p0, Ld7/o;->e:Landroid/os/Handler;

    .line 38
    .line 39
    return-void
.end method
