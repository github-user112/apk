.class public final Lcom/huawei/hms/scankit/aiscan/common/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public d:[Lcom/huawei/hms/scankit/aiscan/common/z;

.field public e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public final f:J

.field public g:Z

.field public final h:Z

.field public final i:F

.field public j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/w;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/w;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/x;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->i:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->b:[B

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->c:I

    new-array p1, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->o:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->f:J

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->h:Z

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->j:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->l:Z

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->m:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->n:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->b:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->c:I

    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    iput-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    const-class v1, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    iput-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->i:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->j:I

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    const-class v1, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->b:[B

    iput p3, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->c:I

    iput-object p4, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    iput-object p5, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    iput-wide p6, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->f:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->i:F

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    move v4, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[BI[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    iput-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-void
.end method

.method public a(F)V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->j:I

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x430c0000    # 140.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x433e0000    # 190.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    const/4 p1, -0x2

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->m:I

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/ob;)V
    .locals 5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr p1, v1

    invoke-direct {v4, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->l:Z

    return-void
.end method

.method public a([Lcom/huawei/hms/scankit/aiscan/common/z;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->m:I

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x430c0000    # 140.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x433e0000    # 190.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    const/4 p1, -0x2

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/scankit/p/ob;)V
    .locals 5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->n:Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr p1, v1

    invoke-direct {v4, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    return-void
.end method

.method public b([Lcom/huawei/hms/scankit/aiscan/common/z;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->j:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->n:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->m:I

    return v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->b:[B

    return-object v0
.end method

.method public h()[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->i:F

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->l:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->d:[Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->i:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/huawei/hms/scankit/aiscan/common/x;->k:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
