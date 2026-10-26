.class public Lcom/tencent/tinker/lib/service/TinkerPatchForeService$1;
.super Lcom/tencent/tinker/lib/IForeService$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/lib/service/TinkerPatchForeService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tinker/lib/service/TinkerPatchForeService;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/lib/service/TinkerPatchForeService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/lib/service/TinkerPatchForeService$1;->this$0:Lcom/tencent/tinker/lib/service/TinkerPatchForeService;

    invoke-direct {p0}, Lcom/tencent/tinker/lib/IForeService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startme()V
    .locals 0

    return-void
.end method
