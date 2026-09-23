.class public Lcom/tencent/bugly/crashreport/crash/anr/g$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/g$a;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/bugly/crashreport/crash/anr/g$a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/g$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$a$a;->b:Lcom/tencent/bugly/crashreport/crash/anr/g$a;

    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$a$a;->b:Lcom/tencent/bugly/crashreport/crash/anr/g$a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/anr/g$a;->a:Lcom/tencent/bugly/crashreport/crash/anr/g;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/g$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/g;->a(Lcom/tencent/bugly/crashreport/crash/anr/g;Ljava/lang/String;)V

    return-void
.end method
