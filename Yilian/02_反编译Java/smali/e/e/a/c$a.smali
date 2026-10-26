.class public Le/e/a/c$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Le/e/a/c$a;->a:Ljava/lang/String;

    iput p3, p0, Le/e/a/c$a;->b:I

    return-void

    .line 1
    :cond_0
    throw v0

    :cond_1
    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Le/e/a/c$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "logs"

    aput-object v6, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v7, "%s_%s.csv"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/2addr v9, v8

    new-instance v4, Ljava/io/File;

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v5, p0, Le/e/a/c$a;->b:I

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-ltz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 2
    :cond_3
    :goto_1
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 3
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    goto :goto_3

    .line 5
    :cond_4
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-eqz v1, :cond_5

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    :goto_3
    return-void

    .line 7
    :cond_6
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
