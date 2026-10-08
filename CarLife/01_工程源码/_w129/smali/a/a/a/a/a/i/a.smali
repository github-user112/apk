.class public final La/a/a/a/a/i/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile e:Z

.field public final f:Landroid/graphics/SurfaceTexture;

.field public final g:[F

.field public final h:Landroid/view/Surface;

.field public i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>(IIIFII[II)V
    .locals 0

    and-int/lit8 p4, p8, 0x40

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    new-array p4, p4, [I

    fill-array-data p4, :array_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string p5, "padding"

    .line 1
    invoke-static {p4, p5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/a/a/a/i/a;->a:I

    iput p2, p0, La/a/a/a/a/i/a;->b:I

    iput p3, p0, La/a/a/a/a/i/a;->c:I

    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, La/a/a/a/a/i/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p4, Landroid/graphics/SurfaceTexture;

    invoke-direct {p4, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p4, p0, La/a/a/a/a/i/a;->f:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, La/a/a/a/a/i/a;->g:[F

    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, p4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, La/a/a/a/a/i/a;->h:Landroid/view/Surface;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p4, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3
    :cond_1
    invoke-virtual {p4, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const-string p1, "CarLife_SDK"

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "RenderableTexture monitor create "

    aput-object p4, p3, p5

    const/4 p4, 0x1

    aput-object p0, p3, p4

    const-string p4, "tag"

    .line 4
    invoke-static {p1, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "args"

    invoke-static {p3, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x3

    .line 6
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p5, p1, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    iget-boolean v0, p0, La/a/a/a/a/i/a;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/i/a;->e:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v0, [I

    iget v3, p0, La/a/a/a/a/i/a;->a:I

    aput v3, v2, v1

    invoke-static {v1, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    iget-object v2, p0, La/a/a/a/a/i/a;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v2, p0, La/a/a/a/a/i/a;->h:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const-string v2, "CarLife_SDK"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RenderableTexture monitor release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "tag"

    .line 1
    invoke-static {v2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {v0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 3
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, La/a/a/a/a/i/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, La/a/a/a/a/i/a;

    iget p1, p1, La/a/a/a/a/i/a;->a:I

    iget v1, p0, La/a/a/a/a/i/a;->a:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, La/a/a/a/a/i/a;->a:I

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/i/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, La/a/a/a/a/i/a;->i:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/a/i/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/a/i/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/a/a/a/a/i/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " available frames "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/a/a/a/i/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
