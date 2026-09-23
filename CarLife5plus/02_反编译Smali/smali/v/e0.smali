.class public final Lv/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/v;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv/e0;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lv/w0;)Lv/y0;
    .locals 1

    .line 1
    new-instance p1, Lrb/p;

    .line 2
    .line 3
    iget v0, p0, Lv/e0;->a:I

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lrb/p;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lv/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lv/e0;

    .line 6
    .line 7
    iget p1, p1, Lv/e0;->a:I

    .line 8
    .line 9
    iget v0, p0, Lv/e0;->a:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lv/e0;->a:I

    .line 2
    .line 3
    return v0
.end method
