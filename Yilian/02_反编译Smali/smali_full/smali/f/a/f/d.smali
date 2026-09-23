.class public Lf/a/f/d;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source ""


# instance fields
.field public final synthetic a:Lf/a/f/e;


# direct methods
.method public constructor <init>(Lf/a/f/e;)V
    .locals 0

    iput-object p1, p0, Lf/a/f/d;->a:Lf/a/f/e;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 1

    const-string v0, "BleTransManager onStartFailure errorCode: "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/f/d;->a:Lf/a/f/e;

    iget-object p1, p1, Lf/a/f/e;->b:Lf/a/f/e$c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BleTransManager onStartSuccess"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/f/d;->a:Lf/a/f/e;

    iget-object p1, p1, Lf/a/f/e;->b:Lf/a/f/e$c;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
