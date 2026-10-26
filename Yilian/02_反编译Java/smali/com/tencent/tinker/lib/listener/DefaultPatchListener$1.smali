.class public Lcom/tencent/tinker/lib/listener/DefaultPatchListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/lib/listener/DefaultPatchListener;->runForgService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tinker/lib/listener/DefaultPatchListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/lib/listener/DefaultPatchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener$1;->this$0:Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener$1;->this$0:Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    iget-object v0, p1, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;->access$000(Lcom/tencent/tinker/lib/listener/DefaultPatchListener;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener$1;->this$0:Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    iget-object p1, p1, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener$1;->this$0:Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    invoke-static {v0}, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;->access$000(Lcom/tencent/tinker/lib/listener/DefaultPatchListener;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
