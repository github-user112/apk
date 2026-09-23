.class public final Lcom/tencent/bugly/proguard/ga$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/ga;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ga$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ga$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ga$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ga$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ga$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ga$b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/ga;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return-void
.end method
