.class public Lcom/huawei/hms/hmsscankit/ScanKitActivity;
.super Landroid/app/Activity;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "ScanKitActivity"


# instance fields
.field public lastRotation:I

.field public mOrientationListener:Landroid/view/OrientationEventListener;

.field public remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return-void
.end method

.method public static synthetic access$000(Lcom/huawei/hms/hmsscankit/ScanKitActivity;)I
    .locals 0

    iget p0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return p0
.end method

.method public static synthetic access$002(Lcom/huawei/hms/hmsscankit/ScanKitActivity;I)I
    .locals 0

    iput p1, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->lastRotation:I

    return p1
.end method

.method private startOrientationChangeListener()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity$2;-><init>(Lcom/huawei/hms/hmsscankit/ScanKitActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/hmsscankit/RemoteView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "ScanKitActivity"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    sget v1, Lcom/huawei/hms/scankit/R$layout;->scankit_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ScanFormatValue"

    :try_start_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "getIntExtra can not get"

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/huawei/hms/hmsscankit/RemoteView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/huawei/hms/hmsscankit/RemoteView;-><init>(Landroid/app/Activity;ZILandroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    new-instance v2, Lcom/huawei/hms/hmsscankit/ScanKitActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity$1;-><init>(Lcom/huawei/hms/hmsscankit/ScanKitActivity;)V

    invoke-virtual {v3, v2}, Lcom/huawei/hms/hmsscankit/RemoteView;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/OnResultCallback;)V

    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/huawei/hms/scankit/R$id;->ll_top:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v2, 0xc000000

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    if-eqz v1, :cond_2

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_3

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->startOrientationChangeListener()V

    :cond_3
    const-string p1, "ScankitActivity on create"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onDestroy()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onPause()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onResume()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStart()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/ScanKitActivity;->remoteView:Lcom/huawei/hms/hmsscankit/RemoteView;

    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStop()V

    const-string v0, "ScanKitActivity"

    const-string v1, "ScankitActivity onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
