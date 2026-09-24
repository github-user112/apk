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

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1004
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1005
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1008
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1006
    :cond_1
    :goto_1
    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1003
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static baseUrls()[Ljava/lang/String;
    .locals 5

    .line 314
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->localIps()[Ljava/lang/String;

    move-result-object v0

    .line 315
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 316
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 317
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

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-object v1
.end method

.method private static canonicalKey(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 895
    const-string v0, ""

    if-nez p0, :cond_0

    .line 896
    return-object v0

    .line 899
    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x5c

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 900
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 901
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 904
    :cond_1
    goto :goto_0

    .line 903
    :catchall_0
    move-exception v3

    .line 907
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 910
    goto :goto_1

    .line 908
    :catchall_1
    move-exception v3

    .line 909
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 911
    :goto_1
    if-nez p0, :cond_2

    .line 912
    return-object v0

    .line 914
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 915
    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/storage/emulated/0/"

    if-eqz v1, :cond_3

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 917
    :cond_3
    const-string v0, "/mnt/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 919
    :cond_4
    const-string v0, "/storage/sdcard0/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 922
    :cond_5
    :goto_2
    return-object p0
.end method

.method private static dateKey(Ljava/io/File;)J
    .locals 17

    .line 621
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 622
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xf

    const-wide/16 v8, 0xa

    const/16 v12, 0x8

    const/16 v13, 0x30

    if-gt v3, v4, :cond_e

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 624
    if-lt v4, v13, :cond_d

    const/16 v14, 0x39

    if-le v4, v14, :cond_0

    .line 625
    goto/16 :goto_a

    .line 627
    :cond_0
    nop

    .line 628
    const/4 v4, 0x1

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v12, :cond_3

    .line 629
    add-int v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 630
    if-lt v6, v13, :cond_2

    if-le v6, v14, :cond_1

    goto :goto_2

    .line 628
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    :cond_2
    :goto_2
    nop

    .line 632
    const/4 v1, 0x0

    goto :goto_3

    .line 628
    :cond_3
    const/4 v1, 0x1

    .line 635
    :goto_3
    if-nez v1, :cond_4

    .line 636
    goto/16 :goto_a

    .line 638
    :cond_4
    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v13

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v6, v2, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v13

    add-int/2addr v1, v6

    .line 639
    add-int/lit8 v6, v2, 0x6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v13

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v10, v2, 0x7

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v13

    add-int/2addr v6, v10

    .line 640
    if-lt v1, v4, :cond_d

    const/16 v10, 0xc

    if-gt v1, v10, :cond_d

    if-lt v6, v4, :cond_d

    const/16 v1, 0x1f

    if-le v6, v1, :cond_5

    .line 641
    goto/16 :goto_a

    .line 643
    :cond_5
    nop

    .line 644
    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    :goto_4
    if-ge v1, v12, :cond_6

    .line 645
    mul-long v10, v10, v8

    add-int v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v13

    int-to-long v4, v6

    add-long/2addr v10, v4

    .line 644
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_4

    .line 648
    :cond_6
    add-int/lit8 v1, v2, 0xf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_c

    .line 649
    nop

    .line 650
    const/16 v1, 0x9

    :goto_5
    if-ge v1, v7, :cond_9

    .line 651
    add-int v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 652
    if-lt v3, v13, :cond_8

    if-le v3, v14, :cond_7

    goto :goto_6

    .line 650
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 653
    :cond_8
    :goto_6
    nop

    .line 654
    const/4 v1, 0x0

    goto :goto_7

    .line 650
    :cond_9
    const/4 v1, 0x1

    .line 657
    :goto_7
    if-eqz v1, :cond_b

    .line 658
    nop

    .line 659
    const/16 v6, 0x9

    const-wide/16 v15, 0x0

    :goto_8
    if-ge v6, v7, :cond_a

    .line 660
    mul-long v15, v15, v8

    add-int v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v13

    int-to-long v3, v1

    add-long/2addr v15, v3

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 662
    :cond_a
    const-wide/32 v0, 0xf4240

    mul-long v10, v10, v0

    add-long/2addr v10, v15

    goto :goto_9

    .line 657
    :cond_b
    const-wide/32 v0, 0xf4240

    goto :goto_9

    .line 648
    :cond_c
    const-wide/32 v0, 0xf4240

    .line 665
    :goto_9
    mul-long v10, v10, v0

    const-wide/32 v0, 0xf423f

    add-long/2addr v10, v0

    return-wide v10

    .line 622
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 668
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->timeFull(J)Ljava/lang/String;

    move-result-object v0

    .line 669
    nop

    .line 670
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_b
    if-ge v1, v12, :cond_f

    .line 671
    mul-long v2, v2, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v13

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 673
    :cond_f
    nop

    .line 674
    const/16 v6, 0x9

    const-wide/16 v10, 0x0

    :goto_c
    if-ge v6, v7, :cond_10

    .line 675
    mul-long v10, v10, v8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v13

    int-to-long v4, v1

    add-long/2addr v10, v4

    .line 674
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 677
    :cond_10
    invoke-static {v2, v3}, Ljava/lang/Long;->signum(J)I

    const-wide/32 v0, 0xf4240

    mul-long v2, v2, v0

    add-long/2addr v2, v10

    return-wide v2
.end method

.method private static datePrefix(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->timeFull(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 980
    if-nez p0, :cond_0

    .line 981
    const-string p0, ""

    return-object p0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 984
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 985
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 986
    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 987
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 988
    :cond_1
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 989
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 990
    :cond_2
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 991
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 992
    :cond_3
    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    .line 993
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 995
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 984
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static firstIpv4(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .locals 2

    .line 185
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p0

    .line 186
    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 188
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-nez v1, :cond_0

    .line 189
    goto :goto_0

    .line 191
    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    .line 192
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->usable(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 197
    return-object v0

    .line 199
    :cond_2
    goto :goto_0

    .line 201
    :cond_3
    goto :goto_1

    .line 200
    :catchall_0
    move-exception p0

    .line 202
    :goto_1
    const/4 p0, 0x0

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

    .line 429
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 430
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 432
    if-nez v1, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    .line 436
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 437
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 438
    goto :goto_1

    .line 435
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_2
    :goto_1
    nop

    .line 442
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 443
    const-string v4, "/"

    if-lez v3, :cond_3

    .line 444
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 445
    if-le v0, v3, :cond_3

    .line 446
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 449
    :cond_3
    move-object v0, v4

    :goto_2
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 450
    if-ltz v1, :cond_4

    .line 451
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 453
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

    .line 455
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 457
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

    .line 465
    :cond_6
    const-string v1, "/all.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 466
    invoke-direct {p0, p1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendZip(Ljava/net/Socket;)V

    goto :goto_6

    .line 467
    :cond_7
    const-string v1, "/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 468
    new-array v8, v2, [B

    const/4 v9, 0x0

    const/16 v6, 0xcc

    const-string v7, "image/x-icon"

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V

    goto :goto_6

    .line 470
    :cond_8
    const-string v0, "Not Found"

    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    goto :goto_6

    .line 458
    :cond_9
    :goto_3
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->parseIndex(Ljava/lang/String;)I

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->pickFile(I)Ljava/io/File;

    move-result-object v0

    .line 460
    if-nez v0, :cond_a

    .line 461
    const-string v0, "\u6ca1\u6709\u8fd9\u4e2a\u6587\u4ef6"

    invoke-direct {p0, p1, v3, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    goto :goto_4

    .line 463
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendFile(Ljava/net/Socket;Ljava/io/File;)V

    .line 465
    :goto_4
    goto :goto_6

    .line 456
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

    .line 472
    :goto_6
    return-void
.end method

.method private static human(J)Ljava/lang/String;
    .locals 5

    .line 1043
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 1044
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

    .line 1046
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    .line 1047
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

    .line 1049
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

    .line 697
    invoke-direct {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->refreshFiles()V

    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 704
    const-string v2, "<!DOCTYPE html><html lang=\"zh-CN\"><head><meta charset=\"UTF-8\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v2, "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v2, "<title>CarLife \u8f66\u673a\u65e5\u5fd7</title><style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v2, "*{box-sizing:border-box}body{margin:0;padding:18px;background:#101014;color:#e8e6f0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v2, "font-family:-apple-system,\'PingFang SC\',\'Microsoft YaHei\',Arial,sans-serif}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v2, "h1{font-size:19px;margin:4px 0 6px}.sub{color:#9b98a8;font-size:13px;margin-bottom:16px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v2, ".all{display:block;text-align:center;background:#3b5bdb;color:#fff;text-decoration:none;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v2, "padding:14px;border-radius:10px;font-size:16px;font-weight:600;margin-bottom:18px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v2, "ul{list-style:none;padding:0;margin:0}li{background:#1b1a21;border:1px solid #2a2833;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string v2, "border-radius:10px;padding:13px 15px;margin-bottom:10px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v2, "li a{color:#8fb2ff;text-decoration:none;font-size:15px;word-break:break-all}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v2, "li .meta{color:#8b8896;font-size:12px;margin-top:6px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v2, ".empty{color:#9b98a8;padding:24px;text-align:center;background:#1b1a21;border-radius:10px}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v2, "</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v2, "<h1>CarLife \u8f66\u673a\u65e5\u5fd7</h1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v2, "<div class=\"sub\">\u5171 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u6587\u4ef6\uff08\u6309\u65e5\u671f\u5012\u5e8f\uff0c\u6700\u591a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\uff09</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    const-string v0, "<div class=\"empty\">\u6682\u65e0\u53ef\u4e0b\u8f7d\u7684\u65e5\u5fd7\u6587\u4ef6</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 724
    :cond_0
    const-string v2, "<a class=\"all\" href=\"/all.zip\">\u6253\u5305\u4e0b\u8f7d\u5168\u90e8\uff08zip\uff09</a><ul>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 726
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 727
    const-string v4, "<li><a href=\"/f/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 728
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
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

    .line 730
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

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
    :cond_1
    const-string v0, "</ul>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :goto_1
    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    goto :goto_2

    .line 738
    :catchall_0
    move-exception v0

    .line 739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 741
    :goto_2
    return-object v0

    .line 701
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

.method private static isUnreachableIf(Ljava/lang/String;)Z
    .locals 2

    .line 134
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    const-string v1, "ccmni"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rmnet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "pdp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    const-string v1, "ppp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "clat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tun"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    const-string v1, "cap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ip6tnl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    const-string v1, "dummy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ifb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gre"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    const-string v1, "ip6_vti"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ip_vti"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 137
    :goto_1
    return v0
.end method

.method private static joinIps([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 392
    if-lez v1, :cond_0

    .line 393
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static kindOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->prioOf(Ljava/lang/String;)I

    move-result p0

    .line 167
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 168
    const-string p0, "\u76f4\u8fde"

    return-object p0

    .line 170
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 171
    const-string p0, "WiFi"

    return-object p0

    .line 173
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 174
    const-string p0, "\u70ed\u70b9"

    return-object p0

    .line 176
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 177
    const-string p0, "\u6709\u7ebf"

    return-object p0

    .line 179
    :cond_3
    const-string p0, "\u5176\u4ed6"

    return-object p0
.end method

.method public static localIps()[Ljava/lang/String;
    .locals 12

    .line 230
    const-string v0, "if "

    const-string v1, "CarLifeLogXfer"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 234
    const/4 v6, 0x0

    .line 235
    :goto_0
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_9

    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0x40

    if-ge v6, v8, :cond_9

    .line 238
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 241
    nop

    .line 242
    if-nez v6, :cond_0

    .line 243
    goto/16 :goto_5

    .line 245
    :cond_0
    nop

    .line 247
    :try_start_2
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    goto :goto_1

    .line 248
    :catchall_0
    move-exception v8

    const/4 v8, 0x0

    .line 250
    :goto_1
    :try_start_3
    invoke-static {v8}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->isUnreachableIf(Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v9, :cond_1

    .line 251
    goto/16 :goto_5

    .line 254
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_2

    goto :goto_4

    .line 260
    :cond_2
    nop

    .line 261
    :try_start_5
    invoke-static {v8}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->prioOf(Ljava/lang/String;)I

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 263
    :try_start_6
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    .line 264
    :cond_3
    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 265
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    .line 266
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-nez v11, :cond_4

    .line 267
    goto :goto_2

    .line 269
    :cond_4
    check-cast v10, Ljava/net/InetAddress;

    .line 270
    invoke-virtual {v10}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 271
    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 274
    invoke-static {v10}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->usable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 275
    goto :goto_2

    .line 277
    :cond_6
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 279
    goto :goto_2

    .line 282
    :cond_7
    goto :goto_3

    .line 280
    :catchall_1
    move-exception v6

    .line 281
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " addrs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_3
    goto :goto_5

    .line 255
    :cond_8
    :goto_4
    goto :goto_5

    .line 257
    :catchall_2
    move-exception v6

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 259
    nop

    .line 235
    :goto_5
    move v6, v7

    goto/16 :goto_0

    .line 239
    :catchall_3
    move-exception v0

    .line 240
    nop

    .line 286
    :cond_9
    goto :goto_6

    .line 284
    :catchall_4
    move-exception v0

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localIps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    const/4 v5, 0x0

    :goto_7
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_c

    .line 291
    const/4 v7, 0x0

    :goto_8
    sub-int v8, v6, v5

    if-ge v7, v8, :cond_b

    .line 292
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 293
    add-int/lit8 v9, v7, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 294
    if-le v8, v10, :cond_a

    .line 295
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 296
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-interface {v2, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 299
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v7, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-interface {v3, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_a
    move v7, v9

    goto :goto_8

    .line 290
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 308
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localIps -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->joinIps([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v0
.end method

.method private loop()V
    .locals 5

    .line 403
    const-string v0, "http loop enter"

    const-string v1, "CarLifeLogXfer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    if-eqz v0, :cond_1

    .line 405
    nop

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 413
    nop

    .line 415
    :try_start_1
    invoke-direct {p0, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->handle(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :goto_1
    goto :goto_2

    .line 421
    :catchall_0
    move-exception v0

    .line 423
    goto :goto_2

    .line 416
    :catchall_1
    move-exception v2

    .line 417
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

    .line 420
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 424
    :goto_2
    goto :goto_0

    .line 419
    :catchall_2
    move-exception v1

    .line 420
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 422
    goto :goto_3

    .line 421
    :catchall_3
    move-exception v0

    .line 423
    :goto_3
    throw v1

    .line 408
    :catchall_4
    move-exception v0

    .line 409
    iget-boolean v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mRunning:Z

    if-eqz v2, :cond_0

    .line 410
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

    .line 412
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    const-string v0, "http loop exit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public static netSummary()Ljava/lang/String;
    .locals 9

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 333
    const/4 v3, 0x0

    .line 334
    :goto_0
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x40

    if-ge v3, v5, :cond_7

    .line 337
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 340
    nop

    .line 341
    if-nez v3, :cond_0

    .line 342
    goto :goto_4

    .line 344
    :cond_0
    nop

    .line 346
    :try_start_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    goto :goto_1

    .line 347
    :catchall_0
    move-exception v5

    const/4 v5, 0x0

    .line 349
    :goto_1
    :try_start_3
    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->isUnreachableIf(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 351
    :try_start_4
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_1

    goto :goto_3

    .line 356
    :cond_1
    nop

    .line 357
    :try_start_5
    invoke-static {v3}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->firstIpv4(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v3

    .line 358
    if-nez v3, :cond_2

    .line 359
    goto :goto_4

    .line 361
    :cond_2
    const/16 v7, 0x3d

    const/16 v8, 0x20

    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 363
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 367
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 368
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_5
    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->kindOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 372
    :goto_2
    goto :goto_4

    .line 352
    :cond_6
    :goto_3
    goto :goto_4

    .line 354
    :catchall_1
    move-exception v3

    .line 355
    nop

    .line 334
    :goto_4
    move v3, v4

    goto :goto_0

    .line 338
    :catchall_2
    move-exception v2

    .line 339
    nop

    .line 375
    :cond_7
    goto :goto_5

    .line 373
    :catchall_3
    move-exception v2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netSummary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarLifeLogXfer"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 379
    const-string v3, "\u53ef\u7528\u7f51\u5361: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 381
    :cond_8
    const-string v0, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528\u7f51\u5361\uff08\u8bf7\u5148\u8fde\u63a5 WiFi \u6216\u5f00\u542f\u70ed\u70b9\uff09"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 384
    const-string v0, "\n\u5df2\u5ffd\u7565: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u8702\u7a9d\u5730\u5740\u5bf9\u7aef\u8bbf\u95ee\u4e0d\u5230\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseIndex(Ljava/lang/String;)I
    .locals 2

    .line 485
    :try_start_0
    const-string v0, "/f?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 486
    return v1

    .line 488
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 489
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 490
    if-ltz v0, :cond_1

    .line 491
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 493
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 494
    :catchall_0
    move-exception p1

    .line 495
    const/4 p1, -0x1

    return p1
.end method

.method private static pctEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1015
    if-nez p0, :cond_0

    .line 1016
    const-string p0, ""

    return-object p0

    .line 1020
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v0

    .line 1022
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1024
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1025
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_7

    .line 1026
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1027
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

    .line 1031
    :cond_4
    const/16 v4, 0x25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1032
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    .line 1034
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1029
    :cond_6
    :goto_2
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1039
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pickFile(I)Ljava/io/File;
    .locals 1

    .line 475
    monitor-enter p0

    .line 476
    if-ltz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    monitor-exit p0

    return-object p1

    .line 477
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 480
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static prioOf(Ljava/lang/String;)I
    .locals 2

    .line 146
    const/4 v0, 0x5

    if-nez p0, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    const-string v1, "p2p"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 p0, 0x1

    return p0

    .line 152
    :cond_1
    const-string v1, "wlan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 155
    :cond_2
    const-string v1, "ap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "softap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "swlan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    const-string v1, "eth"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rndis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "usb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 161
    :cond_4
    return v0

    .line 159
    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    .line 156
    :cond_6
    :goto_1
    const/4 p0, 0x3

    return p0

    .line 153
    :cond_7
    :goto_2
    const/4 p0, 0x2

    return p0
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_3

    .line 503
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 504
    goto :goto_0

    .line 506
    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 507
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 510
    nop

    .line 513
    :cond_3
    :goto_0
    if-gez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_4

    .line 514
    const/4 p0, 0x0

    return-object p0

    .line 516
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

    .line 967
    const/16 v0, 0xc8

    const-string v1, "OK"

    if-ne p0, v0, :cond_0

    .line 968
    return-object v1

    .line 970
    :cond_0
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_1

    .line 971
    const-string p0, "No Content"

    return-object p0

    .line 973
    :cond_1
    const/16 v0, 0x194

    if-ne p0, v0, :cond_2

    .line 974
    const-string p0, "Not Found"

    return-object p0

    .line 976
    :cond_2
    return-object v1
.end method

.method private declared-synchronized refreshFiles()V
    .locals 13

    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 528
    :try_start_1
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 529
    if-eqz v1, :cond_0

    .line 530
    new-instance v3, Ljava/io/File;

    const-string v4, "log"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_0
    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    .line 535
    :goto_0
    :try_start_2
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_1

    .line 537
    new-instance v3, Ljava/io/File;

    const-string v4, "log"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v3, Ljava/io/File;

    const-string v4, "log/session"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    :cond_1
    goto :goto_1

    .line 541
    :catchall_1
    move-exception v1

    .line 544
    :cond_2
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/BaiduCarlife"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.baidu.carlifevehicle/files/log"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v1, Ljava/io/File;

    const-string v3, "/storage/sdcard0/BaiduCarlife"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 549
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 550
    nop

    .line 552
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 554
    goto :goto_3

    .line 553
    :catchall_2
    move-exception v5

    move-object v5, v2

    .line 555
    :goto_3
    if-nez v5, :cond_3

    .line 556
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

    .line 557
    goto :goto_7

    .line 559
    :cond_3
    const/4 v4, 0x0

    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_9

    .line 560
    aget-object v6, v5, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 562
    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_5

    .line 565
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 566
    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".gz"

    .line 567
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 568
    goto :goto_6

    .line 570
    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_6

    .line 571
    goto :goto_6

    .line 573
    :cond_6
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->canonicalKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 574
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 575
    goto :goto_6

    .line 577
    :cond_7
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mSeen:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v7, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 580
    goto :goto_6

    .line 579
    :catchall_3
    move-exception v6

    goto :goto_6

    .line 563
    :cond_8
    :goto_5
    nop

    .line 559
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 548
    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 589
    :cond_a
    :try_start_7
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 590
    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_d

    .line 591
    const/4 v4, 0x0

    :goto_9
    sub-int v5, v3, v2

    if-ge v4, v5, :cond_c

    .line 592
    iget-object v5, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 593
    iget-object v6, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 594
    invoke-static {v5}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->dateKey(Ljava/io/File;)J

    move-result-wide v8

    .line 595
    invoke-static {v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->dateKey(Ljava/io/File;)J

    move-result-wide v10

    .line 596
    cmp-long v12, v8, v10

    if-gez v12, :cond_b

    .line 597
    iget-object v8, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v8, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v4, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v4, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_b
    move v4, v7

    goto :goto_9

    .line 590
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 602
    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_e

    .line 603
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 606
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    nop

    :goto_b
    iget-object v2, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 608
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

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 610
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

    .line 611
    monitor-exit p0

    return-void

    .line 521
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

    .line 746
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 748
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

    .line 749
    const-string p2, "Content-Type: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string p2, "Content-Length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string p2, "Connection: close\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string p2, "Cache-Control: no-store\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    if-eqz p5, :cond_0

    .line 754
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 758
    array-length p2, p4

    if-lez p2, :cond_1

    .line 759
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 761
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 762
    return-void
.end method

.method private sendFile(Ljava/net/Socket;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 769
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 770
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

    .line 771
    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->pctEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 777
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 779
    const-string v6, "HTTP/1.1 200 OK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v6, "Content-Type: application/octet-stream\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v6, "Connection: close\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v6, "Cache-Control: no-store\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 788
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 789
    const/16 p2, 0x2000

    new-array v2, p2, [B

    .line 790
    const-wide/16 v5, 0x0

    .line 792
    :goto_0
    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    .line 793
    int-to-long v7, p2

    sub-long v9, v3, v5

    :try_start_0
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 794
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .line 795
    if-gtz v8, :cond_0

    .line 796
    goto :goto_2

    .line 798
    :cond_0
    invoke-virtual {p1, v2, v7, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    int-to-long v7, v8

    add-long/2addr v5, v7

    .line 800
    goto :goto_0

    .line 802
    :catchall_0
    move-exception p1

    .line 803
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 805
    goto :goto_1

    .line 804
    :catchall_1
    move-exception p2

    .line 806
    :goto_1
    throw p1

    .line 803
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 805
    goto :goto_3

    .line 804
    :catchall_2
    move-exception p2

    .line 806
    nop

    .line 807
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 808
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

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarLifeLogXfer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method private sendText(Ljava/net/Socket;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "text/plain; charset=utf-8"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendBytes(Ljava/net/Socket;ILjava/lang/String;[BLjava/lang/String;)V

    .line 766
    return-void
.end method

.method private sendZip(Ljava/net/Socket;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 813
    monitor-enter p0

    .line 814
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 815
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 816
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    const/16 v0, 0x194

    const-string v1, "\u6682\u65e0\u53ef\u4e0b\u8f7d\u7684\u65e5\u5fd7\u6587\u4ef6"

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sendText(Ljava/net/Socket;ILjava/lang/String;)V

    .line 818
    return-void

    .line 820
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->sCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "carlife-logs.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 822
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 824
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 826
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 827
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x2000000

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    .line 828
    goto :goto_3

    .line 830
    :cond_1
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->datePrefix(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->uniqueNamePref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 831
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 832
    new-array v7, v5, [B

    .line 834
    :goto_1
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    .line 835
    invoke-virtual {v2, v7, v4, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 838
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    goto :goto_2

    .line 839
    :catchall_0
    move-exception v7

    .line 841
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 825
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 843
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 845
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 847
    const-string v3, "HTTP/1.1 200 OK\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v3, "Content-Type: application/zip\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v3, "Connection: close\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v3, "Cache-Control: no-store\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v3, "Content-Disposition: attachment; filename=\"carlife-logs.zip\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 856
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 857
    new-array v3, v5, [B

    .line 858
    const-wide/16 v5, 0x0

    .line 860
    :goto_4
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    .line 861
    invoke-virtual {p1, v3, v4, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 862
    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_4

    .line 865
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 867
    goto :goto_5

    .line 866
    :catchall_1
    move-exception v2

    .line 868
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 869
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

    .line 872
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 874
    goto :goto_6

    .line 873
    :catchall_2
    move-exception p1

    .line 875
    nop

    .line 876
    :goto_6
    return-void

    .line 871
    :catchall_3
    move-exception p1

    .line 872
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 874
    goto :goto_7

    .line 873
    :catchall_4
    move-exception v0

    .line 875
    :goto_7
    throw p1

    .line 815
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

.method public static summary()Ljava/lang/String;
    .locals 8

    .line 1074
    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->get()Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    move-result-object v0

    .line 1075
    invoke-direct {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->refreshFiles()V

    .line 1076
    nop

    .line 1077
    nop

    .line 1078
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1079
    iget-object v5, v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1080
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 1081
    if-nez v3, :cond_0

    .line 1082
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1083
    if-eqz v5, :cond_0

    .line 1084
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1078
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v4, v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1089
    const-string v0, "\u672a\u627e\u5230\u65e5\u5fd7\u6587\u4ef6\uff08\u76ee\u5f55\u53ef\u80fd\u8fd8\u6ca1\u751f\u6210\uff09"

    return-object v0

    .line 1091
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u5171 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e2a\u6587\u4ef6, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->human(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1092
    :catchall_0
    move-exception v0

    .line 1093
    const-string v0, ""

    return-object v0
.end method

.method private static timeFull(J)Ljava/lang/String;
    .locals 3

    .line 688
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 689
    :catchall_0
    move-exception p0

    .line 690
    const-string p0, "00000000-000000"

    return-object p0
.end method

.method private static timeStr(J)Ljava/lang/String;
    .locals 3

    .line 1054
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

    .line 1055
    :catchall_0
    move-exception v0

    .line 1056
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static uniqueName(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 936
    nop

    .line 937
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 938
    :cond_0
    const-string p1, "log"

    .line 940
    :cond_1
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->uniqueNamePref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static uniqueNamePref(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    return-object v0

    .line 949
    :cond_0
    nop

    .line 950
    nop

    .line 951
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 952
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 953
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 956
    :cond_1
    const-string v0, ""

    :goto_0
    const/4 v1, 0x2

    :goto_1
    const v2, 0x186a0

    const-string v3, "_"

    if-ge v1, v2, :cond_3

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 959
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    return-object v2

    .line 956
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 963
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static usable(Ljava/lang/String;)Z
    .locals 2

    .line 207
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    const-string v1, "127."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    const-string v1, "169.254."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 215
    return v0

    .line 217
    :cond_2
    const/4 p0, 0x1

    return p0

    .line 211
    :cond_3
    :goto_0
    return v0

    .line 208
    :cond_4
    :goto_1
    return v0
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
