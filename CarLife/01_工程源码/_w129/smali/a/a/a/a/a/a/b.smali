.class public final La/a/a/a/a/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/a/b$a;
    }
.end annotation


# static fields
.field public static final b:La/a/a/a/a/a/b$a;

.field public static final c:La/a/a/a/a/a/c;

.field public static final d:La/a/a/a/a/a/b;


# instance fields
.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:[B

.field public final h:Ljava/nio/ByteBuffer;

.field public i:[B

.field public j:Ljava/nio/ByteBuffer;

.field public k:La/c/a/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, La/a/a/a/a/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/a/b$a;-><init>(Lc/k/b/b;)V

    sput-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    new-instance v0, La/a/a/a/a/a/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La/a/a/a/a/a/c;-><init>(II)V

    sput-object v0, La/a/a/a/a/a/b;->c:La/a/a/a/a/a/c;

    new-instance v0, La/a/a/a/a/a/b;

    .line 1
    invoke-direct {v0, v1}, La/a/a/a/a/a/b;-><init>(I)V

    .line 2
    sput-object v0, La/a/a/a/a/a/b;->d:La/a/a/a/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/a/a/a/a/a/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/a/a/a/a/b;->e:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, La/a/a/a/a/a/b;->g:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/a/a/b;->h:Ljava/nio/ByteBuffer;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, La/a/a/a/a/a/b;->s()V

    return-void
.end method

.method public final j()La/a/a/a/a/a/b;
    .locals 8

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    iget v1, p0, La/a/a/a/a/a/b;->e:I

    invoke-virtual {p0}, La/a/a/a/a/a/b;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    .line 1
    iget v1, p0, La/a/a/a/a/a/b;->e:I

    const/4 v2, 0x6

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {v1, v4}, Lb/e/b/g;->k0([BI)I

    move-result v1

    int-to-long v6, v1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 2
    :goto_0
    iget v1, v0, La/a/a/a/a/a/b;->e:I

    if-eq v1, v5, :cond_1

    if-eq v1, v2, :cond_1

    long-to-int v1, v6

    iget-object v2, v0, La/a/a/a/a/a/b;->i:[B

    invoke-static {v1, v2, v4, v3, v4}, Lb/e/b/g;->v(I[BIII)V

    :cond_1
    return-object v0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method public final l()I
    .locals 4

    iget v0, p0, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {v0, v1, v2}, Lb/e/b/g;->l0([BII)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    const-string v3, "<this>"

    .line 1
    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final m()La/c/a/x;
    .locals 5

    iget-object v0, p0, La/a/a/a/a/a/b;->k:La/c/a/x;

    if-nez v0, :cond_3

    .line 1
    invoke-virtual {p0}, La/a/a/a/a/a/b;->l()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, La/a/a/a/a/a/a/a;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {p0}, La/a/a/a/a/a/b;->n()I

    move-result v2

    .line 2
    sget-object v3, La/a/a/a/a/a/a/a;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/a/a/a/a/a/b;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, La/a/a/a/a/a/b;->i:[B

    .line 4
    invoke-virtual {p0}, La/a/a/a/a/a/b;->k()I

    move-result v3

    const-string v4, "payload"

    .line 5
    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, La/a/a/a/a/a/a/b;->a:Lc/k/a/c;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lc/k/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    move-object v1, v0

    check-cast v1, La/c/a/x;

    .line 7
    :goto_0
    iput-object v1, p0, La/a/a/a/a/a/b;->k:La/c/a/x;

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.protobuf.MessageLite"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, La/a/a/a/a/a/b;->k:La/c/a/x;

    return-object v0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lb/e/b/g;->k0([BI)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb/e/b/g;->k0([BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final o()I
    .locals 2

    invoke-virtual {p0}, La/a/a/a/a/a/b;->k()I

    move-result v0

    invoke-virtual {p0}, La/a/a/a/a/a/b;->l()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final p()Z
    .locals 2

    invoke-virtual {p0}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const v1, 0x18001

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/a/b;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q(Z)[B
    .locals 3

    if-eqz p1, :cond_0

    iget p1, p0, La/a/a/a/a/a/b;->e:I

    iget-object v0, p0, La/a/a/a/a/a/b;->g:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lb/e/b/g;->v(I[BIII)V

    invoke-virtual {p0}, La/a/a/a/a/a/b;->o()I

    move-result p1

    iget-object v0, p0, La/a/a/a/a/a/b;->g:[B

    const/4 v1, 0x4

    invoke-static {p1, v0, v1, v2, v1}, Lb/e/b/g;->v(I[BIII)V

    :cond_0
    iget-object p1, p0, La/a/a/a/a/a/b;->g:[B

    return-object p1
.end method

.method public final r(La/c/a/x;)V
    .locals 4

    iput-object p1, p0, La/a/a/a/a/a/b;->k:La/c/a/x;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, La/a/a/a/a/a/b;->u(I)V

    return-void

    :cond_0
    invoke-interface {p1}, La/c/a/x;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, La/a/a/a/a/a/b;->u(I)V

    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    invoke-virtual {p0}, La/a/a/a/a/a/b;->k()I

    move-result v1

    invoke-interface {p1}, La/c/a/x;->getSerializedSize()I

    move-result v2

    .line 1
    sget-object v3, La/c/a/i;->a:Ljava/util/logging/Logger;

    new-instance v3, La/c/a/i$c;

    invoke-direct {v3, v0, v1, v2}, La/c/a/i$c;-><init>([BII)V

    .line 2
    invoke-interface {p1, v3}, La/c/a/x;->writeTo(La/c/a/i;)V

    return-void
.end method

.method public final s()V
    .locals 7

    iget-object v0, p0, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "message"

    .line 1
    invoke-static {p0, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, La/a/a/a/a/a/b;->c:La/a/a/a/a/a/c;

    .line 4
    monitor-enter v0

    :try_start_0
    const-string v1, "message"

    invoke-static {p0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La/a/a/a/a/a/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, v0, La/a/a/a/a/a/c;->a:I

    if-ge v1, v2, :cond_0

    iget-object v1, v0, La/a/a/a/a/a/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "CarLife_SDK"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "CarLifeMessagePool recyclePoll recycle size "

    iget-object v6, v0, La/a/a/a/a/a/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "tag"

    .line 5
    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    .line 7
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v1, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this message "

    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already recycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t(I)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    new-array p1, p1, [B

    invoke-virtual {p0}, La/a/a/a/a/a/b;->k()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1
    iput-object p1, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/a/a/b;->j:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "channel: "

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/a/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceType: 0x000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/a/b;->n()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " header size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/a/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/a/b;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object v1

    const-string v2, " payload: "

    invoke-static {v2, v1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(I)V
    .locals 3

    iget v0, p0, La/a/a/a/a/a/b;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    invoke-static {p1, v0, v2, v2, v1}, Lb/e/b/g;->v(I[BIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/b;->i:[B

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v1}, Lb/e/b/g;->v(I[BIII)V

    :goto_0
    invoke-virtual {p0}, La/a/a/a/a/a/b;->o()I

    move-result p1

    invoke-virtual {p0, p1}, La/a/a/a/a/a/b;->t(I)V

    return-void
.end method
