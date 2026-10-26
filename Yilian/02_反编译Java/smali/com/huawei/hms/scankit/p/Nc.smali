.class public Lcom/huawei/hms/scankit/p/Nc;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Kc$b$b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/p/Kc$b$b;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Nc;->a:Lcom/huawei/hms/scankit/p/Kc$b$b;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method
