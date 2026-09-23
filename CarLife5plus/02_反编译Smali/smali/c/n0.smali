.class public final Lc/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Lg9/j;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp4/x;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc/n0;->d:I

    .line 5
    iput-object p1, p0, Lc/n0;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/n0;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lr3/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/n0;->d:I

    iput-object p1, p0, Lc/n0;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lc/n0;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lc/n0;->a:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lc/n0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
