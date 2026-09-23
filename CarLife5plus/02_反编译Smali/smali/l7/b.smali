.class public final Ll7/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ll7/d;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Ll7/c;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ll7/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/b;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object p2, p0, Ll7/b;->b:Ll7/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/b;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Lj6/a;Lb3/f0;)I
    .locals 4

    .line 1
    iget-object p2, p1, Lj6/a;->a:[B

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p1, Lj6/a;->b:I

    .line 6
    .line 7
    array-length v2, p2

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    array-length p2, p2

    .line 11
    mul-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    new-array p2, p2, [B

    .line 18
    .line 19
    iget-object v2, p1, Lj6/a;->a:[B

    .line 20
    .line 21
    iget v3, p1, Lj6/a;->b:I

    .line 22
    .line 23
    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p1, Lj6/a;->a:[B

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Ll7/b;->a:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-le v0, v1, :cond_1

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    iget-object v1, p1, Lj6/a;->a:[B

    .line 40
    .line 41
    iget v2, p1, Lj6/a;->b:I

    .line 42
    .line 43
    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    iget p2, p1, Lj6/a;->b:I

    .line 47
    .line 48
    add-int/2addr p2, v0

    .line 49
    iput p2, p1, Lj6/a;->b:I

    .line 50
    .line 51
    :cond_2
    iget p1, p1, Lj6/a;->b:I

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    const/4 p1, -0x1

    .line 56
    :cond_3
    return p1
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/b;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final j()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/b;->a:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll7/b;->b:Ll7/c;

    .line 7
    .line 8
    return-object v0
.end method
