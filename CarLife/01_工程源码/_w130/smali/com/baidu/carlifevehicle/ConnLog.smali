.class public Lcom/baidu/carlifevehicle/ConnLog;
.super Ljava/lang/Object;
.source "ConnLog.java"


# static fields
.field public static sBuf:Ljava/lang/StringBuilder;

.field public static sDots:I

.field public static sDrops:[Ljava/lang/String;

.field public static sHandler:Landroid/os/Handler;

.field public static sKeys:[Ljava/lang/String;

.field public static sLineCount:I

.field public static sLoaded:Z

.field public static sPendingLen:I

.field public static sRes:Landroid/content/res/Resources;

.field public static sScrollTask:Lcom/baidu/carlifevehicle/ConnLog$Scroll;

.field public static sStopKeys:[Ljava/lang/String;

.field public static sStopVals:[Ljava/lang/String;

.field public static sTickTask:Lcom/baidu/carlifevehicle/ConnLog$Tick;

.field public static sTv:Landroid/widget/TextView;

.field public static sUiTask:Lcom/baidu/carlifevehicle/ConnLog$UiTask;

.field public static sVals:[Ljava/lang/String;

.field public static sWaitKeys:[Ljava/lang/String;

.field public static sWaitText:Ljava/lang/String;

.field public static sWaitVals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sBuf:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized append(Ljava/lang/String;)V
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    if-nez p0, :cond_0

    return-void

    :cond_0
    # 1.30: 落盘镜像到 SessionLog（每份 30KB 滚动）
    invoke-static {p0}, Lcom/baidu/carlifevehicle/logxfer/SessionLog;->append(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->removePendingLocked()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->appendTextLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget v0, Lcom/baidu/carlifevehicle/ConnLog;->sLineCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/carlifevehicle/ConnLog;->sLineCount:I

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->waitLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->setPendingLocked(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->postUi()V

    return-void
.end method

.method private static appendTextLocked(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const v2, 0xea60

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const v2, 0xc350

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static attach(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    sput-object p0, Lcom/baidu/carlifevehicle/ConnLog;->sTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureArrays()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sBuf:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    sput v1, Lcom/baidu/carlifevehicle/ConnLog;->sLineCount:I

    sput v1, Lcom/baidu/carlifevehicle/ConnLog;->sPendingLen:I

    :cond_1
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->postUi()V

    return-void
.end method

.method private static cancelTick()V
    .locals 2

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sTickTask:Lcom/baidu/carlifevehicle/ConnLog$Tick;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static detach()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->stopWaiting()V

    return-void
.end method

.method public static declared-synchronized doTick()Z
    .locals 1

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitText:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/carlifevehicle/ConnLog;->sDots:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3

    sput v0, Lcom/baidu/carlifevehicle/ConnLog;->sDots:I

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->waitLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->setPendingLocked(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->postUi()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ensureArrays()V
    .locals 3

    sget-boolean v0, Lcom/baidu/carlifevehicle/ConnLog;->sLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sKeys:[Ljava/lang/String;

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sVals:[Ljava/lang/String;

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sDrops:[Ljava/lang/String;

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitKeys:[Ljava/lang/String;

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitVals:[Ljava/lang/String;

    const v2, 0x7f030009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sStopKeys:[Ljava/lang/String;

    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sStopVals:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/carlifevehicle/ConnLog;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static ensureHandler()V
    .locals 2

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/carlifevehicle/ConnLog$UiTask;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/ConnLog$UiTask;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sUiTask:Lcom/baidu/carlifevehicle/ConnLog$UiTask;

    new-instance v0, Lcom/baidu/carlifevehicle/ConnLog$Tick;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/ConnLog$Tick;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sTickTask:Lcom/baidu/carlifevehicle/ConnLog$Tick;

    new-instance v0, Lcom/baidu/carlifevehicle/ConnLog$Scroll;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/ConnLog$Scroll;-><init>()V

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sScrollTask:Lcom/baidu/carlifevehicle/ConnLog$Scroll;

    :cond_0
    return-void
.end method

.method public static declared-synchronized flush()V
    .locals 3

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->scrollBottom()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static getRes()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/carlifevehicle/ConnLog;->shortTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->shouldDrop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureArrays()V

    sget-object v2, Lcom/baidu/carlifevehicle/ConnLog;->sWaitKeys:[Ljava/lang/String;

    sget-object v3, Lcom/baidu/carlifevehicle/ConnLog;->sWaitVals:[Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/baidu/carlifevehicle/ConnLog;->match([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/baidu/carlifevehicle/ConnLog;->sStopKeys:[Ljava/lang/String;

    sget-object v3, Lcom/baidu/carlifevehicle/ConnLog;->sStopVals:[Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/baidu/carlifevehicle/ConnLog;->match([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->startWaiting(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->stopWaiting()V

    :cond_2
    :goto_1
    :try_start_1
    invoke-static {p2}, Lcom/baidu/carlifevehicle/ConnLog;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/baidu/carlifevehicle/ConnLog;->shortTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/carlifevehicle/ConnLog;->append(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/carlifevehicle/ConnLog;->append(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    return-void
.end method

.method private static match([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "vals"    # [Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    move v2, v1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    :try_start_0
    aget-object v4, p0, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    aget-object v0, p1, v3

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static postUi()V
    .locals 2

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureHandler()V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sUiTask:Lcom/baidu/carlifevehicle/ConnLog$UiTask;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static removePendingLocked()V
    .locals 3

    sget v0, Lcom/baidu/carlifevehicle/ConnLog;->sPendingLen:I

    if-lez v0, :cond_1

    const/4 v1, 0x0

    sput v1, Lcom/baidu/carlifevehicle/ConnLog;->sPendingLen:I

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private static scheduleTick()V
    .locals 4

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureHandler()V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sTickTask:Lcom/baidu/carlifevehicle/ConnLog$Tick;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static scrollBottom()V
    .locals 4

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureHandler()V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sScrollTask:Lcom/baidu/carlifevehicle/ConnLog$Scroll;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static setPendingLocked(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->removePendingLocked()V

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->appendTextLocked(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/carlifevehicle/ConnLog;->sPendingLen:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput v0, Lcom/baidu/carlifevehicle/ConnLog;->sPendingLen:I

    :cond_0
    :goto_0
    return-void
.end method

.method public static shortTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "APP"

    return-object v0

    :cond_0
    const-string v0, "CarLife_SDK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SDK"

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static shouldDrop(Ljava/lang/String;)Z
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureArrays()V

    sget-object v1, Lcom/baidu/carlifevehicle/ConnLog;->sDrops:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_0
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static declared-synchronized startWaiting(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    sput-object p0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitText:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/carlifevehicle/ConnLog;->sDots:I

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->waitLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->setPendingLocked(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->postUi()V

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitText:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->cancelTick()V

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->scheduleTick()V

    return-void
.end method

.method public static declared-synchronized stopWaiting()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitText:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->removePendingLocked()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->cancelTick()V

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->postUi()V

    return-void
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->ensureArrays()V

    sget-object v2, Lcom/baidu/carlifevehicle/ConnLog;->sKeys:[Ljava/lang/String;

    sget-object v3, Lcom/baidu/carlifevehicle/ConnLog;->sVals:[Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/baidu/carlifevehicle/ConnLog;->match([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   \u2190   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method private static waitLine()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/baidu/carlifevehicle/ConnLog;->sWaitText:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u23f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/baidu/carlifevehicle/ConnLog;->sDots:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static logLine(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v2, "CarLife_SDK"

    invoke-static {v2, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static logBtStage1Entry()V
    .locals 1

    const-string v0, "==== [阶段1] 蓝牙带外握手: 开始扫描/连接手机 ===="

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtNoTarget()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 未找到名为 CONFIG_TARGET_BLUETOOTH_NAME 的已配对设备, 跳过握手"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtConnected()V
    .locals 1

    const-string v0, "✔ [蓝牙] SPP 已连上, 进入带外握手(SSID/PSK/IP 交换)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtConnectFail()V
    .locals 1

    const-string v0, "⚠ [蓝牙] SPP 连接失败(见上一条 exception)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtNoBonded()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 车机无已配对设备: 请先在 车机蓝牙设置 里与手机配对(每5s重试)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logBtAllFailed()V
    .locals 1

    const-string v0, "⚠ [蓝牙] 已配对设备全部连不上(手机端 CarLife 打开了吗?)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotStart()V
    .locals 1

    const-string v0, "==== [阶段4] 热点模式启动: 建 UDP 7999 监听 ===="

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotListening()V
    .locals 1

    const-string v0, "✔ 热点模式: UDP 7999 监听线程已启动"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logHotspotWaiting()V
    .locals 1

    const-string v0, "⏳ 热点模式: 已监听 UDP 7999, 等手机广播/拿IP(需车机WLAN先连上手机热点)"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pUnsupported()V
    .locals 1

    const-string v0, "⚠ 当前设备不支持WLAN直连，请改用热点或USB"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pBusy()V
    .locals 1

    const-string v0, "⚠ 系统繁忙，请稍后再试"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pDiscoverFail(I)V
    .locals 3

    if-nez p0, :check1

    const-string v0, "⚠ 操作失败，请检查网络设置"

    goto :emit

    :check1
    const/4 v1, 0x1

    if-ne p0, v1, :check2

    const-string v0, "⚠ 当前设备不支持WLAN直连"

    goto :emit

    :check2
    const/4 v1, 0x2

    if-ne p0, v1, :other

    const-string v0, "⚠ 系统繁忙，请稍后再试"

    goto :emit

    :other
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "⚠ 无法搜索附近设备(错误码:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :emit
    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pCreateFail(I)V
    .locals 2

    # --- 1.25: 修 1.23 极性写反。约定 1=不支持 2=BUSY（与 j$a 一致）。 ---
    const/4 v0, 0x1

    if-ne p0, v0, :check2

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pUnsupported()V

    goto :done

    :check2
    const/4 v0, 0x2

    if-ne p0, v0, :check0

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pBusy()V

    goto :done

    :check0
    # --- 1.28: reason=0 (ERROR) 是临时错误，会退避重试，
    #     别再显示"请检查网络设置"（那句听着像死路） ---
    if-nez p0, :other

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pError()V

    goto :done

    :other
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logP2pNetFail()V

    :done
    return-void
.end method

.method public static logP2pNetFail()V
    .locals 1

    const-string v0, "⚠ 操作失败，请检查网络设置"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logP2pError()V
    .locals 1

    const-string v0, "⚠ 直连建组失败(系统内部错误)，正在自动重试"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logWifiOff()V
    .locals 1

    const-string v0, "⚠ WiFi未开启，请先打开WiFi再连接"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static logNoDirectName()V
    .locals 1

    const-string v0, "⚠ 未获取到直连名称，可能不支持"

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void
.end method

.method public static precheck(La/a/a/a/c;)V
    .locals 4

    # --- 1.25: 前置自检（对齐 5+ m7/f0）。只提示不阻断。 ---
    if-eqz p0, :done

    :try_start_0
    invoke-interface {p0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :check_name

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logWifiOff()V

    :check_name
    const-string v0, "CONFIG_WIFI_DIRECT_NAME"

    invoke-interface {p0, v0}, La/a/a/a/c;->I0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :log_name

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :done

    :log_name
    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->logNoDirectName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :done
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static hasUsableLocalIp()Z
    .locals 6

    # --- 1.25: 扫网卡找可用 IPv4（排除环回 / 0.0.0.0 / 169.254 链路本地）。 ---
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :ret

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :ret

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x40

    if-ge v2, v3, :ret

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    if-nez v3, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :goto_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    if-eqz v3, :goto_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :goto_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-nez v5, :goto_1

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :goto_1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :goto_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :goto_1

    const-string v5, "0."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :goto_1

    const-string v5, "169.254."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :goto_1

    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :ret
    return v0

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    return v0
.end method

.method public static awaitLocalIp()V
    .locals 6

    # --- 1.25: 热点 IP 就绪轮询（照抄亿连 WifiManager.d：500ms × 10）。 ---
    # ---  超时只打日志不失败；调用点须在非主线程（transport connect）。 ---
    const/4 v0, 0x0

    :loop
    const/16 v1, 0xa

    if-ge v0, v1, :timeout

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnLog;->hasUsableLocalIp()Z

    move-result v1

    if-nez v1, :ready

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :tick
    add-int/lit8 v0, v0, 0x1

    goto :loop

    :ready
    if-nez v0, :ready_ok

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "✔ 网卡 IP 已就绪 (waited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f4

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void

    :ready_ok
    return-void

    :timeout
    const-string v1, "⚠ 等待网卡 IP 超时(5s)，可能影响热点握手（仍继续）"

    invoke-static {v1}, Lcom/baidu/carlifevehicle/ConnLog;->logLine(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :tick
.end method
