.class public final La/a/b/p/d$a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/p/d;-><init>(La/a/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "La/a/b/l/c/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/b/p/d;


# direct methods
.method public constructor <init>(La/a/b/p/d;)V
    .locals 0

    iput-object p1, p0, La/a/b/p/d$a;->b:La/a/b/p/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, La/a/b/p/d$a;->b:La/a/b/p/d;

    .line 2
    iget-object v0, v0, La/a/b/p/d;->d:La/a/a/a/c;

    .line 3
    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bdspeech_recognition_start.pcm"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const-string v1, "context.applicationContext.assets.openFd(\"bdspeech_recognition_start.pcm\")"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x3e80

    const/4 v4, 0x1

    const/16 v5, 0x10

    .line 4
    new-instance v1, La/a/b/l/c/d/b;

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, La/a/b/l/c/d/b;-><init>(IIIJI)V

    const-string v2, "params"

    .line 5
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fd"

    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    const-string v4, "fd.createInputStream()"

    invoke-static {v3, v4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 6
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stream"

    invoke-static {v3, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v0, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/16 v5, 0x1000

    sub-int v6, v0, v4

    if-le v5, v6, :cond_0

    move v5, v6

    :cond_0
    :try_start_0
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v3, v0}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v4, 0x0

    invoke-static {v3, v4}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, La/a/b/l/c/d/b;->a(J)J

    move-result-wide v3

    .line 7
    iput-wide v3, v1, La/a/b/l/c/d/b;->d:J

    .line 8
    new-instance v0, La/a/b/l/c/d/e/a;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v2, "wrap(storage)"

    invoke-static {v7, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3c

    move-object v6, v0

    move-object v8, v1

    invoke-direct/range {v6 .. v13}, La/a/b/l/c/d/e/a;-><init>(Ljava/nio/ByteBuffer;La/a/b/l/c/d/b;IIZZI)V

    const/4 v1, 0x3

    .line 9
    iput v1, v0, La/a/b/l/c/d/e/a;->d:I

    const/4 v1, 0x2

    .line 10
    iput v1, v0, La/a/b/l/c/d/e/a;->e:I

    return-object v0
.end method
