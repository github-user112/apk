.class Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity$Bridge;
.super Ljava/lang/Object;
.source "QrFallbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;


# direct methods
.method constructor <init>(Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity$Bridge;->this$0:Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrFallbackActivity;->finishSelf()V

    .line 94
    return-void
.end method
