.class public final La/a/b/l/c/d/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/l/c/d/c;


# instance fields
.field public final b:Ljava/nio/ByteBuffer;

.field public final c:La/a/b/l/c/d/b;

.field public d:I

.field public e:I

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;La/a/b/l/c/d/b;IIZZI)V
    .locals 2

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 p4, 0x1

    :cond_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 p5, 0x1

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    const/4 p6, 0x0

    :cond_3
    const-string p7, "storage"

    .line 1
    invoke-static {p1, p7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "params"

    invoke-static {p2, p7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    iput-object p2, p0, La/a/b/l/c/d/e/a;->c:La/a/b/l/c/d/b;

    iput p3, p0, La/a/b/l/c/d/e/a;->d:I

    iput p4, p0, La/a/b/l/c/d/e/a;->e:I

    iput-boolean p5, p0, La/a/b/l/c/d/e/a;->f:Z

    iput-boolean p6, p0, La/a/b/l/c/d/e/a;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/a/b/l/c/d/e/a;->d:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, La/a/b/l/c/d/e/a;->g:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public d(La/a/b/l/c/d/d;IJ)I
    .locals 0

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    .line 1
    iget-object p3, p1, La/a/b/l/c/d/d;->a:[B

    array-length p3, p3

    const/4 p4, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, p4}, La/a/b/l/c/d/d;->a(Ljava/nio/ByteBuffer;IZ)V

    .line 3
    iget p1, p1, La/a/b/l/c/d/d;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, La/a/b/l/c/d/e/a;->f:Z

    return v0
.end method

.method public f()La/a/b/l/c/d/b;
    .locals 1

    iget-object v0, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, La/a/b/l/c/d/e/a;->c:La/a/b/l/c/d/b;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, La/a/b/l/c/d/e/a;->e:I

    return v0
.end method

.method public h(La/a/b/l/c/d/d;J)I
    .locals 1

    const-string p2, "buffer"

    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, La/a/b/l/c/d/d;->a(Ljava/nio/ByteBuffer;IZ)V

    .line 1
    iget p1, p1, La/a/b/l/c/d/d;->b:I

    return p1
.end method

.method public i()J
    .locals 3

    iget-object v0, p0, La/a/b/l/c/d/e/a;->c:La/a/b/l/c/d/b;

    iget-object v1, p0, La/a/b/l/c/d/e/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, La/a/b/l/c/d/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
