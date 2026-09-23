.class public final Lo2/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/n0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lf9/k;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo2/u;->a:I

    .line 5
    .line 6
    iput p2, p0, Lo2/u;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lo2/u;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lo2/u;->d:Lf9/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/u;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lf9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/u;->d:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lo2/u;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lo2/u;->a:I

    .line 2
    .line 3
    return v0
.end method
