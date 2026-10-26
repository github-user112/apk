.class public Lf/a/i/i/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/i/i/q;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/q$a;->a:Lf/a/i/i/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lf/a/i/i/q$a;->a:Lf/a/i/i/q;

    iget-object v0, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    check-cast v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v0}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->i()V

    return-void
.end method
