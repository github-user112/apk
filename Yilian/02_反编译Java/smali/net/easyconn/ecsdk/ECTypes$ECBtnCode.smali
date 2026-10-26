.class public final enum Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECBtnCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_APP_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_APP_FRONT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_BOTTOMLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_BOTTOMRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_CANCEL_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_ENFORCE_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_ENFORCE_OR_CANCEL_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_BACKWARD:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_DOWN:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_ENTER:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_FORWARD:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_LEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_RIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_FOCUS_UP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_KEY_PARALLEL_WORLD_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_KEY_PARALLEL_WORLD_HOME:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_KEY_PARALLEL_WORLD_MENU:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MAX:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MODE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_PLAY_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_MUSIC_STOP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_NAVIGATION:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TALKIE_GROUP_CANCEL_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TALKIE_GROUP_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TALKIE_GROUP_SWITCH_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TOPLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_TOPRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_VOLUME_DOWN:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

.field public static final enum EC_BTN_VOLUME_UP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v1, "EC_BTN_TALKIE"

    const/4 v2, 0x0

    const/16 v3, 0x1010

    invoke-direct {v0, v1, v2, v3}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v3, "EC_BTN_TALKIE_GROUP_MUTE"

    const/4 v4, 0x1

    const/16 v5, 0x1011

    invoke-direct {v1, v3, v4, v5}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE_GROUP_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v5, "EC_BTN_TALKIE_GROUP_CANCEL_MUTE"

    const/4 v6, 0x2

    const/16 v7, 0x1012

    invoke-direct {v3, v5, v6, v7}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE_GROUP_CANCEL_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v5, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v7, "EC_BTN_TALKIE_GROUP_SWITCH_MUTE"

    const/4 v8, 0x3

    const/16 v9, 0x1013

    invoke-direct {v5, v7, v8, v9}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE_GROUP_SWITCH_MUTE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v7, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v9, "EC_BTN_NAVIGATION"

    const/4 v10, 0x4

    const/16 v11, 0x1020

    invoke-direct {v7, v9, v10, v11}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_NAVIGATION:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v9, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v11, "EC_BTN_VOICE_ASSISTANT"

    const/4 v12, 0x5

    const/16 v13, 0x1030

    invoke-direct {v9, v11, v12, v13}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v11, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v13, "EC_BTN_MUSIC_PLAY"

    const/4 v14, 0x6

    const/16 v15, 0x1040

    invoke-direct {v11, v13, v14, v15}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v13, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MUSIC_NEXT"

    const/4 v14, 0x7

    const/16 v12, 0x1041

    invoke-direct {v13, v15, v14, v12}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v12, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MUSIC_PREVIOUS"

    const/16 v14, 0x8

    const/16 v10, 0x1042

    invoke-direct {v12, v15, v14, v10}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v10, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MUSIC_PAUSE"

    const/16 v14, 0x9

    const/16 v8, 0x1043

    invoke-direct {v10, v15, v14, v8}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MUSIC_STOP"

    const/16 v14, 0xa

    const/16 v6, 0x1044

    invoke-direct {v8, v15, v14, v6}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_STOP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MUSIC_PLAY_PAUSE"

    const/16 v14, 0xb

    const/16 v4, 0x1047

    invoke-direct {v6, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_VOLUME_UP"

    const/16 v14, 0xc

    const/16 v2, 0x1050

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOLUME_UP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_VOLUME_DOWN"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x1051

    invoke-direct {v2, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOLUME_DOWN:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_TOPLEFT"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x1060

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_TOPRIGHT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x1061

    invoke-direct {v2, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_BOTTOMLEFT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x1062

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_BOTTOMRIGHT"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x1063

    invoke-direct {v2, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_MODE"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x1070

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MODE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_APP_FRONT"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x1080

    invoke-direct {v2, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_APP_FRONT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_APP_BACK"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1090

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_APP_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_ENFORCE_LANDSCAPE"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x10a0

    invoke-direct {v2, v15, v14, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_ENFORCE_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v15, "EC_BTN_CANCEL_LANDSCAPE"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x10a1

    invoke-direct {v4, v15, v14, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_CANCEL_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_ENFORCE_OR_CANCEL_LANDSCAPE"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x10a2

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_ENFORCE_OR_CANCEL_LANDSCAPE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_BACKWARD"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x1101

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_BACKWARD:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_FORWARD"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1102

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_FORWARD:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_LEFT"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1103

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_LEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_RIGHT"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1104

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_RIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_UP"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1105

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_UP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_DOWN"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1106

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_DOWN:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_FOCUS_ENTER"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1107

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_FOCUS_ENTER:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_KEY_PARALLEL_WORLD_MENU"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1200

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_MENU:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_KEY_PARALLEL_WORLD_HOME"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x1201

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_HOME:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_KEY_PARALLEL_WORLD_BACK"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x1202

    invoke-direct {v2, v14, v15, v4}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    new-instance v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const-string v14, "EC_BTN_MAX"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x1203

    invoke-direct {v4, v14, v15, v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MAX:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const/16 v2, 0x23

    new-array v2, v2, [Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

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

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v4, v2, v0

    sput-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

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

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;
    .locals 1

    const-class v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    return-object p0
.end method

.method public static values()[Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->$VALUES:[Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    invoke-virtual {v0}, [Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->value:I

    return v0
.end method
