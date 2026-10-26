.class public final Le/e/a/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Ljava/text/SimpleDateFormat;

.field public c:Le/e/a/f;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/e/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "PRETTY_LOGGER"

    iput-object p1, p0, Le/e/a/a$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/e/a/a;
    .locals 4

    iget-object v0, p0, Le/e/a/a$b;->a:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Le/e/a/a$b;->a:Ljava/util/Date;

    :cond_0
    iget-object v0, p0, Le/e/a/a$b;->b:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "yyyy.MM.dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Le/e/a/a$b;->b:Ljava/text/SimpleDateFormat;

    :cond_1
    iget-object v0, p0, Le/e/a/a$b;->c:Le/e/a/f;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "logger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AndroidFileLogger."

    invoke-static {v2, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Le/e/a/c$a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const v3, 0x7d000

    invoke-direct {v2, v1, v0, v3}, Le/e/a/c$a;-><init>(Landroid/os/Looper;Ljava/lang/String;I)V

    new-instance v0, Le/e/a/c;

    invoke-direct {v0, v2}, Le/e/a/c;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Le/e/a/a$b;->c:Le/e/a/f;

    :cond_2
    new-instance v0, Le/e/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/e/a/a;-><init>(Le/e/a/a$b;Le/e/a/a$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/e/a/a$b;
    .locals 0

    iput-object p1, p0, Le/e/a/a$b;->d:Ljava/lang/String;

    return-object p0
.end method
