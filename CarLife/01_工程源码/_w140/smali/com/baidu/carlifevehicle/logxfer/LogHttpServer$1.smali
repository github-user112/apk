.class Lcom/baidu/carlifevehicle/logxfer/LogHttpServer$1;
.super Ljava/lang/Object;
.source "LogHttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;


# direct methods
.method constructor <init>(Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer$1;->this$0:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer$1;->this$0:Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;

    invoke-static {v0}, Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;->access$000(Lcom/baidu/carlifevehicle/logxfer/LogHttpServer;)V

    .line 90
    return-void
.end method
