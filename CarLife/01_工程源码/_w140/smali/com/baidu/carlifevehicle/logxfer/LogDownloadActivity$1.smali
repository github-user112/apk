.class Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;
.super Ljava/lang/Object;
.source "LogDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->onNetChanged([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;

.field final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;->this$0:Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;

    iput-object p2, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;->val$urls:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;->this$0:Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;

    iget-object v1, p0, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity$1;->val$urls:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;->access$000(Lcom/baidu/carlifevehicle/logxfer/LogDownloadActivity;[Ljava/lang/String;)V

    .line 245
    return-void
.end method
