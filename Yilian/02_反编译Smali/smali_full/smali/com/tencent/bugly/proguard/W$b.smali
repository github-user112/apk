.class public Lcom/tencent/bugly/proguard/W$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/W;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/W;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput p2, p0, Lcom/tencent/bugly/proguard/W$b;->a:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/W$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tencent/bugly/proguard/W$b;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/W$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
