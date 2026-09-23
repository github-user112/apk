.class public final Lcom/baidu/carlife/sdk/util/Logger;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/util/Logger$Companion;,
        Lcom/baidu/carlife/sdk/util/Logger$LogFileComparator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000c\u0018\u0000 ?2\u00020\u0001:\u0002?@B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ1\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ5\u0010\"\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u00072\u0016\u0010!\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010 \"\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\"\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010$R\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010(\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010$R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\"\u0010/\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010<\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00100\u001a\u0004\u0008=\u00102\"\u0004\u0008>\u00104\u00a8\u0006A"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/util/Logger;",
        "",
        "Ljava/io/File;",
        "dir",
        "<init>",
        "(Ljava/io/File;)V",
        "obj",
        "",
        "transform",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "tag",
        "logLevel",
        "message",
        "",
        "syncWrite",
        "Lr8/z;",
        "persist",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "text",
        "write",
        "(Ljava/lang/String;)V",
        "file",
        "doCompressAndDeleteFilesIfNeeded",
        "resumeLatestLogFile",
        "()Ljava/io/File;",
        "",
        "e",
        "uncaughtException",
        "(Ljava/lang/Throwable;)V",
        "quit",
        "()V",
        "",
        "",
        "args",
        "log",
        "(ILjava/lang/String;[Ljava/lang/Object;)V",
        "Ljava/io/File;",
        "Ljava/io/BufferedWriter;",
        "writer",
        "Ljava/io/BufferedWriter;",
        "currentFile",
        "Landroid/os/Handler;",
        "persistHandler",
        "Landroid/os/Handler;",
        "Landroid/os/HandlerThread;",
        "persistThread",
        "Landroid/os/HandlerThread;",
        "level",
        "I",
        "getLevel",
        "()I",
        "setLevel",
        "(I)V",
        "",
        "maxFileSize",
        "J",
        "getMaxFileSize",
        "()J",
        "setMaxFileSize",
        "(J)V",
        "maxFileCount",
        "getMaxFileCount",
        "setMaxFileCount",
        "Companion",
        "LogFileComparator",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

.field public static final DEFAULT_MAX_FILE_COUNT:I = 0x14

.field public static final DEFAULT_MAX_FILE_SIZE:J = 0x500000L

.field public static final MESSAGE_INIT:I = 0x1

.field public static final MESSAGE_SEND:I

.field private static default:Lcom/baidu/carlife/sdk/util/Logger;


# instance fields
.field private currentFile:Ljava/io/File;

.field private final dir:Ljava/io/File;

.field private level:I

.field private maxFileCount:I

.field private maxFileSize:J

.field private final persistHandler:Landroid/os/Handler;

.field private final persistThread:Landroid/os/HandlerThread;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;-><init>(Lg9/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->dir:Ljava/io/File;

    .line 10
    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v1, "CarLife_Logger"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->persistThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    iput v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->level:I

    .line 22
    .line 23
    const-wide/32 v1, 0x500000

    .line 24
    .line 25
    .line 26
    iput-wide v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileSize:J

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    iput v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileCount:I

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/baidu/carlife/sdk/util/a;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {v1, v2, p0}, Lcom/baidu/carlife/sdk/util/a;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->persistHandler:Landroid/os/Handler;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/baidu/carlife/sdk/util/Logger;Landroid/os/Message;)Z
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->write(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/util/Logger;->resumeLatestLogFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 33
    .line 34
    new-instance p1, Ljava/io/BufferedWriter;

    .line 35
    .line 36
    new-instance v0, Ljava/io/FileWriter;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 39
    .line 40
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 50
    .line 51
    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/util/Logger;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->_init_$lambda$0(Lcom/baidu/carlife/sdk/util/Logger;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getDefault$cp()Lcom/baidu/carlife/sdk/util/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->default:Lcom/baidu/carlife/sdk/util/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setDefault$cp(Lcom/baidu/carlife/sdk/util/Logger;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/baidu/carlife/sdk/util/Logger;->default:Lcom/baidu/carlife/sdk/util/Logger;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$transform(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->transform(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final doCompressAndDeleteFilesIfNeeded(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "CarLife_SDK"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/baidu/carlife/sdk/util/IOUtilsKt;->gzip(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Logger compress new file "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->dir:Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    array-length v2, p1

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-ge v4, v2, :cond_2

    .line 42
    .line 43
    aget-object v5, p1, v4

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "it.name"

    .line 50
    .line 51
    invoke-static {v6, v7}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v7, "crash"

    .line 55
    .line 56
    invoke-static {v6, v7}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance p1, Lcom/baidu/carlife/sdk/util/Logger$LogFileComparator;

    .line 69
    .line 70
    invoke-direct {p1}, Lcom/baidu/carlife/sdk/util/Logger$LogFileComparator;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p1}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget v2, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileCount:I

    .line 82
    .line 83
    if-lt v1, v2, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    int-to-double v1, v1

    .line 90
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    mul-double v1, v1, v4

    .line 96
    .line 97
    double-to-int v1, v1

    .line 98
    :goto_1
    if-ge v3, v1, :cond_3

    .line 99
    .line 100
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/io/File;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 107
    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v4, "Logger delete file "

    .line 112
    .line 113
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    return-void
.end method

.method public static final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final getLogLevel()I
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->getLogLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final persist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/baidu/carlife/sdk/util/DatesKt;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x20

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 p2, 0x2f

    .line 51
    .line 52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, ": "

    .line 59
    .line 60
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p4, :cond_0

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->write(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/baidu/carlife/sdk/util/Logger;->persistHandler:Landroid/os/Handler;

    .line 77
    .line 78
    const/4 p3, 0x0

    .line 79
    invoke-static {p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static synthetic persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/carlife/sdk/util/Logger;->persist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final resumeLatestLogFile()Ljava/io/File;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->dir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, v0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "fileName"

    .line 25
    .line 26
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v6, "crash"

    .line 30
    .line 31
    invoke-static {v5, v6}, Lxb/p;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    const-string v6, ".log"

    .line 38
    .line 39
    invoke-static {v5, v6}, Lxb/p;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-static {v1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/io/File;

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    return-object v0
.end method

.method public static final setLogLevel(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->setLogLevel(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final transform(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Exception;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "{\n            Log.getSta\u2026raceString(obj)\n        }"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public static final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final declared-synchronized write(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "\u5199\u65e5\u5fd7\u5931\u8d25: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/baidu/carlife/sdk/util/Logger;->dir:Ljava/io/File;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Lcom/baidu/carlife/sdk/util/DatesKt;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ".log"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 50
    .line 51
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_4

    .line 60
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 61
    .line 62
    new-instance v2, Ljava/io/FileWriter;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 65
    .line 66
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lxb/i;->R(Ljava/lang/CharSequence;)C

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/16 v2, 0xa

    .line 90
    .line 91
    if-eq p1, v2, :cond_2

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    :try_start_2
    const-string v1, "Logger"

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iget-wide v2, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    cmp-long p1, v0, v2

    .line 138
    .line 139
    if-lez p1, :cond_5

    .line 140
    .line 141
    :try_start_3
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 142
    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    :catch_1
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;

    .line 149
    .line 150
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->doCompressAndDeleteFilesIfNeeded(Ljava/io/File;)V

    .line 154
    .line 155
    .line 156
    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 158
    .line 159
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->currentFile:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    .line 161
    :cond_5
    monitor-exit p0

    .line 162
    return-void

    .line 163
    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    throw p1
.end method

.method public static final varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxFileCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->level:I

    .line 12
    .line 13
    if-gt v0, p1, :cond_6

    .line 14
    .line 15
    array-length v0, p3

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    aget-object p3, p3, v0

    .line 21
    .line 22
    invoke-direct {p0, p3}, Lcom/baidu/carlife/sdk/util/Logger;->transform(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    :goto_0
    move-object v3, p3

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v4, Lcom/baidu/carlife/sdk/util/Logger$log$message$1;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Lcom/baidu/carlife/sdk/util/Logger$log$message$1;-><init>(Lcom/baidu/carlife/sdk/util/Logger;)V

    .line 31
    .line 32
    .line 33
    const/16 v5, 0x1e

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    move-object v0, p3

    .line 40
    invoke-static/range {v0 .. v5}, Ls8/l;->d0([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    const/4 p3, 0x2

    .line 46
    if-eq p1, p3, :cond_5

    .line 47
    .line 48
    const/4 p3, 0x3

    .line 49
    if-eq p1, p3, :cond_4

    .line 50
    .line 51
    const/4 p3, 0x5

    .line 52
    if-eq p1, p3, :cond_3

    .line 53
    .line 54
    const/4 p3, 0x6

    .line 55
    if-eq p1, p3, :cond_2

    .line 56
    .line 57
    const/4 p3, 0x7

    .line 58
    if-eq p1, p3, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-static {p2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v2, "E"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v1, p2

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/baidu/carlife/sdk/util/Logger;->persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    move-object v1, p2

    .line 77
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const/16 v5, 0x8

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const-string v2, "E"

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/baidu/carlife/sdk/util/Logger;->persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    move-object v1, p2

    .line 92
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/16 v5, 0x8

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const-string v2, "W"

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    move-object v0, p0

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/baidu/carlife/sdk/util/Logger;->persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    move-object v1, p2

    .line 107
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    const/16 v5, 0x8

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    const-string v2, "D"

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    move-object v0, p0

    .line 117
    invoke-static/range {v0 .. v6}, Lcom/baidu/carlife/sdk/util/Logger;->persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    move-object v1, p2

    .line 122
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const/16 v5, 0x8

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    const-string v2, "V"

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    move-object v0, p0

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/baidu/carlife/sdk/util/Logger;->persist$default(Lcom/baidu/carlife/sdk/util/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_2
    return-void
.end method

.method public final declared-synchronized quit()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->persistThread:Landroid/os/HandlerThread;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/Logger;->writer:Ljava/io/BufferedWriter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxFileCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/baidu/carlife/sdk/util/Logger;->maxFileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-string v0, "crash_"

    .line 2
    .line 3
    const-string v1, "e"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/baidu/carlife/sdk/util/Logger;->dir:Ljava/io/File;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/baidu/carlife/sdk/util/DatesKt;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ".log"

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/io/FileWriter;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :catchall_2
    move-exception v1

    .line 62
    :try_start_4
    invoke-static {v0, p1}, Li9/a;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "uncaughtException exception: "

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "CarLife_SDK"

    .line 85
    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method
