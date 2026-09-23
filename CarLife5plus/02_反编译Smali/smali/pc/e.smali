.class public final Lpc/e;
.super Ld6/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Lj/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld6/h;-><init>(Lj/g;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lpc/e;->d:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lpc/e;->d:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Ld6/h;->i(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Ld6/h;->g(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
