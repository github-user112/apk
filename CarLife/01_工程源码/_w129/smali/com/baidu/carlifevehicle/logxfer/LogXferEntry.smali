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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 3

    .line 62
    const-string v0, "CarLifeLogXfer"

    if-nez p0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    const v1, 0x7f090147

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 67
    if-nez p0, :cond_1

    .line 68
    const-string p0, "main_btn_logxfer not in layout (\u5e03\u5c40\u672a\u6253\u8865\u4e01?), skip"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_1
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    invoke-direct {v1}, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;-><init>()V

    sput-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    .line 74
    :cond_2
    sget-object v1, Lcom/baidu/carlifevehicle/logxfer/LogXferEntry;->sClick:Lcom/baidu/carlifevehicle/logxfer/LogXferEntry$ClickHandler;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    const-string p0, "download-log button bound"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
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

    .line 81
    :goto_0
    return-void
.end method
