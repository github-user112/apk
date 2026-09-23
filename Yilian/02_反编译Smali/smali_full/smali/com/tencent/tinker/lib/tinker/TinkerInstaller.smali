.class public Lcom/tencent/tinker/lib/tinker/TinkerInstaller;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.TinkerInstaller"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPatch(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    return-void
.end method

.method public static install(Lcom/tencent/tinker/entry/ApplicationLike;)Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 2

    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->create(Lcom/tencent/tinker/lib/tinker/Tinker;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static install(Lcom/tencent/tinker/entry/ApplicationLike;Lcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/entry/ApplicationLike;",
            "Lcom/tencent/tinker/lib/reporter/LoadReporter;",
            "Lcom/tencent/tinker/lib/reporter/PatchReporter;",
            "Lcom/tencent/tinker/lib/listener/PatchListener;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            ")",
            "Lcom/tencent/tinker/lib/tinker/Tinker;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerFlags(I)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReport(Lcom/tencent/tinker/lib/reporter/LoadReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener(Lcom/tencent/tinker/lib/listener/PatchListener;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter(Lcom/tencent/tinker/lib/reporter/PatchReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerLoadVerifyFlag()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag(Ljava/lang/Boolean;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->create(Lcom/tencent/tinker/lib/tinker/Tinker;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4, p5}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    return-object p1
.end method

.method public static install(Lcom/tencent/tinker/entry/ApplicationLike;Lcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;)Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/entry/ApplicationLike;",
            "Lcom/tencent/tinker/lib/reporter/LoadReporter;",
            "Lcom/tencent/tinker/lib/reporter/PatchReporter;",
            "Lcom/tencent/tinker/lib/listener/PatchListener;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            "Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;",
            ")",
            "Lcom/tencent/tinker/lib/tinker/Tinker;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerFlags(I)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReport(Lcom/tencent/tinker/lib/reporter/LoadReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener(Lcom/tencent/tinker/lib/listener/PatchListener;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter(Lcom/tencent/tinker/lib/reporter/PatchReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->customPatcher(Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerLoadVerifyFlag()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag(Ljava/lang/Boolean;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->create(Lcom/tencent/tinker/lib/tinker/Tinker;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4, p5}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    return-object p1
.end method

.method public static onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchListener()Lcom/tencent/tinker/lib/listener/PatchListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tencent/tinker/lib/listener/PatchListener;->onPatchReceived(Ljava/lang/String;)I

    return-void
.end method

.method public static setLogIml(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->setTinkerLogImp(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V

    return-void
.end method
