.class public Lcom/tencent/bugly/crashreport/crash/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/p;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/crashreport/crash/p;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/p;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/p$a;->a:Lcom/tencent/bugly/crashreport/crash/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/p$a;->a:Lcom/tencent/bugly/crashreport/crash/p;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/p;->a(Lcom/tencent/bugly/crashreport/crash/p;)V

    return-void
.end method
