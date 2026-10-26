.class public Lcom/tencent/bugly/crashreport/crash/j$h;
.super Lcom/tencent/bugly/crashreport/crash/j$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/crash/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/j$a;)V
    .locals 1

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/crashreport/crash/j$g;-><init>(ILcom/tencent/bugly/crashreport/crash/j$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/m;->g()Lcom/tencent/bugly/crashreport/crash/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/m;->j()Z

    move-result v0

    return v0
.end method
