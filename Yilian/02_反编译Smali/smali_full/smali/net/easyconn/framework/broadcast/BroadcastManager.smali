.class public Lnet/easyconn/framework/broadcast/BroadcastManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/i/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/framework/broadcast/BroadcastManager$EcConnectStateReceiver;,
        Lnet/easyconn/framework/broadcast/BroadcastManager$EcShortcutBroadcastReceiver;,
        Lnet/easyconn/framework/broadcast/BroadcastManager$b;,
        Lnet/easyconn/framework/broadcast/BroadcastManager$c;,
        Lnet/easyconn/framework/broadcast/BroadcastManager$d;,
        Lnet/easyconn/framework/broadcast/BroadcastManager$e;
    }
.end annotation


# static fields
.field public static final BROADCAST_AIRPLAY_PLAY:Ljava/lang/String; = "net.easyconn.airplay.play"

.field public static final BROADCAST_AIRPLAY_STOP:Ljava/lang/String; = "net.easyconn.airplay.stop"

.field public static final BROADCAST_ANDROID_TAB:Ljava/lang/String; = "net.easyconn.android.tab"

.field public static final BROADCAST_APP_MUSIC_STATUS:Ljava/lang/String; = "net.easyconn.music.status"

.field public static final BROADCAST_APP_OPEN:Ljava/lang/String; = "net.easyconn.app.open"

.field public static final BROADCAST_APP_OPEN_STATE:Ljava/lang/String; = "net.easyconn.app.open.state"

.field public static final BROADCAST_APP_PAUSE:Ljava/lang/String; = "net.easyconn.app.pause"

.field public static final BROADCAST_APP_QUIT:Ljava/lang/String; = "net.easyconn.app.quit"

.field public static final BROADCAST_APP_RESUME:Ljava/lang/String; = "net.easyconn.app.resume"

.field public static final BROADCAST_AUDIOFOCUS_MUSIC_STATUS:Ljava/lang/String; = "net.easyconn.audiofocus.music.status"

.field public static final BROADCAST_BACKING_UP_START:Ljava/lang/String; = "net.easyconn.BACKING_UP_START"

.field public static final BROADCAST_BACKING_UP_STOP:Ljava/lang/String; = "net.easyconn.BACKING_UP_STOP"

.field public static final BROADCAST_BT_A2DP_ACQUIRE:Ljava/lang/String; = "net.easyconn.a2dp.acquire"

.field public static final BROADCAST_BT_A2DP_ACQUIRE_NG:Ljava/lang/String; = "net.easyconn.a2dp.acquire.fail"

.field public static final BROADCAST_BT_A2DP_RELEASE:Ljava/lang/String; = "net.easyconn.a2dp.release"

.field public static final BROADCAST_BT_CALL_PHONE:Ljava/lang/String; = "net.easyconn.bluetooth.call"

.field public static final BROADCAST_BT_CHECKSTATUS:Ljava/lang/String; = "net.easyconn.bt.checkstatus"

.field public static final BROADCAST_BT_CLOSED:Ljava/lang/String; = "net.easyconn.bt.closed"

.field public static final BROADCAST_BT_CONNECTED:Ljava/lang/String; = "net.easyconn.bt.connected"

.field public static final BROADCAST_BT_INFO:Ljava/lang/String; = "net.easyconn.bt.info"

.field public static final BROADCAST_BT_OPENED:Ljava/lang/String; = "net.easyconn.bt.opened"

.field public static final BROADCAST_BT_SETTING:Ljava/lang/String; = "net.easyconn.bt.setting"

.field public static final BROADCAST_CARCONTROL_CMD:Ljava/lang/String; = "net.easyconn.carcontrol.cmd"

.field public static final BROADCAST_CARCONTROL_REQUEST:Ljava/lang/String; = "net.easyconn.carcontrol.request"

.field public static final BROADCAST_CARCONTROL_RESPONSE:Ljava/lang/String; = "net.easyconn.carcontrol.response"

.field public static final BROADCAST_CAR_CUSTOM_VR_SHOW_STATUS:Ljava/lang/String; = "net.easyconn.car.vr.show.status"

.field public static final BROADCAST_CONNECT_CHECK_STATUS:Ljava/lang/String; = "net.easyconn.connect.checkstatus"

.field public static final BROADCAST_CONNECT_TYPE_CHANGED:Ljava/lang/String; = "net.easyconn.CONNECT_TYPE_CHANGED"

.field public static final BROADCAST_CORE_SERVICE_RELEASE:Ljava/lang/String; = "net.easyconn.core.service.release"

.field public static final BROADCAST_DAYORNIGHT_CHECKSTATUS:Ljava/lang/String; = "net.easyconn.navi.checkstatus"

.field public static final BROADCAST_DRIVEMODE_CHECKSTATUS:Ljava/lang/String; = "net.easyconn.drivemode.checkstatus"

.field public static final BROADCAST_DRIVEMODE_CLOSED:Ljava/lang/String; = "net.easyconn.drivemode.closed"

.field public static final BROADCAST_DRIVEMODE_OPENED:Ljava/lang/String; = "net.easyconn.drivemode.opened"

.field public static final BROADCAST_EASYCONN_NAVI_STARTED:Ljava/lang/String; = "net.easyconn.navigation.STARTED"

.field public static final BROADCAST_EASYCONN_NAVI_STOPPED:Ljava/lang/String; = "net.easyconn.navigation.STOPPED"

.field public static final BROADCAST_EC_EXIT_APP:Ljava/lang/String; = "net.easyconn.action.EXIT_APP"

.field public static final BROADCAST_EC_REGISTED:Ljava/lang/String; = "net.easyconn.registed"

.field public static final BROADCAST_EC_SHORTCUTS:Ljava/lang/String; = "net.easyconn.shortcuts"

.field public static final BROADCAST_EC_SWITCH_BACKGROUND:Ljava/lang/String; = "net.easyconn.action.SWITCH_BACKGROUND"

.field public static final BROADCAST_EC_VR_TEXT:Ljava/lang/String; = "net.easyconn.vr.text"

.field public static final BROADCAST_GPS_INFO:Ljava/lang/String; = "net.easyconn.gps"

.field public static final BROADCAST_INSTALL_EC:Ljava/lang/String; = "net.easyconn.install.ec"

.field public static final BROADCAST_IOS_TAB:Ljava/lang/String; = "net.easyconn.ios.tab"

.field public static final BROADCAST_IPHONE_PAUSE:Ljava/lang/String; = "net.easyconn.iphone.pause"

.field public static final BROADCAST_IPHONE_RESUME:Ljava/lang/String; = "net.easyconn.iphone.resume"

.field public static final BROADCAST_KEY_CODE:Ljava/lang/String; = "net.easyconn.KEYCODE"

.field public static final BROADCAST_LINK_IN:Ljava/lang/String; = "net.easyconn.link.in"

.field public static final BROADCAST_LINK_OUT:Ljava/lang/String; = "net.easyconn.link.out"

.field public static final BROADCAST_LINK_STATUS_CHECK:Ljava/lang/String; = "net.easyconn.link.checkstatus"

.field public static final BROADCAST_MEDIACODEC_ACQUIRE:Ljava/lang/String; = "net.easyconn.mediacodec.acquire"

.field public static final BROADCAST_MEDIACODEC_RELEASE:Ljava/lang/String; = "net.easyconn.mediacodec.release"

.field public static final BROADCAST_MIRROR_CHECKSTATUS:Ljava/lang/String; = "net.easyconn.mirror.checkstatus"

.field public static final BROADCAST_MIRROR_IN:Ljava/lang/String; = "net.easyconn.mirror.in"

.field public static final BROADCAST_MIRROR_OUT:Ljava/lang/String; = "net.easyconn.mirror.out"

.field public static final BROADCAST_MIRROR_PAUSE:Ljava/lang/String; = "net.easyconn.screen.pause"

.field public static final BROADCAST_MIRROR_RESUME:Ljava/lang/String; = "net.easyconn.screen.resume"

.field public static final BROADCAST_MIRROR_SAME_MODE:Ljava/lang/String; = "net.easyconn.screen.mirroring_mode"

.field public static final BROADCAST_MIRROR_SAME_MODE_QUIT:Ljava/lang/String; = "net.easyconn.screen.mirroring_mode.quit"

.field public static final BROADCAST_MIRROR_SENDSTATUS:Ljava/lang/String; = "net.easyconn.mirror.sendstatus"

.field public static final BROADCAST_NAVIGATION_STATUS:Ljava/lang/String; = "net.easyconn.navigation.status"

.field public static final BROADCAST_NAVI_DAYTIME:Ljava/lang/String; = "net.easyconn.navi.daytime"

.field public static final BROADCAST_NAVI_NIGHT:Ljava/lang/String; = "net.easyconn.navi.night"

.field public static final BROADCAST_NEXT_MUSIC:Ljava/lang/String; = "net.easyconn.music.next"

.field public static final BROADCAST_PARALLEL_WORLD_BACK:Ljava/lang/String; = "net.easyconn.parallel.world.back"

.field public static final BROADCAST_PARALLEL_WORLD_HOME:Ljava/lang/String; = "net.easyconn.parallel.world.home"

.field public static final BROADCAST_PARALLEL_WORLD_MENU:Ljava/lang/String; = "net.easyconn.parallel.world.menu"

.field public static final BROADCAST_PAUSE_MUSIC:Ljava/lang/String; = "net.easyconn.music.pause"

.field public static final BROADCAST_PHONE_TIME:Ljava/lang/String; = "net.easyconn.phone.time"

.field public static final BROADCAST_PLAY_MUSIC:Ljava/lang/String; = "net.easyconn.music.play"

.field public static final BROADCAST_PLAY_PAUSE_MUSIC:Ljava/lang/String; = "net.easyconn.music.play.pause"

.field public static final BROADCAST_PRE_MUSIC:Ljava/lang/String; = "net.easyconn.music.previous"

.field public static final BROADCAST_QR_LINK_SWITCH_ANDROID:Ljava/lang/String; = "net.easyconn.qrlink.switch.android"

.field public static final BROADCAST_QR_LINK_SWITCH_IOS:Ljava/lang/String; = "net.easyconn.qrlink.switch.ios"

.field public static final BROADCAST_RECORD_START:Ljava/lang/String; = "net.easyconn.start.record"

.field public static final BROADCAST_RECORD_STOP:Ljava/lang/String; = "net.easyconn.stop.record"

.field public static final BROADCAST_SPEED_PLAY_ACTION:Ljava/lang/String; = "com.zjinnova.zlink"

.field public static final BROADCAST_SPEED_PLAY_STATUS_ENTER:Ljava/lang/String; = "ENTER"

.field public static final BROADCAST_SPEED_PLAY_STATUS_EXIT:Ljava/lang/String; = "EXIT"

.field public static final BROADCAST_SPEED_PLAY_STATUS_MAIN_PAGE_SHOW:Ljava/lang/String; = "MAIN_PAGE_SHOW"

.field public static final BROADCAST_START_EC:Ljava/lang/String; = "net.easyconn.start.ec"

.field public static final BROADCAST_START_VR:Ljava/lang/String; = "net.easyconn.start.vr"

.field public static final BROADCAST_STOP_EASYCONN_NAVI:Ljava/lang/String; = "net.easyconn.navigation.STOP_EASYCONN_NAVI"

.field public static final BROADCAST_STOP_LOCAL_NAVI:Ljava/lang/String; = "net.easyconn.navigation.STOP_LOCAL_NAVI"

.field public static final BROADCAST_STOP_VR:Ljava/lang/String; = "net.easyconn.stop.vr"

.field public static final BROADCAST_TYPE_ACION:I = 0x0

.field public static final BROADCAST_TYPE_INTENT:I = 0x1

.field public static final BROADCAST_VR_STATUS:Ljava/lang/String; = "net.easyconn.vr.status"

.field public static final BROADCAST_VR_TEXT_STATUS:Ljava/lang/String; = "net.easyconn.carvr.status"

.field public static final BROADCAST_VR_TIPS:Ljava/lang/String; = "net.easyconn.vr.tips"

.field public static final BROADCAST_WEATHER_INFO:Ljava/lang/String; = "net.easyconn.weather.info"

.field public static final DIRECTION_113:I = 0x71

.field public static final DIRECTION_158:I = 0x9e

.field public static final DIRECTION_203:I = 0xcb

.field public static final DIRECTION_23:I = 0x17

.field public static final DIRECTION_248:I = 0xf8

.field public static final DIRECTION_293:I = 0x125

.field public static final DIRECTION_338:I = 0x152

.field public static final DIRECTION_68:I = 0x44

.field public static final EC_APP_TYPE:Ljava/lang/String; = "ec_app_type"

.field public static final EC_CARCONTROL_CMDS:Ljava/lang/String; = "key_ec_carcontrol_cmds"

.field public static final EC_CARCONTROL_SUPPORT_GLOBAL_NO_WAKEUP:Ljava/lang/String; = "key_ec_carcontrol_support_global_no_wakeup"

.field public static final EC_CARCONTROL_WORDS:Ljava/lang/String; = "key_ec_carcontrol_words"

.field public static final EXTRA_AUDIOFOCUS_MUSIC_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_MUSIC_INFO:Ljava/lang/String; = "ec_music_info"

.field public static final SUDING_ACTION_PROP_KEY:Ljava/lang/String; = "sys.suding.speedplay.apk"

.field public static final VR_STATUS_END:I = 0x0

.field public static final VR_STATUS_START:I = 0x1

.field public static final VR_TEXT_STATUS_END:I = 0x0

.field public static final VR_TEXT_STATUS_START:I = 0x1

.field public static mCurrentConnectStatus:Z = false

.field public static mCurrentLinkStatus:Z = false

.field public static sdkManager:Lf/a/i/i/q;


# instance fields
.field public intentFilter:Landroid/content/IntentFilter;

.field public isInMirroringMode:Z

.field public isNaviStarted:Z

.field public isVrStarted:Z

.field public mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mKeyCodeActionListener:Lnet/easyconn/framework/broadcast/BroadcastManager$d;

.field public mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

.field public mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

.field public sudingAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.zjinnova.zlink"

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mKeyCodeActionListener:Lnet/easyconn/framework/broadcast/BroadcastManager$d;

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isVrStarted:Z

    iput-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isNaviStarted:Z

    iput-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode:Z

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 1
    iget-object p1, p1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a:Lf/a/i/i/q;

    .line 2
    sput-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BroadcastManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lnet/easyconn/framework/broadcast/BroadcastManager$a;

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager$a;-><init>(Lnet/easyconn/framework/broadcast/BroadcastManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "context is not EasyConnectService"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lnet/easyconn/framework/broadcast/BroadcastManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentConnectStatus:Z

    return v0
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentLinkStatus:Z

    return v0
.end method

.method public static getAppMusicStatusIntent(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.music.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->status:I

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->page:I

    const-string v3, "page"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->artist:Ljava/lang/String;

    const-string v3, "artist"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->album:Ljava/lang/String;

    const-string v3, "album"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->albumArtist:Ljava/lang/String;

    const-string v3, "albumArtist"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->length:J

    const-string p0, "length"

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "ec_music_info"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getBroadcastExtraString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    const-string v4, ";"

    if-eqz v3, :cond_2

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(int) = "

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(String) = "

    goto :goto_1

    :cond_3
    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(Obj) = "

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendBroadcast intent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Extra = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->getBroadcastExtraString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendBroadcast action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendCarControlRequestBroadcast(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.carcontrol.request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, " sendBroadcast action="

    invoke-static {p0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static sendMusicFocusStatusBroadcast(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.audiofocus.music.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, " sendBroadcast action="

    invoke-static {p0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " musicStatus = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private sendNaviInfo(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V
    .locals 6

    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->carDirection:I

    const/16 v1, 0x152

    if-gt v0, v1, :cond_7

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x44

    if-le v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x71

    if-le v0, v3, :cond_2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/16 v3, 0x9e

    if-le v0, v2, :cond_3

    if-gt v0, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/16 v2, 0xcb

    if-le v0, v3, :cond_4

    if-gt v0, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/16 v3, 0xf8

    if-le v0, v2, :cond_5

    if-gt v0, v3, :cond_5

    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    const/16 v2, 0x125

    if-le v0, v3, :cond_6

    if-gt v0, v2, :cond_6

    const/4 v0, 0x6

    goto :goto_1

    :cond_6
    if-le v0, v2, :cond_8

    if-gt v0, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x0

    :cond_8
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.easyconn.navigation.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;->getValue()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v3, :cond_9

    iget-object v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;->getValue()I

    move-result v2

    const-string v4, "status"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    iget-object v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->currentRoad:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->currentRoad:Ljava/lang/String;

    const-string v4, "currentRoad"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-lt v0, v3, :cond_b

    const-string v2, "carDirection"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraType:Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;->getValue()I

    move-result v0

    if-lt v0, v3, :cond_c

    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraType:Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECNaviCameraType;->getValue()I

    move-result v0

    const-string v2, "cameraType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraSpeed:I

    if-lt v0, v3, :cond_d

    const-string v2, "cameraSpeed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_d
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->cameraDistance:I

    if-lt v0, v3, :cond_e

    const-string v2, "cameraDistance"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e
    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->naviIcon:Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;->getValue()I

    move-result v0

    if-lt v0, v3, :cond_f

    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->naviIcon:Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;

    invoke-virtual {v0}, Lnet/easyconn/ecsdk/ECTypes$ECNaviIcon;->getValue()I

    move-result v0

    const-string v2, "naviIcon"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_f
    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->nextRoad:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->nextRoad:Ljava/lang/String;

    const-string v2, "nextRoad"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingDistance:I

    if-lt v0, v3, :cond_11

    const-string v2, "roadRemainingDistance"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_11
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->roadRemainingTime:I

    if-lt v0, v3, :cond_12

    const-string v2, "roadRemainingTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_12
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingDistance:I

    if-lt v0, v3, :cond_13

    const-string v2, "destinationRemainingDistance"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_13
    iget v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->destinationRemainingTime:I

    if-lt v0, v3, :cond_14

    const-string v2, "destinationRemainingTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_14
    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->status:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;->EC_NAVI_STATUS_ACTIVE:Lnet/easyconn/ecsdk/ECTypes$ECNaviStatus;

    if-ne v0, v2, :cond_15

    iget-wide v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_15

    const-string v0, "arriveTime"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent extra arriveTime: "

    invoke-static {v2, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTimeZone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->arriveTimeZone:Ljava/lang/String;

    const-string v2, "arriveTimeZone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    const-string v0, "intent extra : "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendQrLinkBroadcast(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "net.easyconn.qrlink.switch.ios"

    goto :goto_0

    :cond_0
    const-string p1, "net.easyconn.qrlink.switch.android"

    :goto_0
    invoke-static {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkBtStatusOnBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.bt.checkstatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "checkBtStatusOnBroadcast action = net.easyconn.bt.checkstatus"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public handleBTStatus(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "pin"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "net.easyconn.bt.connected"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "name"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v0, "BT CONNECTED"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    .line 1
    iget-object v0, v0, Lf/a/i/i/q;->w:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    array-length v2, p1

    if-lez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT CONNECTED name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bluetoothName = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CONNECTED_SAME:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-virtual {v0, v2, v3}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onBTConnectStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    array-length p1, p1

    if-lez p1, :cond_3

    if-nez v3, :cond_c

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto/16 :goto_2

    :cond_3
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_UNCONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "net.easyconn.bt.opened"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "BT OPENED"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onBTConnectStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    sget-object v1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v5, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_UNCONNECTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    invoke-virtual {v1, v4, v5}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mac"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive BT msg name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; pin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; mac = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    sget-object v5, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-nez p1, :cond_7

    move-object p1, v6

    :cond_7
    if-nez v4, :cond_8

    move-object v4, v6

    :cond_8
    if-eqz v5, :cond_9

    .line 3
    :try_start_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "address"

    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, v5, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Le/a/c/a/a;->I(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "net.easyconn.bt.closed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "BT CLOSED"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onBTConnectStatus(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_BLUETOOTH:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_CLOSED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_2
    invoke-virtual {p1, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public handleBackingUp(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_REVERSING:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STARTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_REVERSING:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_0
    invoke-virtual {p1, v0, v1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    return-void
.end method

.method public handleDriveModeStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STARTED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;->EC_CAR_STATUS_STOPPED:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;

    :goto_0
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;->EC_CAR_DRIVINGMODE:Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;

    invoke-virtual {v0, v1, p1}, Lf/a/i/i/q;->c0(Lnet/easyconn/ecsdk/ECTypes$ECCarStatusType;Lnet/easyconn/ecsdk/ECTypes$ECCarStatusValue;)V

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz p1, :cond_2

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public handleKeyCode(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "ECBtnEventType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ECBtnCode"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyCodeFromGWM ecBtnEventType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "| ecBtnCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mKeyCodeActionListener:Lnet/easyconn/framework/broadcast/BroadcastManager$d;

    if-eqz v1, :cond_3

    check-cast v1, Lf/a/k/m0/r0;

    if-eqz v1, :cond_2

    .line 1
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->getValue()I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyAction keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->getValue()I

    move-result v2

    const v3, 0x13880

    if-ne v0, v2, :cond_1

    iget-object v1, v1, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    const/16 v2, 0xe

    const-string v4, "EC_MIRROR_SUCCEED_KEY_VR_CLICK"

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_LONG_PRESS:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {v2}, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v1, v1, Lf/a/k/m0/r0;->d:Lf/a/i/j/c;

    const/16 v2, 0xf

    const-string v4, "EC_MIRROR_SUCCEED_KEY_VR_LONG_PRESS"

    :goto_0
    invoke-virtual {v1, v3, v2, v4}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    const/16 v1, 0x1010

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p1, v1, :cond_c

    const/16 v1, 0x1030

    if-eq p1, v1, :cond_a

    const/16 v1, 0x1070

    if-eq p1, v1, :cond_8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-ne v0, v3, :cond_4

    .line 2
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :pswitch_1
    if-ne v0, v3, :cond_5

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_5
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_BOTTOMLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :pswitch_2
    if-ne v0, v3, :cond_6

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_6
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPRIGHT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :pswitch_3
    if-ne v0, v3, :cond_7

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_7
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TOPLEFT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :cond_8
    if-ne v0, v3, :cond_9

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MODE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_9
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MODE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :cond_a
    if-ne v0, v3, :cond_b

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_2

    :cond_b
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_4

    :cond_c
    if-ne v0, v3, :cond_d

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    :goto_2
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    :goto_3
    invoke-virtual {p1, v0, v1}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    goto :goto_5

    :cond_d
    if-ne v0, v2, :cond_e

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_TALKIE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    :goto_4
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_LONG_PRESS:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    goto :goto_3

    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1060
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMediaCodecAcquire(Z)V
    .locals 0

    return-void
.end method

.method public handleSpeedPlayStatusAction(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "command"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneMode"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phoneType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSpeedPlayStatusAction action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", phoneMode = "

    const-string v6, ", phoneType = "

    invoke-static {v4, v2, v5, v3, v6}, Le/a/c/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x6de4a859

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const v2, 0x3f10eb8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "ENTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "MAIN_PAGE_SHOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    :cond_3
    :goto_0
    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz p1, :cond_5

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->j0()V

    :cond_5
    :goto_1
    return-void
.end method

.method public isInMirroringMode()Z
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode:Z

    return v0
.end method

.method public notifyPhoneDisconnect(I)V
    .locals 0

    return-void
.end method

.method public onA2dpAcquire(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "net.easyconn.a2dp.acquire"

    goto :goto_0

    :cond_0
    const-string p1, "net.easyconn.a2dp.release"

    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    .line 1
    iget-object p1, p1, Lf/a/i/i/q;->w:Ljava/lang/String;

    const-string v0, "bluetoothName"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broadcast a2dp phone bluetoothName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onAcquire2BluePhoneView()V
    .locals 0

    return-void
.end method

.method public onActionRegister(Landroid/content/IntentFilter;)V
    .locals 0

    return-void
.end method

.method public onAppMusicStatus(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)V
    .locals 0

    invoke-static {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->getAppMusicStatusIntent(Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onAppNaviStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isNaviStarted:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isNaviStarted:Z

    if-eqz p1, :cond_1

    const-string p1, "net.easyconn.navigation.STARTED"

    goto :goto_0

    :cond_1
    const-string p1, "net.easyconn.navigation.STOPPED"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onAppVRStatus(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.carvr.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isVrStarted:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isVrStarted:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "net.easyconn.vr.status"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz p1, :cond_2

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onBTConnectStatus(Z)Z
    .locals 1

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_1
    return v0
.end method

.method public onCustomVrShow(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomVrShow isShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.car.vr.show.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onLicenseAuthSuccess()V
    .locals 2

    const-string v0, " sendBroadcast action = net.easyconn.registed"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.registed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onNavigationInfo(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendNaviInfo(Lnet/easyconn/ecsdk/ECTypes$ECNavigationHudInfo;)V

    return-void
.end method

.method public onOpenBluetoothSetting()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.bt.setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onPhoneAudioStart(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 0

    return-void
.end method

.method public onPhoneAudioStop(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;)V
    .locals 0

    return-void
.end method

.method public onPhoneCallAction(Lnet/easyconn/ecsdk/ECTypes$ECCallType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "net.easyconn.bluetooth.call"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "phoneName"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "phoneNum"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    .line 1
    iget-object p2, p2, Lf/a/i/i/q;->w:Ljava/lang/String;

    const-string p3, "bluetoothName"

    .line 2
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz p1, :cond_2

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public onPhoneVRText(Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.vr.text"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;->type:I

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;->plainText:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;->htmlText:Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECVRTextInfo;->sequence:I

    const-string v1, "sequence"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz p1, :cond_1

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onPullToFront()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShortcutListReceived(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShortcutListReceived data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.shortcuts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onTalkieRecordStatus(Z)V
    .locals 2

    iget-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isVrStarted:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isVrStarted:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.vr.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onVRTips(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.vr.tips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v1, "cnt"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "tips"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "tips json convert error"

    invoke-static {v2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    check-cast p1, Lf/a/k/g0;

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public onWeatherInfo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.weather.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public registerAll()V
    .locals 5

    const-string v0, "com.zjinnova.zlink"

    const-string v1, "registerAll"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    sget-object v1, Le/e/a/g;->a:Le/e/a/h;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "registerAll: already registered"

    .line 2
    invoke-virtual {v1, v2, v3, v4, v0}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v1, Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    invoke-direct {v1, p0}, Lnet/easyconn/framework/broadcast/BroadcastManager$b;-><init>(Lnet/easyconn/framework/broadcast/BroadcastManager;)V

    iput-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.KEYCODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.navigation.STOP_EASYCONN_NAVI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.BACKING_UP_START"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.BACKING_UP_STOP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.bt.opened"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.bt.closed"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.bt.connected"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.a2dp.acquire.fail"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.drivemode.opened"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.drivemode.closed"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.navi.daytime"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.navi.night"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.start.vr"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.stop.vr"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.mediacodec.acquire"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.mediacodec.release"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.action.EXIT_APP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.action.SWITCH_BACKGROUND"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.music.play"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.music.pause"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.music.previous"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.music.next"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.music.play.pause"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.parallel.world.back"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.parallel.world.home"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.parallel.world.menu"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "net.easyconn.carcontrol.response"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "sys.suding.speedplay.apk"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "MirrorSystemProperties"

    const-string v3, "Unable to read system properties"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 5
    :goto_0
    iput-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get suding action exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Le/a/c/a/a;->J(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    :goto_1
    const-string v1, "Get suding action = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Get suding action empty, usb default acion = com.zjinnova.zlink"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sudingAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "net.easyconn.start.record"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "net.easyconn.stop.record"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "net.easyconn.app.open.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onActionRegister(Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    iget-object v2, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public removeBroadcastListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    return-void
.end method

.method public removeKeyCodeActionListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mKeyCodeActionListener:Lnet/easyconn/framework/broadcast/BroadcastManager$d;

    return-void
.end method

.method public removeOnMediaCodecStateRequestListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

    return-void
.end method

.method public sendAirplayPlayBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.airplay.play"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendAirplayStopBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.airplay.stop"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendBroadcast intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Extra = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->getBroadcastExtraString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;)V
    .locals 2

    const-string v0, " sendBroadcast action="

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcastDelay(Landroid/content/Intent;J)V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public sendBroadcastDelay(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public sendDayOrNightCheckStatusBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.navi.checkstatus"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendDriveModeCheckStatusBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.drivemode.checkstatus"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendGPSBroadcast(Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.gps"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->status:Z

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-wide v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-wide v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECGPSInfo;->latitude:D

    const-string p1, "latitude"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendIphonePauseBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.iphone.pause"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendIphoneResumeBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.iphone.resume"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendLinkInBroadcast()V
    .locals 1

    const-string v0, "**=> sendLinkInBroadcast"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentLinkStatus:Z

    const-string v0, "net.easyconn.link.in"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendLinkOutBroadcast()V
    .locals 1

    const-string v0, "**=> sendLinkOutBroadcast"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentLinkStatus:Z

    const-string v0, "net.easyconn.link.out"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMirrorInBroadcast()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentConnectStatus:Z

    const-string v0, "net.easyconn.mirror.in"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMirrorOutBroadcast()V
    .locals 1

    iget-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendQuitMirrorSameBroadcast()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mCurrentConnectStatus:Z

    const-string v0, "net.easyconn.mirror.out"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMirrorPauseBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.screen.pause"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMirrorResumeBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.screen.resume"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method public sendMirrorSameBroadcast()V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_1

    check-cast v0, Lf/a/k/g0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0

    :cond_1
    :goto_0
    const-string v0, "net.easyconn.screen.mirroring_mode"

    .line 2
    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode:Z

    return-void
.end method

.method public sendNightModeStatus(Z)V
    .locals 3

    const-string v0, "sendNightModeStatus:"

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_2

    xor-int/lit8 v1, p1, 0x1

    check-cast v0, Lf/a/k/g0;

    .line 1
    iget-object v2, v0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v2}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/easyconn/EcApplication;->setDayNightTheme(Z)V

    iget-object v1, v0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lf/a/k/g0;->c:Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lf/a/k/g0;->f:Lf/a/k/l0/a4;

    check-cast v1, Lf/a/k/l0/b4;

    invoke-virtual {v1}, Lf/a/k/l0/b4;->j0()V

    :cond_1
    invoke-virtual {v0}, Lf/a/k/g0;->A()V

    .line 2
    :cond_2
    :goto_0
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1e

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    const/4 p1, 0x0

    throw p1
.end method

.method public sendPhoneBTInfo()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.bt.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    .line 1
    iget-object v1, v1, Lf/a/i/i/q;->w:Ljava/lang/String;

    const-string v2, "name"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendPhoneTimeBroadcast(Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.easyconn.phone.time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->gmtTime:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-wide v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->localTime:J

    const-string v3, "currentTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->timeZone:Ljava/lang/String;

    const-string v2, "currentTimeZone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lnet/easyconn/ecsdk/ECTypes$ECTimeInfo;->dateTime:Ljava/lang/String;

    const-string v1, "dateTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendQuitMirrorSameBroadcast()V
    .locals 1

    const-string v0, "net.easyconn.screen.mirroring_mode.quit"

    invoke-virtual {p0, v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->isInMirroringMode:Z

    return-void
.end method

.method public sendRunnableDelay(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public sendVRCmdByCar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_VOICE_ASSISTANT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {p1, v0, v1}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public setOnBroadcastListener(Lnet/easyconn/framework/broadcast/BroadcastManager$c;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    return-void
.end method

.method public setOnKeyCodeActionListener(Lnet/easyconn/framework/broadcast/BroadcastManager$d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mKeyCodeActionListener:Lnet/easyconn/framework/broadcast/BroadcastManager$d;

    return-void
.end method

.method public setOnMediaCodecStateRequestListener(Lnet/easyconn/framework/broadcast/BroadcastManager$e;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

    return-void
.end method

.method public stopEasyConnNavigation()V
    .locals 3

    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    .line 1
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lf/a/i/i/q;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    const-string v0, "unregisterAll"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mBroadcastReceiver:Lnet/easyconn/framework/broadcast/BroadcastManager$b;

    sput-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    :cond_0
    return-void
.end method
