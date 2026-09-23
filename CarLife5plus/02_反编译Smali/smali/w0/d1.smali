.class public abstract Lw0/d1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lf1/c0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lw0/d1;->a:Lf1/c0;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lw0/c1;J)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lw0/c1;->a()Ls/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Ls/a0;->b(J)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
