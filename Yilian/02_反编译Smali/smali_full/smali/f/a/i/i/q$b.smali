.class public Lf/a/i/i/q$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final b:Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

.field public c:Ljava/time/format/DateTimeFormatter;

.field public d:J

.field public e:Z

.field public final synthetic f:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lf/a/i/i/q$b;->a:I

    new-instance p1, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

    invoke-direct {p1}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;-><init>()V

    iput-object p1, p0, Lf/a/i/i/q$b;->b:Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->setCmdType(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-string v0, "NetworkHandler msg.what = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v4, p0, Lf/a/i/i/q$b;->a:I

    iput-wide v1, p0, Lf/a/i/i/q$b;->d:J

    iput-boolean v4, p0, Lf/a/i/i/q$b;->e:Z

    iget-object v0, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 1
    iput-boolean v4, v0, Lf/a/i/i/q;->S:Z

    .line 2
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WIFI"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lf/a/i/i/q$b;->e:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const-string v6, " pingTime:"

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v5, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    invoke-virtual {v5}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v9

    const/16 v10, 0xc8

    invoke-virtual {v9, v5, v10}, Lnet/easyconn/ecsdk/ECSDK;->ping(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, -0x6

    if-ne v9, v10, :cond_3

    iput-boolean v3, p0, Lf/a/i/i/q$b;->e:Z

    const-string v7, "NetworkHandler Ping has no permission"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lf/a/i/i/q$b;->d:J

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMirrorStateListener cmd Ping ip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lf/a/i/i/q$b;->d:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    iput-boolean v3, p0, Lf/a/i/i/q$b;->e:Z

    const-string v7, "NetworkHandler Ping exception = "

    invoke-static {v7}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v7}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Lf/a/i/i/q$b;->e:Z

    :goto_2
    iget-object v5, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 3
    iget-boolean v5, v5, Lf/a/i/i/q;->T:Z

    const-string v7, "NetworkHandler now not connected, return"

    if-nez v5, :cond_5

    .line 4
    iput v4, p0, Lf/a/i/i/q$b;->a:I

    iget-object p1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 5
    iput-boolean v4, p1, Lf/a/i/i/q;->S:Z

    .line 6
    iput-wide v1, p0, Lf/a/i/i/q$b;->d:J

    iput-boolean v4, p0, Lf/a/i/i/q$b;->e:Z

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v5, v8, :cond_7

    iget-object v5, p0, Lf/a/i/i/q$b;->c:Ljava/time/format/DateTimeFormatter;

    if-nez v5, :cond_6

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    invoke-static {v5}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    iput-object v5, p0, Lf/a/i/i/q$b;->c:Ljava/time/format/DateTimeFormatter;

    :cond_6
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v5

    iget-object v8, p0, Lf/a/i/i/q$b;->c:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lf/a/i/i/q$b;->b:Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;->setData([B)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkHandler sendCustomData formattedDateTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v5

    invoke-virtual {v5}, Lnet/easyconn/ecsdk/ECSDK;->getCustomProtocol()Lnet/easyconn/ecsdk/ECCustomProtocol;

    move-result-object v5

    iget-object v8, p0, Lf/a/i/i/q$b;->b:Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;

    invoke-virtual {v5, v8}, Lnet/easyconn/ecsdk/ECCustomProtocol;->sendCustomData(Lnet/easyconn/ecsdk/ECCustomProtocol$ECCustomData;)I

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v5, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    if-eqz v5, :cond_10

    .line 7
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v10

    invoke-virtual {v10}, Lnet/easyconn/ecsdk/ECSDK;->getPhoneAppNetworkingCapability()I

    move-result v10

    if-ne v10, v3, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    iput-boolean v10, v5, Lf/a/i/i/q;->S:Z

    .line 8
    iget-boolean v5, p0, Lf/a/i/i/q$b;->e:Z

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, p0, Lf/a/i/i/q$b;->d:J

    :cond_9
    iget-object v5, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 9
    iget-boolean v5, v5, Lf/a/i/i/q;->T:Z

    if-nez v5, :cond_a

    .line 10
    iput v4, p0, Lf/a/i/i/q$b;->a:I

    iget-object p1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 11
    iput-boolean v4, p1, Lf/a/i/i/q;->S:Z

    .line 12
    iput-wide v1, p0, Lf/a/i/i/q$b;->d:J

    iput-boolean v4, p0, Lf/a/i/i/q$b;->e:Z

    invoke-static {v7}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    const-wide/16 v7, 0x7d0

    iget-wide v9, p0, Lf/a/i/i/q$b;->d:J

    sub-long/2addr v7, v9

    cmp-long v5, v7, v1

    if-gez v5, :cond_b

    goto :goto_4

    :cond_b
    move-wide v1, v7

    :goto_4
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lf/a/i/i/q$b;->d:J

    const-wide/16 v7, 0xc8

    const-string v2, " timeoutCount:"

    cmp-long v5, v0, v7

    if-lez v5, :cond_c

    iget v0, p0, Lf/a/i/i/q$b;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lf/a/i/i/q$b;->a:I

    const-string v0, "IMirrorStateListener waring Ping ip:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disablePing = "

    goto :goto_5

    :cond_c
    iput v4, p0, Lf/a/i/i/q$b;->a:I

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_d

    const-string v0, "IMirrorStateListener debug Ping ip:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    invoke-virtual {v1}, Lf/a/i/i/q;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disablePing = "

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/i/i/q$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/i/i/q$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/a/i/i/q$b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_d
    iget v0, p0, Lf/a/i/i/q$b;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_e

    iput v4, p0, Lf/a/i/i/q$b;->a:I

    iget-object v0, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lf/a/i/h/c;->D()V

    :cond_e
    iget-object v0, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->M:Lf/a/i/h/c;

    if-eqz v0, :cond_f

    iget-wide v1, p0, Lf/a/i/i/q$b;->d:J

    invoke-interface {v0, v1, v2}, Lf/a/i/h/c;->g(J)V

    :cond_f
    :goto_6
    const-string v0, "NetworkHandler msg.what end = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " phoneNetwork = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lf/a/i/i/q$b;->f:Lf/a/i/i/q;

    .line 13
    iget-boolean p1, p1, Lf/a/i/i/q;->S:Z

    .line 14
    invoke-static {v0, p1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    return-void

    :cond_10
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
