.class public La/a/b/m/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/b/m/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/b/m/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.coagent.intent.action.KEY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Key_code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Key_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UP"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, La/a/b/m/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "carlife: onReceive is triggered!"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v1, La/a/b/n/h;->a0:Z

    if-eqz v1, :cond_0

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object p2

    invoke-virtual {p2, p1}, La/a/b/n/h;->D0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    invoke-virtual {v1, p1}, La/a/a/a/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    invoke-virtual {p1, v1}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p2, p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "PRE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "NEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x10

    goto :goto_0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0xf

    :goto_0
    invoke-interface {p1, p2}, La/a/a/a/m/c;->q0(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_5
    return-void
.end method
