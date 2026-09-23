.class public final Lcom/tencent/bugly/proguard/q0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final synthetic b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/r;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/bugly/proguard/q0;->b:Lcom/tencent/bugly/proguard/r;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/q0;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/q0;->b:Lcom/tencent/bugly/proguard/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/q0;->a:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/r;->a(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
