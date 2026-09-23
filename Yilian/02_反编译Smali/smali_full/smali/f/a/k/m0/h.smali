.class public final synthetic Lf/a/k/m0/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/k0/f;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/k0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/m0/h;->a:Lf/a/k/k0/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/h;->a:Lf/a/k/k0/f;

    check-cast v0, Lf/a/k/l0/v3;

    if-eqz v0, :cond_0

    const-string v0, "==> show QrCodeFragment !"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
