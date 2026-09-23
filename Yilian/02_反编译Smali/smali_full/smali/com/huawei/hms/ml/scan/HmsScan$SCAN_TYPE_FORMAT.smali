.class public final enum Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCAN_TYPE_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum ARTICLE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum BOOK_MARK_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum CONTACT_DETAIL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum DRIVER_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum EMAIL_CONTENT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum EVENT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum ISBN_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum LOCATION_COORDINATE_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum PURE_TEXT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum SMS_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum TEL_PHONE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum URL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum VEHICLEINFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum WIFI_CONNECT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;


# instance fields
.field public final scanTypeFormat:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "ARTICLE_NUMBER_FORM"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ARTICLE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "EMAIL_CONTENT_FORM"

    const/4 v3, 0x1

    const/16 v4, 0x3ea

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EMAIL_CONTENT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "TEL_PHONE_NUMBER_FORM"

    const/4 v4, 0x2

    const/16 v5, 0x3eb

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->TEL_PHONE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "PURE_TEXT_FORM"

    const/4 v5, 0x3

    const/16 v6, 0x3ec

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->PURE_TEXT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "SMS_FORM"

    const/4 v6, 0x4

    const/16 v7, 0x3ed

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->SMS_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "URL_FORM"

    const/4 v7, 0x5

    const/16 v8, 0x3ee

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->URL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "WIFI_CONNECT_INFO_FORM"

    const/4 v8, 0x6

    const/16 v9, 0x3ef

    invoke-direct {v0, v1, v8, v9}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->WIFI_CONNECT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "EVENT_INFO_FORM"

    const/4 v9, 0x7

    const/16 v10, 0x3f0

    invoke-direct {v0, v1, v9, v10}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EVENT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "CONTACT_DETAIL_FORM"

    const/16 v10, 0x8

    const/16 v11, 0x3f1

    invoke-direct {v0, v1, v10, v11}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->CONTACT_DETAIL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "DRIVER_INFO_FORM"

    const/16 v11, 0x9

    const/16 v12, 0x3f2

    invoke-direct {v0, v1, v11, v12}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->DRIVER_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "LOCATION_COORDINATE_FORM"

    const/16 v12, 0xa

    const/16 v13, 0x3f3

    invoke-direct {v0, v1, v12, v13}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->LOCATION_COORDINATE_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "ISBN_NUMBER_FORM"

    const/16 v13, 0xb

    const/16 v14, 0x3f4

    invoke-direct {v0, v1, v13, v14}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ISBN_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "BOOK_MARK_FORM"

    const/16 v14, 0xc

    const/16 v15, 0x3f5

    invoke-direct {v0, v1, v14, v15}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->BOOK_MARK_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "VEHICLEINFO_FORM"

    const/16 v15, 0xd

    const/16 v14, 0x3f6

    invoke-direct {v0, v1, v15, v14}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->VEHICLEINFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    sget-object v14, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ARTICLE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v14, v1, v2

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EMAIL_CONTENT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->TEL_PHONE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->PURE_TEXT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->SMS_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->URL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->WIFI_CONNECT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EVENT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->CONTACT_DETAIL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v10

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->DRIVER_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v11

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->LOCATION_COORDINATE_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v12

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ISBN_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    aput-object v2, v1, v13

    sget-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->BOOK_MARK_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->scanTypeFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
    .locals 1

    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
    .locals 1

    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    return-object v0
.end method


# virtual methods
.method public getScanType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->scanTypeFormat:I

    return v0
.end method
