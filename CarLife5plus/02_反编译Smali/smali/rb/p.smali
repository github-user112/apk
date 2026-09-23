.class public final Lrb/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/y0;


# instance fields
.field public a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrb/p;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public g(Lv/p;Lv/p;Lv/p;)J
    .locals 2

    .line 1
    iget p1, p0, Lrb/p;->a:I

    .line 2
    .line 3
    int-to-long p1, p1

    .line 4
    const-wide/32 v0, 0xf4240

    .line 5
    .line 6
    .line 7
    mul-long p1, p1, v0

    .line 8
    .line 9
    return-wide p1
.end method

.method public i(Lv/p;Lv/p;Lv/p;)Lv/p;
    .locals 0

    .line 1
    return-object p3
.end method

.method public n(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 4

    .line 1
    iget p5, p0, Lrb/p;->a:I

    .line 2
    .line 3
    int-to-long v0, p5

    .line 4
    const-wide/32 v2, 0xf4240

    .line 5
    .line 6
    .line 7
    mul-long v0, v0, v2

    .line 8
    .line 9
    cmp-long p5, p1, v0

    .line 10
    .line 11
    if-gez p5, :cond_0

    .line 12
    .line 13
    return-object p3

    .line 14
    :cond_0
    return-object p4
.end method

.method public p(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 0

    .line 1
    return-object p5
.end method
