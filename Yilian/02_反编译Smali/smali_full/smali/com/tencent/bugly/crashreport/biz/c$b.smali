.class public Lcom/tencent/bugly/crashreport/biz/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/biz/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/crashreport/biz/c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/biz/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/c$b;->a:Lcom/tencent/bugly/crashreport/biz/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/c$b;->a:Lcom/tencent/bugly/crashreport/biz/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/biz/c;->a(Lcom/tencent/bugly/crashreport/biz/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aa;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
