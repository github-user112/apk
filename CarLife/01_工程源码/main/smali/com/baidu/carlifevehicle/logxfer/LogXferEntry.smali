.class public final Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;
.super Ljava/lang/Object;
.source "LogXferEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;
    }
.end annotation


# static fields
.field public static final ID_MAIN_BTN_LOGXFER:I = 0x7f090147

.field private static final TAG:Ljava/lang/String; = "CarLifeLogXfer"

.field private static sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

.field private static sMainRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 3

    .line 74
    const-string v0, "CarLifeLogXfer"

    if-nez p0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sMainRoot:Ljava/lang/ref/WeakReference;

    .line 79
    const v1, 0x7f090147

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 80
    if-nez p0, :cond_1

    .line 81
    const-string p0, "main_btn_logxfer not in layout (\u5e03\u5c40\u672a\u6253\u8865\u4e01?), skip"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 84
    :cond_1
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    if-nez v1, :cond_2

    .line 85
    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;-><init>()V

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    .line 87
    :cond_2
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    const-string p0, "download-log button bound"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind main_btn_logxfer failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void
.end method

.method public static mainRoot()Landroid/view/View;
    .locals 2

    .line 43
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sMainRoot:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sMainRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    return-object v0
.end method
