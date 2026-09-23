.class public Lcom/huawei/hms/scankit/p/Kc$b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public b:[Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:[Ljava/lang/String;

.field public d:[J

.field public final synthetic e:Lcom/huawei/hms/scankit/p/Kc$b;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;)V
    .locals 9

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->e:Lcom/huawei/hms/scankit/p/Kc$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    new-array v0, p1, [Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v8, 0x6

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "lt10K:"

    aput-object v1, v0, v2

    const-string v1, "lt100K:"

    aput-object v1, v0, v3

    const-string v1, "lt1M:"

    aput-object v1, v0, v4

    const-string v1, "lt3M:"

    aput-object v1, v0, v5

    const-string v1, "lt10M:"

    aput-object v1, v0, v6

    const-string v1, "lt40M:"

    aput-object v1, v0, v7

    const-string v1, "gt40M:"

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->c:[Ljava/lang/String;

    new-array p1, p1, [J

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->d:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x2800
        0x19000
        0x100000
        0x300000
        0xa00000
        0x2800000
        0x7fffffffffffffffL
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/huawei/hms/scankit/p/Kc$b;Lcom/huawei/hms/scankit/p/Ic;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$a;-><init>(Lcom/huawei/hms/scankit/p/Kc$b;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->b:[Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    int-to-long v2, p1

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/Kc$b$a;->d:[J

    aget-wide v5, v4, v0

    cmp-long v4, v2, v5

    if-gtz v4, :cond_0

    aget-object p1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/scankit/p/Kc$b$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$b$a;->a(I)V

    return-void
.end method
