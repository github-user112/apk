.class public Lf/a/i/j/c$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/j/c;


# direct methods
.method public constructor <init>(Lf/a/i/j/c;Lf/a/i/j/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    iget-object p2, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p2, Lf/a/i/j/c;->c:Z

    goto/16 :goto_4

    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    .line 3
    iget-object p1, p1, Lf/a/i/j/c;->d:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_8

    :goto_1
    iget-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    .line 5
    iput-boolean v2, p1, Lf/a/i/j/c;->c:Z

    goto :goto_4

    .line 6
    :cond_4
    iget-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    .line 7
    iput-boolean v3, p1, Lf/a/i/j/c;->c:Z

    goto :goto_4

    :cond_5
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent.ACTION_CLOSE_SYSTEM_DIALOGS reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "homekey"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x2

    const v0, 0x13880

    if-eq p1, p2, :cond_7

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    const/16 p2, 0x36

    const-string v1, "EC_HU_HOME"

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lf/a/i/j/c$b;->a:Lf/a/i/j/c;

    const/16 p2, 0x2796

    const-string v1, "EC_WW_HU_HOME"

    :goto_3
    invoke-virtual {p1, v0, p2, v1}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method
