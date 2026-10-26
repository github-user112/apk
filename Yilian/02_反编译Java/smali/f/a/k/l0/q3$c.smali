.class public Lf/a/k/l0/q3$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/l0/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/l0/q3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/q3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/q3$c;->a:Lf/a/k/l0/q3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "net.easyconn.android.tab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Receive Switch to Android : BROADCAST_ANDROID_TAG"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/q3$c;->a:Lf/a/k/l0/q3;

    invoke-virtual {p1}, Lf/a/k/l0/q3;->B0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "net.easyconn.ios.tab"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Receive Switch to IOS : BROADCAST_IOS_TAG"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/q3$c;->a:Lf/a/k/l0/q3;

    invoke-virtual {p1}, Lf/a/k/l0/q3;->C0()V

    :cond_1
    :goto_0
    return-void
.end method
