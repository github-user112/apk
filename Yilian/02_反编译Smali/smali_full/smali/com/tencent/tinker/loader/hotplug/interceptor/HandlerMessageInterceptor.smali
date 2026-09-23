.class public Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;
.super Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;,
        Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor<",
        "Landroid/os/Handler$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static sMCallbackField:Ljava/lang/reflect/Field;


# instance fields
.field public final mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

.field public final mTarget:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->sMCallbackField:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    const-class v1, Landroid/os/Handler;

    const-string v2, "mCallback"

    invoke-static {v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->sMCallbackField:Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->mTarget:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

    return-void
.end method


# virtual methods
.method public decorate(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 2

    if-eqz p1, :cond_0

    const-class v0, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor$ITinkerHotplugProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;

    iget-object v1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->mMessageHandler:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;

    invoke-direct {v0, v1, p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$CallbackWrapper;-><init>(Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public bridge synthetic decorate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Handler$Callback;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->decorate(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object p1

    return-object p1
.end method

.method public fetchTarget()Landroid/os/Handler$Callback;
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->sMCallbackField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public bridge synthetic fetchTarget()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->fetchTarget()Landroid/os/Handler$Callback;

    move-result-object v0

    return-object v0
.end method

.method public inject(Landroid/os/Handler$Callback;)V
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->sMCallbackField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->mTarget:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Handler$Callback;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;->inject(Landroid/os/Handler$Callback;)V

    return-void
.end method
