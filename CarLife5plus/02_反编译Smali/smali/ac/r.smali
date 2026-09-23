.class public final Lac/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw8/g;


# instance fields
.field public final a:Lf9/k;

.field public final b:Lw8/g;


# direct methods
.method public constructor <init>(Lw8/g;Lf9/k;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

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
    iput-object p2, p0, Lac/r;->a:Lf9/k;

    .line 10
    .line 11
    instance-of p2, p1, Lac/r;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Lac/r;

    .line 16
    .line 17
    iget-object p1, p1, Lac/r;->b:Lw8/g;

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lac/r;->b:Lw8/g;

    .line 20
    .line 21
    return-void
.end method
