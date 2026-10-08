.class public final synthetic La/a/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/s/a$c;


# instance fields
.field public final synthetic a:Lcom/baidu/carlifevehicle/CarlifeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/e;->a:Lcom/baidu/carlifevehicle/CarlifeActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, La/a/b/e;->a:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 1
    sget-object v1, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v1, "this$0"

    .line 2
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object v1

    invoke-interface {v1}, La/a/a/a/m/c;->U()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
