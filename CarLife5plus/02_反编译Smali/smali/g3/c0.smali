.class public final Lg3/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lg3/x;

.field public final b:Lg3/r;


# direct methods
.method public constructor <init>(Lg3/x;Lg3/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg3/c0;->a:Lg3/x;

    .line 5
    .line 6
    iput-object p2, p0, Lg3/c0;->b:Lg3/r;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lg3/w;Lg3/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg3/c0;->a:Lg3/x;

    .line 2
    .line 3
    iget-object v0, v0, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lg3/c0;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lg3/c0;->b:Lg3/r;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lg3/r;->h(Lg3/w;Lg3/w;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
