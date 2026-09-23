.class public Lcom/huawei/hms/hmsscankit/RemoteView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hmsscankit/RemoteView$b;,
        Lcom/huawei/hms/hmsscankit/RemoteView$a;,
        Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_PHOTO:I = 0x1113

.field public static final TAG:Ljava/lang/String; = "ScanKitRemoteView"


# instance fields
.field public flagForGallery:Z

.field public mContext:Landroid/content/Context;

.field public mContinuouslyScan:Z

.field public mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

.field public mReturnedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZILandroid/graphics/Rect;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContinuouslyScan:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mReturnedBitmap:Z

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/hmsscankit/RemoteView$a;-><init>(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;Landroid/view/ViewGroup;ZILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZILandroid/graphics/Rect;Z)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContinuouslyScan:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mReturnedBitmap:Z

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/hmsscankit/RemoteView$a;-><init>(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;Landroid/view/ViewGroup;ZILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0, p5}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContinuouslyScan:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mReturnedBitmap:Z

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/hmsscankit/RemoteView$a;-><init>(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;Landroid/view/ViewGroup;ZILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0, p2}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Z)V

    iget-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {p1, p3}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/huawei/hms/hmsscankit/RemoteView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->startPhotoCode(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/huawei/hms/hmsscankit/RemoteView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private startPhotoCode(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "com.huawei.photos"

    const-string v1, "com.android.gallery3d"

    const-string v2, "ScanKitRemoteView"

    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->b(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x1113

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v7, v3, v6}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "android.intent.action.PICK"

    :try_start_1
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v6, v1, p1}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/app/Activity;)Landroid/content/pm/ResolveInfo;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    const-string v0, "Start Gallery:com.android.gallery3d"

    :try_start_2
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v0, p1}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/app/Activity;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "Start Gallery:com.huawei.photos"

    :try_start_3
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "image/*"

    :try_start_4
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "startPhotoCode Exception"

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public enableReturnBitmap(Z)Lcom/huawei/hms/hmsscankit/RemoteView;
    .locals 1

    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mReturnedBitmap:Z

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->b(Z)V

    return-object p0
.end method

.method public getLightStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onActivityResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0, p1, p2, p3}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onCreate:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onPause()V

    iget-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onStop()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 0

    const/16 p2, 0x1113

    if-ne p1, p2, :cond_0

    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-direct {p0, p4}, Lcom/huawei/hms/hmsscankit/RemoteView;->startPhotoCode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onStart: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "ScanKitRemoteView"

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->flagForGallery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onStop()V

    :cond_0
    return-void
.end method

.method public pauseContinuouslyScan()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->f(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V

    return-void
.end method

.method public resumeContinuouslyScan()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->e(Lcom/huawei/hms/hmsscankit/RemoteView$a;)V

    return-void
.end method

.method public selectPictureFromLocalFile()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->startPhotoCode(Landroid/app/Activity;)V

    return-void
.end method

.method public selectPictureFromLocalFileFragment(Landroid/app/Fragment;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1113

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setContinuouslyScan(Z)Lcom/huawei/hms/hmsscankit/RemoteView;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContinuouslyScan:Z

    return-object p0
.end method

.method public setOnErrorCallback(Lcom/huawei/hms/hmsscankit/OnErrorCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    new-instance v1, Lcom/huawei/hms/hmsscankit/c;

    invoke-direct {v1, p1}, Lcom/huawei/hms/hmsscankit/c;-><init>(Lcom/huawei/hms/hmsscankit/OnErrorCallback;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V

    return-void
.end method

.method public setOnLightVisibleCallback(Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    new-instance v1, Lcom/huawei/hms/hmsscankit/d;

    invoke-direct {v1, p1}, Lcom/huawei/hms/hmsscankit/d;-><init>(Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnLightCallback;)V

    return-void
.end method

.method public setOnResultCallback(Lcom/huawei/hms/hmsscankit/OnResultCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    new-instance v1, Lcom/huawei/hms/hmsscankit/e;

    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mContinuouslyScan:Z

    invoke-direct {v1, p1, v2}, Lcom/huawei/hms/hmsscankit/e;-><init>(Lcom/huawei/hms/hmsscankit/OnResultCallback;Z)V

    invoke-static {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->a(Lcom/huawei/hms/hmsscankit/RemoteView$a;Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V

    return-void
.end method

.method public switchLight()Z
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/hmsscankit/RemoteView;->getLightStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->c(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView;->mRemoteHelper:Lcom/huawei/hms/hmsscankit/RemoteView$a;

    invoke-static {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$a;->d(Lcom/huawei/hms/hmsscankit/RemoteView$a;)Z

    move-result v0

    return v0
.end method
