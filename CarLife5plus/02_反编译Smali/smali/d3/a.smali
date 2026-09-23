.class public final Ld3/a;
.super Landroid/text/SegmentFinder;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/t;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/a;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final nextEndBoundary(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/a;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/t;->k0(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final nextStartBoundary(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/a;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/t;->O(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final previousEndBoundary(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/a;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/t;->P(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final previousStartBoundary(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/a;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/t;->j0(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
