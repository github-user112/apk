.class public final Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;
.super Ljava/lang/Object;
.source "LogHttpServer.java"


# static fields
.field public static final MAX_FILES:I = 0x14

.field public static final PORT:I = 0x46a0

.field public static final TAG:Ljava/lang/String; = "CarLifeLogXfer"

.field private static sCtx:Landroid/content/Context;

.field private static sInst:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;


# instance fields
.field private final mFiles:Ljava/util/List;

.field private volatile mRunning:Z

.field private final mSeen:Ljava/util/List;

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->loop()V

    return-void
.end method

.method private static asciiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 589
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 590
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 591
    :cond_1
    :goto_1
    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static baseUrls()[Ljava/lang/String;
    .locals 5

    .line 164
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->localIps()[Ljava/lang/String;

    move-result-object v0

    .line 165
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 166
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x46a0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 565
    if-nez p0, :cond_0

    .line 566
    const-string p0, ""

    return-object p0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 570
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 571
    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 572
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 574
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    :cond_2
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 576
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 577
    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    .line 578
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 580
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;
    .locals 2

    const-class v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sInst:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;-><init>()V

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sInst:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    .line 70
    :cond_0
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sInst:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handle(Ljava/net/Socket;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 202
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-nez v1, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    .line 208
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 210
    goto :goto_1

    .line 207
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_2
    :goto_1
    nop

    .line 214
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 215
    const-string v4, "/"

    if-lez v3, :cond_3

    .line 216
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 217
    if-le v0, v3, :cond_3

    .line 218
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 221
    :cond_3
    move-object v0, v4

    :goto_2
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 222
    if-ltz v1, :cond_4

    .line 223
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CarLifeLogXfer"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 229
    :cond_5
    const-string v1, "/f/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x194

    if-nez v1, :cond_9

    const-string v1, "/f?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 237
    :cond_6
    const-string v1, "/all.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    invoke-direct {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendZip(Ljava/net/Socket;)V

    goto :goto_6

    .line 239
    :cond_7
    const-string v1, "/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    new-array v8, v2, [B

    const/4 v9, 0x0

    const/16 v6, 0xcc

    const-string v7, "image/x-icon"

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V

    goto :goto_6

    .line 242
    :cond_8
    const-string v0, "Not Found"

    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    goto :goto_6

    .line 230
    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->parseIndex(Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->pickFile(I)Ljava/io/File;

    move-result-object v0

    .line 232
    if-nez v0, :cond_a

    .line 233
    const-string v0, "\u6ca1\u6709\u8fd9\u4e2a\u6587\u4ef6"

    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    goto :goto_4

    .line 235
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendFile(Ljava/net/Socket;Ljava/io/File;)V

    .line 237
    :goto_4
    goto :goto_6

    .line 228
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->indexHtml()[B

    move-result-object v8

    const/4 v9, 0x0

    const/16 v6, 0xc8

    const-string v7, "text/html; charset=utf-8"

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V

    .line 244
    :goto_6
    return-void
.end method

.method private static human(J)Ljava/lang/String;
    .locals 5

    .line 628
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 631
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " KB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 634
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private indexHtml()[B
    .locals 7

    .line 381
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->refreshFiles()V

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    const-string v2, "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v2, "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, "<title>CarLife \u8f66\u673a\u65e5\u5fd7</title><style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v2, "*{box-sizing:border-box}body{margin:0;padding:18px;background:#101014;color:#e8e6f0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v2, "font-family:-apple-system,\'PingFang SC\',\'Microsoft YaHei\',Arial,sans-serif}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, "h1{font-size:19px;margin:4px 0 6px}.sub{color:#9b98a8;font-size:13px;margin-bottom:16px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v2, ".all{display:block;text-align:center;background:#3b5bdb;color:#fff;text-decoration:none;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v2, "padding:14px;border-radius:10px;font-size:16px;font-weight:600;margin-bottom:18px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v2, "ul{list-style:none;padding:0;margin:0}li{background:#1b1a21;border:1px solid #2a2833;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v2, "border-radius:10px;padding:13px 15px;margin-bottom:10px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v2, "li a{color:#8fb2ff;text-decoration:none;font-size:15px;word-break:break-all}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v2, "li .meta{color:#8b8896;font-size:12px;margin-top:6px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v2, ".empty{color:#9b98a8;padding:24px;text-align:center;background:#1b1a21;border-radius:10px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v2, "</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v2, "<h1>CarLife \u8f66\u673a\u65e5\u5fd7</h1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v2, "<div class=\"sub\">\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u6587\u4ef6\uff08\u6309\u65f6\u95f4\u5012\u5e8f\uff0c\u6700\u591a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\uff09</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string v0, "<div class=\"empty\">\u6682\u65e0\u53ef\u4e0b\u8f7d\u7684\u65e5\u5fd7\u6587\u4ef6</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 408
    :cond_0
    const-string v2, "<a class=\"all\" href=\"/all.zip\">\u6253\u5305\u4e0b\u8f7d\u5168\u90e8\uff08zip\uff09</a><ul>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 410
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 411
    const-string v4, "<li><a href=\"/f/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 412
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v4, "<div class=\"meta\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->human(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " &middot; "

    .line 414
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->timeStr(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</div></li>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const-string v0, "</ul>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :goto_1
    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    goto :goto_2

    .line 422
    :catchall_0
    move-exception v0

    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 425
    :goto_2
    return-object v0

    .line 385
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    .line 64
    :cond_0
    return-void
.end method

.method public static localIps()[Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 126
    :cond_0
    :goto_0
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 128
    if-nez v2, :cond_1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 135
    :cond_3
    :goto_1
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 136
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 137
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-nez v4, :cond_4

    .line 138
    goto :goto_1

    .line 140
    :cond_4
    check-cast v3, Ljava/net/InetAddress;

    .line 141
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "127."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    goto :goto_1

    .line 148
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 149
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_7
    goto :goto_1

    .line 152
    :cond_8
    goto :goto_0

    .line 155
    :cond_9
    goto :goto_2

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localIps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarLifeLogXfer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 158
    const-string v1, "192.168.49.1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private loop()V
    .locals 5

    .line 175
    const-string v0, "http loop enter"

    const-string v1, "CarLifeLogXfer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    if-eqz v0, :cond_1

    .line 177
    nop

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 185
    nop

    .line 187
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->handle(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :goto_1
    goto :goto_2

    .line 193
    :catchall_0
    move-exception v0

    .line 195
    goto :goto_2

    .line 188
    :catchall_1
    move-exception v2

    .line 189
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 192
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 196
    :goto_2
    goto :goto_0

    .line 191
    :catchall_2
    move-exception v1

    .line 192
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 194
    goto :goto_3

    .line 193
    :catchall_3
    move-exception v0

    .line 195
    :goto_3
    throw v1

    .line 180
    :catchall_4
    move-exception v0

    .line 181
    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "http loop exit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private parseIndex(Ljava/lang/String;)I
    .locals 2

    .line 257
    :try_start_0
    const-string v0, "/f?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    return v1

    .line 260
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 262
    if-ltz v0, :cond_1

    .line 263
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 265
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 266
    :catchall_0
    move-exception p1

    .line 267
    const/4 p1, -0x1

    return p1
.end method

.method private static pctEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 600
    if-nez p0, :cond_0

    .line 601
    const-string p0, ""

    return-object p0

    .line 605
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    .line 607
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 609
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 610
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_7

    .line 611
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 612
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v4, 0x39

    if-le v2, v4, :cond_6

    :cond_1
    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_2
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x2e

    if-eq v2, v4, :cond_6

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_6

    const/16 v4, 0x5f

    if-ne v2, v4, :cond_4

    goto :goto_2

    .line 616
    :cond_4
    const/16 v4, 0x25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 614
    :cond_6
    :goto_2
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pickFile(I)Ljava/io/File;
    .locals 1

    .line 247
    monitor-enter p0

    .line 248
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    monitor-exit p0

    return-object p1

    .line 249
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 252
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_3

    .line 275
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 276
    goto :goto_0

    .line 278
    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 279
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 282
    nop

    .line 285
    :cond_3
    :goto_0
    if-gez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_4

    .line 286
    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private static reason(I)Ljava/lang/String;
    .locals 2

    .line 552
    const/16 v0, 0xc8

    const-string v1, "OK"

    if-ne p0, v0, :cond_0

    .line 553
    return-object v1

    .line 555
    :cond_0
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_1

    .line 556
    const-string p0, "No Content"

    return-object p0

    .line 558
    :cond_1
    const/16 v0, 0x194

    if-ne p0, v0, :cond_2

    .line 559
    const-string p0, "Not Found"

    return-object p0

    .line 561
    :cond_2
    return-object v1
.end method

.method private declared-synchronized refreshFiles()V
    .locals 13

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 300
    :try_start_1
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 302
    new-instance v3, Ljava/io/File;

    const-string v4, "log"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :cond_0
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v1

    .line 307
    :goto_0
    :try_start_2
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_1

    .line 309
    new-instance v3, Ljava/io/File;

    const-string v4, "log"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    :cond_1
    goto :goto_1

    .line 312
    :catchall_1
    move-exception v1

    .line 315
    :cond_2
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/BaiduCarlife"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.baidu.carlifevehicle/files/log"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v1, Ljava/io/File;

    const-string v3, "/storage/sdcard0/BaiduCarlife"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 320
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 321
    nop

    .line 323
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 325
    goto :goto_3

    .line 324
    :catchall_2
    move-exception v5

    move-object v5, v2

    .line 326
    :goto_3
    if-nez v5, :cond_3

    .line 327
    :try_start_5
    const-string v5, "CarLifeLogXfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dir missing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    goto :goto_7

    .line 330
    :cond_3
    const/4 v4, 0x0

    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 331
    aget-object v6, v5, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 333
    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_5

    .line 336
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 337
    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".gz"

    .line 338
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 339
    goto :goto_6

    .line 341
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_6

    .line 342
    goto :goto_6

    .line 344
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 345
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 346
    goto :goto_6

    .line 348
    :cond_7
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v7, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 351
    goto :goto_6

    .line 350
    :catchall_3
    move-exception v6

    goto :goto_6

    .line 334
    :cond_8
    :goto_5
    nop

    .line 330
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 319
    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 356
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 357
    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_d

    .line 358
    const/4 v4, 0x0

    :goto_9
    sub-int v5, v3, v2

    if-ge v4, v5, :cond_c

    .line 359
    iget-object v5, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 360
    iget-object v6, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 361
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_b

    .line 362
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v8, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v4, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v4, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_b
    move v4, v7

    goto :goto_9

    .line 357
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 367
    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_e

    .line 368
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 371
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    nop

    :goto_b
    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 373
    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 375
    :cond_f
    const-string v1, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshFiles count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 376
    monitor-exit p0

    return-void

    .line 293
    :catchall_4
    move-exception v0

    monitor-exit p0

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method private sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 432
    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->reason(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string p2, "Content-Type: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string p2, "Content-Length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string p2, "Connection: close\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string p2, "Cache-Control: no-store\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    if-eqz p5, :cond_0

    .line 438
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 442
    array-length p2, p4

    if-lez p2, :cond_1

    .line 443
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 445
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 446
    return-void
.end method

.method private sendFile(Ljava/net/Socket;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: attachment; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->asciiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; filename*=UTF-8\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->pctEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 458
    const-string v4, "HTTP/1.1 200 OK\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v4, "Content-Type: application/octet-stream\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v4, "Connection: close\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v4, "Cache-Control: no-store\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 467
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 468
    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 469
    const-wide/16 v2, 0x0

    .line 471
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 472
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 473
    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 476
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    goto :goto_1

    .line 477
    :catchall_0
    move-exception p2

    .line 479
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SENT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarLifeLogXfer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private sendText(Ljava/net/Socket;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "text/plain; charset=utf-8"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V

    .line 450
    return-void
.end method

.method private sendZip(Ljava/net/Socket;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 485
    monitor-enter p0

    .line 486
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 487
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 488
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const/16 v0, 0x194

    const-string v1, "\u6682\u65e0\u53ef\u4e0b\u8f7d\u7684\u65e5\u5fd7\u6587\u4ef6"

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    .line 490
    return-void

    .line 492
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "carlife-logs.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 496
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 497
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 498
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x2000000

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    .line 499
    goto :goto_3

    .line 501
    :cond_1
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 502
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 503
    new-array v6, v5, [B

    .line 505
    :goto_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_2

    .line 506
    invoke-virtual {v2, v6, v3, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 509
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    goto :goto_2

    .line 510
    :catchall_0
    move-exception v6

    .line 512
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 496
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 516
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 518
    const-string v4, "HTTP/1.1 200 OK\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v4, "Content-Type: application/zip\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v4, "Content-Length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v4, "Connection: close\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v4, "Cache-Control: no-store\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v4, "Content-Disposition: attachment; filename=\"carlife-logs.zip\"\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 527
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 528
    new-array v4, v5, [B

    .line 529
    const-wide/16 v5, 0x0

    .line 531
    :goto_4
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    .line 532
    invoke-virtual {p1, v4, v3, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 533
    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_4

    .line 536
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 538
    goto :goto_5

    .line 537
    :catchall_1
    move-exception v2

    .line 539
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 540
    const-string p1, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SENT zip files="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 543
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 545
    goto :goto_6

    .line 544
    :catchall_2
    move-exception p1

    .line 546
    nop

    .line 547
    :goto_6
    return-void

    .line 542
    :catchall_3
    move-exception p1

    .line 543
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 545
    goto :goto_7

    .line 544
    :catchall_4
    move-exception v0

    .line 546
    :goto_7
    throw p1

    .line 487
    :catchall_5
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private static timeStr(J)Ljava/lang/String;
    .locals 3

    .line 639
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 640
    :catchall_0
    move-exception v0

    .line 641
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "CarLifeLogXfer"

    const-string v1, "http server already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    .line 84
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 85
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x46a0

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 86
    iput-boolean v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer$1;

    invoke-direct {v2, p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer$1;-><init>(Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;)V

    const-string v3, "CarLifeLogHttp"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mThread:Ljava/lang/Thread;

    .line 92
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    const-string v0, "CarLifeLogXfer"

    const-string v1, "http server started, port=18080"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    .line 98
    const-string v1, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http server start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_1
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    :try_start_3
    const-string v1, "CarLifeLogXfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    .line 115
    iput-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mThread:Ljava/lang/Thread;

    .line 116
    const-string v0, "CarLifeLogXfer"

    const-string v1, "http server stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    monitor-exit p0

    return-void

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
