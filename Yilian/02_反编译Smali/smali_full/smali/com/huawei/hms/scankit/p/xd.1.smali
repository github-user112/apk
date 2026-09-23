.class public final Lcom/huawei/hms/scankit/p/xd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/huawei/hms/scankit/p/xd;


# instance fields
.field public final b:I

.field public final c:Lcom/huawei/hms/scankit/p/yd;

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/hms/scankit/p/xd;

    sget-object v1, Lcom/huawei/hms/scankit/p/yd;->a:Lcom/huawei/hms/scankit/p/yd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/huawei/hms/scankit/p/xd;-><init>(Lcom/huawei/hms/scankit/p/yd;III)V

    sput-object v0, Lcom/huawei/hms/scankit/p/xd;->a:Lcom/huawei/hms/scankit/p/xd;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/yd;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    iput p2, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    iput p3, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    iput p4, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    return v0
.end method

.method public a([B)Lcom/huawei/hms/scankit/p/ab;
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/xd;->b(I)Lcom/huawei/hms/scankit/p/xd;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/yd;->a()Lcom/huawei/hms/scankit/p/yd;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/yd;

    invoke-virtual {v2, v1, p1}, Lcom/huawei/hms/scankit/p/yd;->a(Lcom/huawei/hms/scankit/p/ab;[B)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public a(I)Lcom/huawei/hms/scankit/p/xd;
    .locals 6

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    iget v1, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    :cond_0
    sget-object v4, Lcom/huawei/hms/scankit/p/vd;->b:[[I

    aget-object v1, v4, v1

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v4, v1}, Lcom/huawei/hms/scankit/p/yd;->a(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    :cond_1
    iget v3, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    if-eqz v3, :cond_4

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v3, 0x12

    :goto_1
    new-instance v4, Lcom/huawei/hms/scankit/p/xd;

    iget v5, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/huawei/hms/scankit/p/xd;-><init>(Lcom/huawei/hms/scankit/p/yd;III)V

    iget v0, v4, Lcom/huawei/hms/scankit/p/xd;->d:I

    const/16 v1, 0x81e

    if-ne v0, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Lcom/huawei/hms/scankit/p/xd;->b(I)Lcom/huawei/hms/scankit/p/xd;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method public a(II)Lcom/huawei/hms/scankit/p/xd;
    .locals 4

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    iget v2, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    if-eq p1, v2, :cond_0

    sget-object v3, Lcom/huawei/hms/scankit/p/vd;->b:[[I

    aget-object v2, v3, v2

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/huawei/hms/scankit/p/yd;->a(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/huawei/hms/scankit/p/yd;->a(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object p2

    new-instance v1, Lcom/huawei/hms/scankit/p/xd;

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2, v0}, Lcom/huawei/hms/scankit/p/xd;-><init>(Lcom/huawei/hms/scankit/p/yd;III)V

    return-object v1
.end method

.method public a(Lcom/huawei/hms/scankit/p/xd;)Z
    .locals 3

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    sget-object v1, Lcom/huawei/hms/scankit/p/vd;->b:[[I

    iget v2, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/huawei/hms/scankit/p/xd;->b:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p1, Lcom/huawei/hms/scankit/p/xd;->d:I

    if-lez v1, :cond_1

    iget v2, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    if-eqz v2, :cond_0

    if-le v2, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    :cond_1
    iget p1, p1, Lcom/huawei/hms/scankit/p/xd;->e:I

    if-gt v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    return v0
.end method

.method public b(I)Lcom/huawei/hms/scankit/p/xd;
    .locals 4

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, v0}, Lcom/huawei/hms/scankit/p/yd;->b(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/scankit/p/xd;

    iget v1, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/huawei/hms/scankit/p/xd;-><init>(Lcom/huawei/hms/scankit/p/yd;III)V

    return-object v0
.end method

.method public b(II)Lcom/huawei/hms/scankit/p/xd;
    .locals 6

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/xd;->c:Lcom/huawei/hms/scankit/p/yd;

    iget v1, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iget v3, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    if-ltz v3, :cond_1

    sget-object v4, Lcom/huawei/hms/scankit/p/vd;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    if-lez p1, :cond_1

    aget-object v5, v4, v3

    array-length v5, v5

    if-ge p1, v5, :cond_1

    aget-object v3, v4, v3

    aget p1, v3, p1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/scankit/p/yd;->a(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p2, v2}, Lcom/huawei/hms/scankit/p/yd;->a(II)Lcom/huawei/hms/scankit/p/yd;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/scankit/p/xd;

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    iget v3, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v3}, Lcom/huawei/hms/scankit/p/xd;-><init>(Lcom/huawei/hms/scankit/p/yd;III)V

    return-object p2
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    :try_start_0
    sget-object v0, Lcom/huawei/hms/scankit/p/vd;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/b;->a([Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "%s bits=%d bytes=%d"

    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/huawei/hms/scankit/p/vd;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/hms/scankit/p/xd;->b:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/huawei/hms/scankit/p/xd;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/huawei/hms/scankit/p/xd;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    throw v0
.end method
