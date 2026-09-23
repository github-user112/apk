.class public Lcom/tencent/bugly/crashreport/biz/c$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/crashreport/biz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lcom/tencent/bugly/crashreport/biz/c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/biz/c;J)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->b:Lcom/tencent/bugly/crashreport/biz/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->a:J

    iput-wide p2, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->b:Lcom/tencent/bugly/crashreport/biz/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/biz/c;->b()V

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->b:Lcom/tencent/bugly/crashreport/biz/c;

    iget-wide v1, p0, Lcom/tencent/bugly/crashreport/biz/c$e;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/biz/c;->b(J)V

    return-void
.end method
