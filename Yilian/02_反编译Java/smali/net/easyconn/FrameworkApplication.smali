.class public Lnet/easyconn/FrameworkApplication;
.super Landroidx/multidex/MultiDexApplication;
.source ""


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lnet/easyconn/FrameworkApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lnet/easyconn/FrameworkApplication;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lf/a/i/m/f;->e(Landroid/os/Looper;J)V

    return-void
.end method
