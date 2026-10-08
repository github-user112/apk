.class public La/a/b/r/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:Ljava/lang/String; = ""

.field public static B:Z = false

.field public static C:La/a/b/r/a; = null

.field public static a:Z = false

.field public static b:I = 0x2

.field public static c:I = 0x3

.field public static d:Z = false

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static g:I = 0x1

.field public static h:Z = false

.field public static i:I = 0x0

.field public static j:I = 0x0

.field public static k:Z = true

.field public static l:Z = false

.field public static m:Z = false

.field public static n:I = 0x1

.field public static o:I = 0x1

.field public static p:I = 0x0

.field public static q:I = 0x4

.field public static r:I = 0x0

.field public static s:Ljava/lang/String; = "usb0"

.field public static t:I = 0x0

.field public static u:Z = false

.field public static v:I = 0x0

.field public static w:I = 0x1

.field public static x:I = 0x0

.field public static y:I = 0x0

.field public static z:Ljava/lang/String; = ""


# instance fields
.field public D:I

.field public E:Ljava/util/concurrent/locks/Lock;

.field public F:Ljava/lang/String;

.field public G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/r/a;->D:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, La/a/b/r/a;->E:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/r/a;->F:Ljava/lang/String;

    iput-object v0, p0, La/a/b/r/a;->G:Ljava/util/HashMap;

    return-void
.end method

.method public static a(La/a/b/r/a;)Z
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "CONFIG_SAVE_AUDIO_FILE"

    const-string v2, "CONFIG_TARGET_BLUETOOTH_NAME"

    const-string v3, "CONFIG_WIFI_DIRECT_NAME"

    const-string v4, "CONFIG_WIRLESS_FREQUENCY"

    const-string v5, "CONFIG_WIRLESS_TYPE"

    const-string v6, "INPUT_DISABLE"

    const-string v7, "ENGINE_TYPE"

    const-string v8, "CONTENT_ENCRYPTION"

    const-string v9, "AUDIO_TRANSMISSION_MODE"

    const-string v10, "MEDIA_SAMPLE_RATE"

    const-string v11, "FOCUS_UI"

    const-string v12, "GPS_FORMAT"

    const-string v13, "VEHICLE_GPS"

    const-string v14, "SEND_ACTION_DOWN"

    const-string v15, "TRANSPARENT_SEND_TOUCH_EVENT"

    move-object/from16 v16, v1

    const-string v1, "BLUETOOTH_AUTO_PAIR"

    move-object/from16 v17, v2

    const-string v2, "BLUETOOTH_INTERNAL_UI"

    move-object/from16 v18, v3

    const-string v3, "NEED_MORE_DECODE_TIME"

    move-object/from16 v19, v4

    const-string v4, "VOICE_WAKEUP"

    move-object/from16 v20, v5

    const-string v5, "VOICE_MIC"

    move-object/from16 v21, v6

    const-string v6, "AUDIO_TTS_REQUEST_FOCUS"

    move-object/from16 v22, v7

    const-string v7, "AUDIO_TRACK_STREAM_TYPE"

    move-object/from16 v23, v8

    const-string v8, "AUDIO_TRACK_TYPE"

    move-object/from16 v24, v9

    const-string v9, "IPHONE_NCM_ETHERNET_NAME"

    move-object/from16 v25, v10

    const-string v10, "IPHONE_USB_CONNECT_TYPE"

    move-object/from16 v26, v11

    const-string v11, "CONNECT_TYPE_IPHONE"

    move-object/from16 v27, v12

    const-string v12, "AUDIO_TRACK_NUM"

    move-object/from16 v28, v13

    .line 1
    iget-object v13, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v29, v14

    const-string v14, "CarlifeConfUtil"

    const/16 v30, 0x0

    move-object/from16 v31, v15

    const/4 v15, 0x1

    if-nez v13, :cond_0

    new-array v0, v15, [Ljava/lang/Object;

    const-string v1, "propertyMap is null"

    aput-object v1, v0, v30

    invoke-static {v14, v0}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v15, "CONNECT_TYPE_ANDROID"

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const-string v13, "Android phones only support AOA connections"

    aput-object v13, v15, v30

    invoke-static {v14, v15}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v13, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v0, v11}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v11

    sput v11, La/a/b/r/a;->q:I

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VALUE_INT_CONNECT_TYPE_IPHONE = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, La/a/b/r/a;->q:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v30

    invoke-static {v14, v13}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v11, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0, v10}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v10

    sput v10, La/a/b/r/a;->r:I

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VALUE_INT_IPHONE_USB_CONNECT_TYPE = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, La/a/b/r/a;->r:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v30

    invoke-static {v14, v11}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v10, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0, v9}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, La/a/b/r/a;->s:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VALUE_STRING_IPHONE_NCM_ETHERNET_NAME = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, La/a/b/r/a;->s:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v30

    invoke-static {v14, v10}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v9, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "VALUE_INT_AUDIO_TRACK_NUM = "

    if-eqz v9, :cond_5

    :try_start_1
    invoke-virtual {v0, v12}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v9

    sput v9, La/a/b/r/a;->b:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, La/a/b/r/a;->b:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v30

    invoke-static {v14, v11}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v9, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0, v8}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v8

    sput v8, La/a/b/r/a;->e:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VALUE_INT_AUDIO_TRACK_TYPE = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, La/a/b/r/a;->e:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v30

    invoke-static {v14, v9}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v8, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0, v12}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v8

    sput v8, La/a/b/r/a;->b:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, La/a/b/r/a;->b:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v30

    invoke-static {v14, v9}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v8, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0, v7}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v7

    sput v7, La/a/b/r/a;->c:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VALUE_INT_AUDIO_TRACK_STREAM_TYPE = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, La/a/b/r/a;->c:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v30

    invoke-static {v14, v8}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v7, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0, v6}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, La/a/b/r/a;->d:Z

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VALUE_BOOL_AUDIO_FOCUS_REQUIRED = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, La/a/b/r/a;->d:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v30

    invoke-static {v14, v7}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v6, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v5}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v5

    sput v5, La/a/b/r/a;->f:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VALUE_INT_VOICE_MIC = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, La/a/b/r/a;->f:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v30

    invoke-static {v14, v6}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v5, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v4}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v4

    sput v4, La/a/b/r/a;->g:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VALUE_INT_VOICE_WAKEUP = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, La/a/b/r/a;->g:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v30

    invoke-static {v14, v5}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v4, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v3}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, La/a/b/r/a;->h:Z

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALUE_BOOL_NEED_MORE_DECODE_TIME = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, La/a/b/r/a;->h:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v30

    invoke-static {v14, v4}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v3, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v2

    sput v2, La/a/b/r/a;->i:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VALUE_INT_BLUETOOTH_INTERNAL_UI = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, La/a/b/r/a;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v30

    invoke-static {v14, v3}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v2, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->j:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_BLUETOOTH_AUTO_PAIR = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v2}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, La/a/b/r/a;->k:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_TRANSPARENT_SEND_TOUCH_EVENT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, La/a/b/r/a;->k:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v2}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, La/a/b/r/a;->l:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_SEND_ACTION_DOWN = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, La/a/b/r/a;->l:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v2}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, La/a/b/r/a;->m:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_BOOL_VEHICLE_GPS = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, La/a/b/r/a;->m:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->n:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_GPS_FORMAT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->o:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_FOCUS_UI = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->o:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->p:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_MEDIA_SAMPLE_RATE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->t:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_AUDIO_TRANSMISSION_MODE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->t:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, La/a/b/r/a;->u:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_CONTENT_ENCRYPTION = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, La/a/b/r/a;->u:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->v:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_ENGINE_TYPE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->v:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->w:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_IS_INPUT_DISABLE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->w:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->x:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_WIRLESS_TYPE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v2}, La/a/b/r/a;->e(Ljava/lang/String;)I

    move-result v1

    sput v1, La/a/b/r/a;->y:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_INT_WIRLESS_FREQUENCY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, La/a/b/r/a;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, La/a/b/r/a;->z:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_STRING_USE_BT_AUDIO = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, La/a/b/r/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, La/a/b/r/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, La/a/b/r/a;->A:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE_STRING_TARGET_BLUETOOTH_NAME = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, La/a/b/r/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v30

    invoke-static {v14, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iget-object v1, v0, La/a/b/r/a;->G:Ljava/util/HashMap;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v2}, La/a/b/r/a;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, La/a/b/r/a;->B:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE_BOOL_SAVE_AUDIO_FILE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, La/a/b/r/a;->B:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v30

    invoke-static {v14, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1d
    const/16 v30, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "update property get exception"

    aput-object v1, v0, v30

    invoke-static {v14, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v30
.end method

.method public static d()La/a/b/r/a;
    .locals 2

    sget-object v0, La/a/b/r/a;->C:La/a/b/r/a;

    if-nez v0, :cond_1

    const-class v0, La/a/b/r/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/a/b/r/a;->C:La/a/b/r/a;

    if-nez v1, :cond_0

    new-instance v1, La/a/b/r/a;

    invoke-direct {v1}, La/a/b/r/a;-><init>()V

    sput-object v1, La/a/b/r/a;->C:La/a/b/r/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, La/a/b/r/a;->C:La/a/b/r/a;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, La/a/b/r/a;->G:Ljava/util/HashMap;

    const-string v1, "CarlifeConfUtil"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "propertyMap is null"

    aput-object v0, p1, v3

    invoke-static {v1, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "get property fail: "

    invoke-static {v4, p1}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    const-string v0, "KEYCODE_HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "KEYCODE_PHONE_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "KEYCODE_PHONE_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-string v0, "KEYCODE_PHONE_END_MUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const-string v0, "KEYCODE_HFP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const-string v0, "KEYCODE_SELECTOR_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const-string v0, "KEYCODE_SELECTOR_PREVIOUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const-string v0, "KEYCODE_SETTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    const-string v0, "KEYCODE_MEDIA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const-string v0, "KEYCODE_RADIO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xa

    return p1

    :cond_9
    const-string v0, "KEYCODE_NAVI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xb

    return p1

    :cond_a
    const-string v0, "KEYCODE_SRC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xc

    return p1

    :cond_b
    const-string v0, "KEYCODE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0xd

    return p1

    :cond_c
    const-string v0, "KEYCODE_BACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0xe

    return p1

    :cond_d
    const-string v0, "KEYCODE_SEEK_SUB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0xf

    return p1

    :cond_e
    const-string v0, "KEYCODE_SEEK_ADD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x10

    return p1

    :cond_f
    const-string v0, "KEYCODE_VOLUME_SUB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x11

    return p1

    :cond_10
    const-string v0, "KEYCODE_VOLUME_ADD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p1, 0x12

    return p1

    :cond_11
    const-string v0, "KEYCODE_MUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p1, 0x13

    return p1

    :cond_12
    const-string v0, "KEYCODE_OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x14

    return p1

    :cond_13
    const-string v0, "KEYCODE_MOVE_LEFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p1, 0x15

    return p1

    :cond_14
    const-string v0, "KEYCODE_MOVE_RIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p1, 0x16

    return p1

    :cond_15
    const-string v0, "KEYCODE_MOVE_UP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p1, 0x17

    return p1

    :cond_16
    const-string v0, "KEYCODE_MOVE_DOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 p1, 0x18

    return p1

    :cond_17
    const-string v0, "KEYCODE_MOVE_UP_LEFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 p1, 0x19

    return p1

    :cond_18
    const-string v0, "KEYCODE_MOVE_UP_RIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p1, 0x1a

    return p1

    :cond_19
    const-string v0, "KEYCODE_MOVE_DOWN_LEFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 p1, 0x1b

    return p1

    :cond_1a
    const-string v0, "KEYCODE_MOVE_DOWN_RIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p1, 0x1c

    return p1

    :cond_1b
    const-string v0, "KEYCODE_TEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p1, 0x1d

    return p1

    :cond_1c
    const-string v0, "KEYCODE_MAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 p1, 0x1e

    return p1

    :cond_1d
    const-string v0, "KEYCODE_MEDIA_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 p1, 0x1f

    return p1

    :cond_1e
    const-string v0, "KEYCODE_MEDIA_STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p1, 0x20

    return p1

    :cond_1f
    const-string v0, "KEYCODE_VR_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 p1, 0x21

    return p1

    :cond_20
    const-string v0, "KEYCODE_VR_STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p1, 0x22

    return p1

    :cond_21
    const-string v0, "KEYCODE_NUMBER_0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 p1, 0x23

    return p1

    :cond_22
    const-string v0, "KEYCODE_NUMBER_1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 p1, 0x24

    return p1

    :cond_23
    const-string v0, "KEYCODE_NUMBER_2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 p1, 0x25

    return p1

    :cond_24
    const-string v0, "KEYCODE_NUMBER_3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 p1, 0x26

    return p1

    :cond_25
    const-string v0, "KEYCODE_NUMBER_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 p1, 0x27

    return p1

    :cond_26
    const-string v0, "KEYCODE_NUMBER_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p1, 0x28

    return p1

    :cond_27
    const-string v0, "KEYCODE_NUMBER_6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 p1, 0x29

    return p1

    :cond_28
    const-string v0, "KEYCODE_NUMBER_7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p1, 0x2a

    return p1

    :cond_29
    const-string v0, "KEYCODE_NUMBER_8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 p1, 0x2b

    return p1

    :cond_2a
    const-string v0, "KEYCODE_NUMBER_9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 p1, 0x2c

    return p1

    :cond_2b
    const-string v0, "KEYCODE_NUMBER_STAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p1, 0x2d

    return p1

    :cond_2c
    const-string v0, "KEYCODE_NUMBER_POUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p1, 0x2e

    return p1

    :cond_2d
    const-string v0, "KEYCODE_NUMBER_ADD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 p1, 0x31

    return p1

    :cond_2e
    const-string v0, "KEYCODE_NUMBER_DEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p1, 0x2f

    return p1

    :cond_2f
    const-string v0, "KEYCODE_NUMBER_CLEAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 p1, 0x30

    return p1

    :cond_30
    const-string v0, "KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, -0x2

    return p1

    :cond_31
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "get hard key code error"

    aput-object v1, p1, v0

    const-string v0, "CarlifeConfUtil"

    invoke-static {v0, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    return p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, La/a/b/r/a;->G:Ljava/util/HashMap;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "propertyMap is null"

    aput-object v2, p1, v0

    const-string v0, "CarlifeConfUtil"

    invoke-static {v0, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public f(Ljava/lang/String;)I
    .locals 3

    const-string v0, "VOICE_WAKEUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, La/a/b/r/a;->g:I

    return p1

    :cond_0
    const-string v0, "AUDIO_TRACK_NUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, La/a/b/r/a;->b:I

    return p1

    :cond_1
    const-string v0, "AUDIO_TRACK_STREAM_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, La/a/b/r/a;->c:I

    return p1

    :cond_2
    const-string v0, "AUDIO_TRACK_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p1, La/a/b/r/a;->e:I

    return p1

    :cond_3
    const-string v0, "VOICE_MIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p1, La/a/b/r/a;->f:I

    return p1

    :cond_4
    const-string v0, "MEDIA_SAMPLE_RATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget p1, La/a/b/r/a;->p:I

    return p1

    :cond_5
    const-string v0, "CONNECT_TYPE_ANDROID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "CONNECT_TYPE_IPHONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p1, La/a/b/r/a;->q:I

    return p1

    :cond_7
    const-string v0, "AUDIO_TRANSMISSION_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, La/a/b/r/a;->t:I

    return p1

    :cond_8
    const-string v0, "IPHONE_USB_CONNECT_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p1, La/a/b/r/a;->r:I

    return p1

    :cond_9
    const-string v0, "GPS_FORMAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p1, La/a/b/r/a;->n:I

    return p1

    :cond_a
    const-string v0, "ENGINE_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget p1, La/a/b/r/a;->v:I

    return p1

    :cond_b
    const-string v0, "INPUT_DISABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget p1, La/a/b/r/a;->w:I

    return p1

    :cond_c
    const-string v0, "CONFIG_WIRLESS_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget p1, La/a/b/r/a;->x:I

    return p1

    :cond_d
    const-string v0, "CONFIG_WIRLESS_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget p1, La/a/b/r/a;->y:I

    return p1

    :cond_e
    const-string v0, "BLUETOOTH_INTERNAL_UI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget p1, La/a/b/r/a;->i:I

    return p1

    :cond_f
    const-string v0, "BLUETOOTH_AUTO_PAIR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget p1, La/a/b/r/a;->j:I

    return p1

    :cond_10
    const-string v0, "FOCUS_UI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget p1, La/a/b/r/a;->o:I

    return p1

    :cond_11
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "can not find key: "

    invoke-static {v2, p1}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "CarlifeConfUtil"

    invoke-static {p1, v0}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, -0x80000000

    return p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, La/a/b/r/a;->G:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CarlifeConfUtil"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "propertyMap is null"

    aput-object v0, p1, v1

    invoke-static {v3, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "get property fail: "

    invoke-static {v5, p1}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method public h()V
    .locals 1

    iget v0, p0, La/a/b/r/a;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/b/r/a;->D:I

    new-instance v0, La/a/b/r/a$a;

    invoke-direct {v0, p0}, La/a/b/r/a$a;-><init>(La/a/b/r/a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
