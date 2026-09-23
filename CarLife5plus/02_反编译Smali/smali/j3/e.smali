.class public final synthetic Lj3/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Ly1/m;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ly1/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj3/e;->a:Ly1/m;

    .line 5
    .line 6
    iput-wide p2, p0, Lj3/e;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-wide v0, p0, Lj3/e;->b:J

    .line 2
    .line 3
    iget-object v2, p0, Lj3/e;->a:Ly1/m;

    .line 4
    .line 5
    check-cast v2, Ly1/j0;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ly1/j0;->b(J)Landroid/graphics/Shader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
