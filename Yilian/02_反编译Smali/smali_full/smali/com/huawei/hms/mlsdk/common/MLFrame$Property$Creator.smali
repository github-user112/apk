.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field public ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

.field public formatType:I

.field public height:I

.field public itemIdentity:I

.field public quadrant:I

.field public timestamp:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
    .locals 11

    new-instance v10, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    iget v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->width:I

    iget v2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->height:I

    iget v3, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->quadrant:I

    iget v4, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->formatType:I

    iget v5, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->itemIdentity:I

    iget-wide v6, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->timestamp:J

    iget-object v8, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>(IIIIIJLcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;Lcom/huawei/hms/mlsdk/common/MLFrame$1;)V

    return-object v10
.end method

.method public setExt(Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-object p0
.end method

.method public setFormatType(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->formatType:I

    return-object p0
.end method

.method public setHeight(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->height:I

    return-object p0
.end method

.method public setItemIdentity(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->itemIdentity:I

    return-object p0
.end method

.method public setQuadrant(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->quadrant:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->timestamp:J

    return-object p0
.end method

.method public setWidth(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->width:I

    return-object p0
.end method
