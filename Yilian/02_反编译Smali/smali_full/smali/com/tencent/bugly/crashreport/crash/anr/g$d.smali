.class public Lcom/tencent/bugly/crashreport/crash/anr/g$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/g;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/g;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$d;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$d;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/anr/g;->b(Lcom/tencent/bugly/crashreport/crash/anr/g;)V

    return-void
.end method
