.class public final synthetic La/a/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/baidu/carlifevehicle/CarlifeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/c;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, La/a/b/c;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 1
    sget-object v0, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v0, "this$0"

    .line 2
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:La/a/b/s/b;

    return-void
.end method
