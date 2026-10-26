.class public Lf/a/g/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/g/j;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/g/j;


# direct methods
.method public constructor <init>(Lf/a/g/j;)V
    .locals 0

    iput-object p1, p0, Lf/a/g/j$a;->a:Lf/a/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    iget-object v1, p0, Lf/a/g/j$a;->a:Lf/a/g/j;

    invoke-virtual {v0, v1}, Lnet/easyconn/ecsdk/ECSDK;->bindBLEHidDevice(Lnet/easyconn/ecsdk/ebt/IEBTHIDHandle;)I

    move-result v0

    iget-object v1, p0, Lf/a/g/j$a;->a:Lf/a/g/j;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lf/a/g/j;->q:Z

    const-string v0, "BtHidManager bindBLEHidDevice bindBLEHidDeviceResult = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/g/j$a;->a:Lf/a/g/j;

    iget-boolean v1, v1, Lf/a/g/j;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
