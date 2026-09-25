.class Lcom/baidu/carlifevehicle/logxfer/QrBadge$Bridge;
.super Ljava/lang/Object;
.source "QrBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/logxfer/QrBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bridge"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 201
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrBadge;->hide()V

    .line 202
    return-void
.end method
