.class public Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;-><init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$a;->a:Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Tinker.TinkerUtils"

    const-string v2, "ScreenReceiver action [%s] "

    invoke-static {v1, v2, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$a;->a:Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$b;->a()V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
