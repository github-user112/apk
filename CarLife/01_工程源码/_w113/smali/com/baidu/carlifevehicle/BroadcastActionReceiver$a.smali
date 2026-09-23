.class public Lcom/baidu/carlifevehicle/BroadcastActionReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlifevehicle/BroadcastActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/BroadcastActionReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/baidu/carlifevehicle/BroadcastActionReceiver$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/carlifevehicle/BroadcastActionReceiver$a;->b:Landroid/content/Context;

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "BroadcastActionReceiver"

    const-string v1, "\u5e94\u7528\u81ea\u542f\u52a8\u7ed3\u675f"

    .line 2
    invoke-static {v0, v1}, La/a/a/a/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
