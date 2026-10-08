.class public final La/a/a/a/n/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/n/g$a;,
        La/a/a/a/n/g$b;
    }
.end annotation


# static fields
.field public static a:La/a/a/a/n/g;


# instance fields
.field public final b:Ljava/io/File;

.field public c:Ljava/io/BufferedWriter;

.field public d:Ljava/io/File;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public g:I

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const-string v0, "dir"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/n/g;->b:Ljava/io/File;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarLife_Logger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/n/g;->f:Landroid/os/HandlerThread;

    const/4 v1, 0x5

    iput v1, p0, La/a/a/a/n/g;->g:I

    const-wide/32 v1, 0x500000

    iput-wide v1, p0, La/a/a/a/n/g;->h:J

    const/16 v1, 0x14

    iput v1, p0, La/a/a/a/n/g;->i:I

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, La/a/a/a/n/b;

    invoke-direct {v1, p0}, La/a/a/a/n/b;-><init>(La/a/a/a/n/g;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, La/a/a/a/n/g;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "tag"

    .line 1
    invoke-static {p0, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 3
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "tag"

    .line 1
    invoke-static {p0, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 3
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static d(La/a/a/a/n/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    and-int/lit8 p5, p5, 0x8

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    invoke-static {p5}, La/a/a/a/n/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x20

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, La/a/a/a/n/g;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, La/a/a/a/n/g;->e:Landroid/os/Handler;

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final varargs c(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const-string v0, "tag"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p1, :cond_8

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object p3, p3, v2

    invoke-virtual {p0, p3}, La/a/a/a/n/g;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v4, p3

    goto :goto_2

    :cond_0
    const-string v0, "..."

    const-string v3, "$this$joinToString"

    .line 1
    invoke-static {p3, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "separator"

    const-string v4, ""

    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "prefix"

    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "postfix"

    invoke-static {v4, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "truncated"

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "$this$joinTo"

    .line 2
    invoke-static {p3, v9}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "buffer"

    invoke-static {v8, v9}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v0, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v5, p3, v2

    add-int/2addr v3, v1

    if-le v3, v1, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    const-string v6, "$this$appendElement"

    .line 3
    invoke-static {v8, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v5}, La/a/a/a/n/g;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "joinTo(StringBuilder(), \u2026ed, transform).toString()"

    invoke-static {p3, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x5

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/4 p3, 0x7

    if-eq p1, p3, :cond_3

    goto :goto_5

    .line 8
    :cond_3
    invoke-static {p2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-static {p2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string p1, "E"

    goto :goto_4

    :cond_5
    invoke-static {p2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "W"

    goto :goto_4

    :cond_6
    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "D"

    goto :goto_4

    :cond_7
    invoke-static {p2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "V"

    :goto_4
    move-object v3, p1

    invoke-static {p2, v3, v4}, Lcom/baidu/carlifevehicle/ConnLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, La/a/a/a/n/g;->d(La/a/a/a/n/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n            Log.getStackTraceString(obj)\n        }"

    invoke-static {p1, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, La/a/a/a/n/g;->c:Ljava/io/BufferedWriter;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, La/a/a/a/n/g;->b:Ljava/io/File;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, La/a/a/a/n/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".log"

    invoke-static {v3, v4}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, La/a/a/a/n/g;->c:Ljava/io/BufferedWriter;

    :cond_1
    iget-object v0, p0, La/a/a/a/n/g;->c:Ljava/io/BufferedWriter;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "$this$last"

    .line 1
    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_13

    const-string v3, "$this$lastIndex"

    .line 2
    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 3
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    :goto_1
    iget-object p1, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, La/a/a/a/n/g;->h:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_12

    iget-object p1, p0, La/a/a/a/n/g;->c:Ljava/io/BufferedWriter;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    :goto_2
    iget-object p1, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    const-string v0, "CarLife_SDK"

    const/4 v3, 0x0

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const-string v4, "<this>"

    .line 5
    invoke-static {p1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".gz"

    invoke-static {v6, v7}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v7, 0x2000

    :try_start_2
    const-string v8, "$this$copyTo"

    .line 6
    invoke-static {v4, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "out"

    invoke-static {v6, v8}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v7, [B

    :goto_3
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_7

    invoke-virtual {v6, v7, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 7
    :cond_7
    :try_start_3
    invoke-static {v6, v3}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v4, v3}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v7

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v8

    :try_start_6
    invoke-static {v6, v7}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v6

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v7

    :try_start_8
    invoke-static {v4, v6}, La/d/a/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_4
    const-string v4, "Logger compress new file "

    .line 8
    invoke-static {v4, p1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object p1, p0, La/a/a/a/n/g;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_9

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_a

    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.name"

    invoke-static {v8, v9}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    const-string v10, "crash"

    invoke-static {v8, v10, v2, v9}, La/d/a/b;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    xor-int/2addr v8, v1

    if-eqz v8, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    new-instance p1, La/a/a/a/n/g$b;

    invoke-direct {p1}, La/a/a/a/n/g$b;-><init>()V

    const-string v5, "$this$sortedWith"

    .line 9
    invoke-static {v4, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "comparator"

    invoke-static {p1, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v1, :cond_d

    const-string p1, "$this$toList"

    .line 10
    invoke-static {v4, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_b

    const-string p1, "$this$toMutableList"

    .line 11
    invoke-static {v4, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_7

    .line 12
    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "java.util.Collections.singletonList(element)"

    invoke-static {p1, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 14
    :cond_c
    sget-object p1, Lc/h/b;->b:Lc/h/b;

    goto :goto_7

    :cond_d
    new-array v6, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v6, "$this$sortWith"

    .line 16
    invoke-static {v4, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v4

    if-le v5, v1, :cond_e

    invoke-static {v4, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_e
    const-string p1, "$this$asList"

    .line 17
    invoke-static {v4, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 19
    invoke-static {p1, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 21
    iget v4, p0, La/a/a/a/n/g;->i:I

    if-lt v1, v4, :cond_10

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    if-lez v1, :cond_10

    :goto_8
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Logger delete file "

    invoke-static {v5, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, v1, :cond_f

    goto :goto_9

    :cond_f
    move v2, v4

    goto :goto_8

    .line 23
    :cond_10
    :goto_9
    iput-object v3, p0, La/a/a/a/n/g;->c:Ljava/io/BufferedWriter;

    iput-object v3, p0, La/a/a/a/n/g;->d:Ljava/io/File;

    goto :goto_a

    .line 24
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_a
    return-void

    .line 25
    :cond_13
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Char sequence is empty."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method
