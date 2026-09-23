.class public final Lc1/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ly1/h;

.field public final b:Ly1/i;

.field public final c:Ly1/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ly1/i;

    .line 6
    .line 7
    new-instance v2, Landroid/graphics/PathMeasure;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ly1/i;-><init>(Landroid/graphics/PathMeasure;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ly1/j;->a()Ly1/h;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lc1/p;->a:Ly1/h;

    .line 23
    .line 24
    iput-object v1, p0, Lc1/p;->b:Ly1/i;

    .line 25
    .line 26
    iput-object v2, p0, Lc1/p;->c:Ly1/h;

    .line 27
    .line 28
    return-void
.end method
