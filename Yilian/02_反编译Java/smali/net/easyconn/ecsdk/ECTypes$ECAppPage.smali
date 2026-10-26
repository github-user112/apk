.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECAppPage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECAppPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECAppPage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_4S_SHOP:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_ADD_OTA:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_ANDROID_PARALLEL_APP_MANAGER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_ANDROID_PARALLEL_WORLD:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_APP_MANAGER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_CAR_PARK:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MAIN:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MUSIC_NATIVE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MUSIC_QQ:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MUSIC_RADIO:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_MUSIC_XMLY:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_NAVIGATION:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_NAVI_GAS_STATION:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_NAVI_WORK:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_PERSONAL_CENTER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_PHONE_SCREEN:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_WECHAT:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EC_APP_PAGE_WECHAT_MSG:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

.field public static final enum EP_APP_PAGE_NAVI_HOME:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v1, "EC_APP_PAGE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_NAVIGATION:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v4, "EC_APP_PAGE_MUSIC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v6, "EC_APP_PAGE_VR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_VR:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v8, "EC_APP_PAGE_TALKIE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v10, "EP_APP_PAGE_NAVI_HOME"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EP_APP_PAGE_NAVI_HOME:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v10, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v12, "EC_APP_PAGE_NAVI_WORK"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_NAVI_WORK:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v12, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v14, "EC_APP_PAGE_MAIN"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MAIN:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v14, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v13, "EC_APP_PAGE_NAVI_GAS_STATION"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_NAVI_GAS_STATION:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v13, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v15, "EC_APP_PAGE_CAR_PARK"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_CAR_PARK:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v15, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v11, "EC_APP_PAGE_4S_SHOP"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_4S_SHOP:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v9, "EC_APP_PAGE_MUSIC_XMLY"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MUSIC_XMLY:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v9, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v7, "EC_APP_PAGE_MUSIC_QQ"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MUSIC_QQ:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v5, "EC_APP_PAGE_MUSIC_RADIO"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MUSIC_RADIO:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v3, "EC_APP_PAGE_MUSIC_NATIVE"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_MUSIC_NATIVE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v2, "EC_APP_PAGE_WECHAT"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_WECHAT:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v7, "EC_APP_PAGE_PERSONAL_CENTER"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_PERSONAL_CENTER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v5, "EC_APP_PAGE_APP_MANAGER"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_APP_MANAGER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v3, "EC_APP_PAGE_ADD_OTA"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_ADD_OTA:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v2, "EC_APP_PAGE_WECHAT_MSG"

    move-object/from16 v21, v5

    const/16 v5, 0x13

    invoke-direct {v3, v2, v7, v5}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_WECHAT_MSG:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v7, "EC_APP_PAGE_PHONE"

    move-object/from16 v22, v3

    const/16 v3, 0x14

    invoke-direct {v2, v7, v5, v3}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v5, "EC_APP_PAGE_ANDROID_PARALLEL_WORLD"

    move-object/from16 v23, v2

    const/16 v2, 0x64

    invoke-direct {v7, v5, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_ANDROID_PARALLEL_WORLD:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v5, "EC_APP_PAGE_PHONE_SCREEN"

    const/16 v3, 0x15

    move-object/from16 v24, v7

    const/16 v7, 0x65

    invoke-direct {v2, v5, v3, v7}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_PHONE_SCREEN:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const-string v7, "EC_APP_PAGE_ANDROID_PARALLEL_APP_MANAGER"

    const/16 v3, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x66

    invoke-direct {v5, v7, v3, v2}, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->EC_APP_PAGE_ANDROID_PARALLEL_APP_MANAGER:Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const/16 v2, 0x17

    new-array v2, v2, [Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v5, v2, v0

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECAppPage;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECAppPage;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECAppPage;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppPage;->value:I

    return v0
.end method
