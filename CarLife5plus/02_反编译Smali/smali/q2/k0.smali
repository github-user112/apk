.class public abstract Lq2/k0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ln3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg5/a;->h()Ln3/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lq2/k0;->a:Ln3/d;

    .line 6
    .line 7
    return-void
.end method

.method public static final a(Lq2/h0;)Lq2/q1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq2/h0;->m:Lq2/q1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "LayoutNode should be attached to an owner"

    .line 7
    .line 8
    invoke-static {p0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method
