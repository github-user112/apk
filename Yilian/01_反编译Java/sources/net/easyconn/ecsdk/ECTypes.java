package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECTypes {
    public static final int EC_ERR_APP_AUTH_FAIL = -6;
    public static final int EC_ERR_APP_AUTH_PENDING = -7;
    public static final int EC_ERR_APP_NOT_STARTED = -5;
    public static final int EC_ERR_AUTH_FAIL = -4;
    public static final int EC_ERR_INVAL_OP = -1;
    public static final int EC_ERR_INVAL_PARAM = -2;
    public static final int EC_ERR_OP_FAIL = -3;
    public static final int EC_ERR_PERMISSION_DENIED = -8;
    public static final int EC_OK = 0;

    public static class EBTClientInfo {
        public boolean isBuildNet;
        public java.lang.String packageName;
        public java.lang.String phoneID;
        public java.lang.String phoneName;
        public int phoneType;

        public EBTClientInfo(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
            this.phoneType = i;
            this.phoneID = str;
            this.phoneName = str2;
            this.packageName = str3;
            this.isBuildNet = z;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("phoneType = ");
            sbO.append(this.phoneType);
            sbO.append(" phoneID = ");
            sbO.append(this.phoneID);
            sbO.append(" phoneName = ");
            sbO.append(this.phoneName);
            sbO.append(" packageName = ");
            sbO.append(this.packageName);
            sbO.append(" isBuildNet = ");
            sbO.append(this.isBuildNet);
            return sbO.toString();
        }
    }

    public static class EBTNetInfo {
        public static final int EBT_BUILD_NET_WIFI_MODE_AP_ACCESS_INTERNET = 2;
        public static final int EBT_BUILD_NET_WIFI_MODE_AP_CUSTOMIZED = 1;
        public static final int EBT_BUILD_NET_WIFI_MODE_DEFAULE = 0;
        public static final int EBT_BUILD_NET_WIFI_MODE_P2P = 8;
        public java.lang.String auth;
        public java.lang.String mac;
        public int mode;
        public java.lang.String name;
        public java.lang.String pwd;
        public java.lang.String ssid;

        public EBTNetInfo() {
            this.ssid = "";
            this.pwd = "";
            this.auth = "";
            this.mac = "";
            this.name = "";
            this.mode = 0;
        }

        public EBTNetInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, int i) {
            this.ssid = str;
            this.pwd = str2;
            this.auth = str3;
            this.mac = str4;
            this.name = str5;
            this.mode = i;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" ssid = ");
            sbO.append(this.ssid);
            sbO.append(" pwd = ");
            sbO.append(this.pwd);
            sbO.append(" auth = ");
            sbO.append(this.auth);
            sbO.append(" mac = ");
            sbO.append(this.mac);
            sbO.append(" name = ");
            sbO.append(this.name);
            sbO.append(" mode = ");
            sbO.append(this.mode);
            return sbO.toString();
        }
    }

    public static class EBTRequestBuildNetRly {
        public static final int EBT_BUILD_NET_AUTH_FAIL = -2;
        public static final int EBT_BUILD_NET_AUTH_PENDING = -1;
        public static final int EBT_BUILD_NET_NEED_PHONE_BUILD = 1;
        public static final int EBT_BUILD_NET_SUCCEED = 0;
        public static final int EBT_BUILD_NET_USE_PHONE_AP = 2;
        public net.easyconn.ecsdk.ECTypes.EBTNetInfo netInfo;
        public int phoneApFrequency;
        public int status;

        public EBTRequestBuildNetRly(int i) {
            this.status = i;
            this.netInfo = new net.easyconn.ecsdk.ECTypes.EBTNetInfo();
            this.phoneApFrequency = 0;
        }

        public EBTRequestBuildNetRly(int i, net.easyconn.ecsdk.ECTypes.EBTNetInfo eBTNetInfo) {
            this.status = i;
            this.netInfo = eBTNetInfo;
            this.phoneApFrequency = 0;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status = ");
            sbO.append(this.status);
            return sbO.toString();
        }
    }

    public static class ECAppHudSupportFunction {
        public static final int EC_APP_HUD_SUPPORT_FUNCTION_DEFAULT = 0;
        public static final int EC_APP_HUD_SUPPORT_FUNCTION_LANE_GUIDANCE_PICTURE = 2;
        public static final int EC_APP_HUD_SUPPORT_FUNCTION_ROAD_JUNCTIONO_PICTURE = 1;
    }

    public static class ECAppMusicInfo {
        public java.lang.String album;
        public java.lang.String albumArtist;
        public java.lang.String artist;
        public long length;
        public int page;
        public int status;
        public java.lang.String title;

        public ECAppMusicInfo(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, long j) {
            this.status = i;
            this.title = str;
            this.artist = str2;
            this.album = str3;
            this.albumArtist = str4;
            this.length = j;
            this.page = 0;
        }

        public ECAppMusicInfo(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, long j, int i2) {
            this.status = i;
            this.title = str;
            this.artist = str2;
            this.album = str3;
            this.albumArtist = str4;
            this.length = j;
            this.page = i2;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status=");
            sbO.append(this.status);
            sb.append(sbO.toString());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(",title=");
            java.lang.StringBuilder sbS = e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(sb2, this.title, sb, ",artist="), this.artist, sb, ",album="), this.album, sb, ",albumArtist="), this.albumArtist, sb, ",length=");
            sbS.append(this.length);
            sb.append(sbS.toString());
            sb.append(",page=" + this.page);
            return sb.toString();
        }
    }

    public enum ECAppPage {
        EC_APP_PAGE_NAVIGATION(1),
        EC_APP_PAGE_MUSIC(2),
        EC_APP_PAGE_VR(3),
        EC_APP_PAGE_TALKIE(4),
        EP_APP_PAGE_NAVI_HOME(5),
        EC_APP_PAGE_NAVI_WORK(6),
        EC_APP_PAGE_MAIN(7),
        EC_APP_PAGE_NAVI_GAS_STATION(8),
        EC_APP_PAGE_CAR_PARK(9),
        EC_APP_PAGE_4S_SHOP(10),
        EC_APP_PAGE_MUSIC_XMLY(11),
        EC_APP_PAGE_MUSIC_QQ(12),
        EC_APP_PAGE_MUSIC_RADIO(13),
        EC_APP_PAGE_MUSIC_NATIVE(14),
        EC_APP_PAGE_WECHAT(15),
        EC_APP_PAGE_PERSONAL_CENTER(16),
        EC_APP_PAGE_APP_MANAGER(17),
        EC_APP_PAGE_ADD_OTA(18),
        EC_APP_PAGE_WECHAT_MSG(19),
        EC_APP_PAGE_PHONE(20),
        EC_APP_PAGE_ANDROID_PARALLEL_WORLD(100),
        EC_APP_PAGE_PHONE_SCREEN(101),
        EC_APP_PAGE_ANDROID_PARALLEL_APP_MANAGER(102);

        public int value;

        ECAppPage(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECAppPageStatus {
        public static final int EC_APP_PAGE_STATUS_APP_INACTIVE = 8;
        public static final int EC_APP_PAGE_STATUS_CLOSE = 2;
        public static final int EC_APP_PAGE_STATUS_FLOAT_WINDOW_AUTH_FAIL = 8192;
        public static final int EC_APP_PAGE_STATUS_FLOAT_WINDOW_AUTH_PENDING = 4;
        public static final int EC_APP_PAGE_STATUS_MIRROR_AUTH_FAIL = 16384;
        public static final int EC_APP_PAGE_STATUS_MIRROR_AUTH_PENDING = 16;
        public static final int EC_APP_PAGE_STATUS_OPEN = 1;
        public static final int EC_APP_PAGE_STATUS_PHONE_SPACE_EARLY_WARNING = 64;
        public static final int EC_APP_PAGE_STATUS_PHONE_SPACE_NOT_ENOUGHT = 32;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_CAMERA = 1024;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_LOCATION = 128;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_MEDIA_APPLE_MUSIC = 4096;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_POWER_SAVING = 2048;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_RECODING = 256;
        public static final int EC_APP_PAGE_STATUS_REQUEST_PERMISSION_STORAGE = 512;
        public static final int EC_APP_PAGE_STATUS_UNKNOW = 0;
    }

    public static class ECAudioCardDevice {
        public int card;
        public int device;

        public ECAudioCardDevice(int i, int i2) {
            this.card = 0;
            this.device = 0;
            this.card = i;
            this.device = i2;
        }
    }

    public enum ECAudioChannelType {
        EC_AUDIO_CHANNEL_MONO(1),
        EC_ADUIO_CHANNEL_STEREO(2);

        public int value;

        ECAudioChannelType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECAudioFormatType {
        EC_AUDIO_FORMAT_U8(0),
        EC_AUDIO_FORMAT_S8(1),
        EC_AUDIO_FORMAT_U16_LE(2),
        EC_AUDIO_FORMAT_S16_LE(3),
        EC_AUDIO_FORMAT_U16_BE(4),
        EC_AUDIO_FORMAT_S16_BE(5),
        EC_AUDIO_FORMAT_U24_LE(6),
        EC_AUDIO_FORMAT_S24_LE(7),
        EC_AUDIO_FORMAT_U24_BE(8),
        EC_AUDIO_FORMAT_S24_BE(9),
        EC_AUDIO_FORMAT_U32_LE(10),
        EC_AUDIO_FORMAT_S32_LE(11),
        EC_AUDIO_FORMAT_U32_BE(12),
        EC_AUDIO_FORMAT_S32_BE(13),
        EC_AUDIO_FROMAT_F32(14);

        public int value;

        ECAudioFormatType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECAudioInfo {
        public net.easyconn.ecsdk.ECTypes.ECAudioChannelType channel;
        public net.easyconn.ecsdk.ECTypes.ECAudioFormatType format;
        public int sampleRate;

        public ECAudioInfo(int i, net.easyconn.ecsdk.ECTypes.ECAudioChannelType eCAudioChannelType, net.easyconn.ecsdk.ECTypes.ECAudioFormatType eCAudioFormatType) {
            this.sampleRate = i;
            this.channel = eCAudioChannelType;
            this.format = eCAudioFormatType;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("sampleRate=");
            sbO.append(this.sampleRate);
            sb.append(sbO.toString());
            sb.append(",channel=" + this.channel);
            sb.append(",format=" + this.format);
            return sb.toString();
        }
    }

    public enum ECAudioType {
        EC_AUDIO_TYPE_TTS(1),
        EC_AUDIO_TYPE_VR(2),
        EC_AUDIO_TYPE_TALKIE(3),
        EC_AUDIO_TYPE_MUSIC(4);

        public int value;

        ECAudioType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECAuthFailedCode {
        public static final int EC_CAR_AUTH_CHECK_CLIENTSET_DISABLE = -101;
        public static final int EC_CAR_AUTH_CHECK_FILE_EXPIRE = -104;
        public static final int EC_CAR_AUTH_CHECK_NOT_ALLOW_REGISTER_BY_PHONE = -102;
        public static final int EC_CAR_AUTH_CHECK_NOT_FOUND = -2;
        public static final int EC_CAR_AUTH_CHECK_NOT_NETWORK = -100;
        public static final int EC_CAR_AUTH_CHECK_NOT_VALID = 0;
        public static final int EC_CAR_AUTH_CHECK_SAVE_AUTH_FILE_FAILED = -103;
    }

    public static class ECAuthSuccessCode {
        public static final int EC_CAR_NETWORK_AUTH_CHECK_UUID_LICENSE = 4112;
        public static final int EC_CAR_NETWORK_AUTH_DOWNLOAD_UUID_LICENSE = 4144;
        public static final int EC_CAR_NETWORK_AUTH_REGISTER_UUID_LICENSE = 4128;
        public static final int EC_PHONE_NETWORK_AUTH_CHECK_UUID_LICENSE = 8208;
        public static final int EC_PHONE_NETWORK_AUTH_DOWNLOAD_UUID_LICENSE = 8240;
        public static final int EC_PHONE_NETWORK_AUTH_REGISTER_UUID_LICENSE = 8224;
    }

    public static class ECAuthentication {
        public int authCheckMode;
        public java.lang.String clientSet;
        public boolean forceUpdateClientSet;
        public java.lang.String pwd;
        public java.lang.String uuid;
        public int versionCode;
        public java.lang.String versionName;

        public ECAuthentication() {
            this.uuid = "";
            this.pwd = "";
            this.versionName = "";
            this.versionCode = 0;
            this.authCheckMode = 0;
            this.clientSet = "";
            this.forceUpdateClientSet = false;
        }

        public ECAuthentication(java.lang.String str, java.lang.String str2, int i) {
            this.uuid = str;
            this.pwd = str2;
            this.authCheckMode = i;
        }
    }

    public static class ECBTCallData {
        public java.lang.String callDateTime;
        public int callDuration;
        public int callType;
        public java.lang.String location;
        public java.lang.String name;
        public java.lang.String number;

        public ECBTCallData(java.lang.String str, java.lang.String str2, java.lang.String str3) {
            this.name = str;
            this.number = str2;
            this.location = str3;
        }

        public ECBTCallData(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i, int i2) {
            this.name = str;
            this.number = str2;
            this.location = str3;
            this.callDateTime = str4;
            this.callDuration = i;
            this.callType = i2;
        }
    }

    public static class ECBTCallDataType {
        public static final int EC_BT_CALL_DATA_TYPE_CALL_RECORDS = 1;
        public static final int EC_BT_CALL_DATA_TYPE_PHONE_BOOK = 0;
    }

    public static class ECBTCallDataUploadState {
        public static final int EC_BT_CALL_DATA_UPLOAD_STATE_BEGIN = 0;
        public static final int EC_BT_CALL_DATA_UPLOAD_STATE_END = 2;
        public static final int EC_BT_CALL_DATA_UPLOAD_STATE_UPLOADING = 1;
    }

    public static class ECBTCallRecordsType {
        public static final int EC_BT_CALL_RECORD_TYPE_IN = 0;
        public static final int EC_BT_CALL_RECORD_TYPE_IN_MISSED = 2;
        public static final int EC_BT_CALL_RECORD_TYPE_OUT = 1;
        public static final int EC_BT_CALL_RECORD_TYPE_OUT_MISSED = 3;
    }

    public static class ECBTServiceTransportType {
        public static final int EC_BT_SERVICE_TRANSPORT_TYPE_BLE = 2;
        public static final int EC_BT_SERVICE_TRANSPORT_TYPE_SPP = 1;
        public static final int EC_BT_SERVICE_TRANSPORT_TYPE_UNKNOW = 0;
    }

    public static class ECBluetoothPolicy {
        public static final int EC_BLUETOOTH_POLICY_ALWAYS_ACCEPT_BTN = 2;
        public static final int EC_BLUETOOTH_POLICY_SEND_DEFAULT_WITH_A2DP_CONNECTED_ONLY = 0;
        public static final int EC_BLUETOOTH_POLICY_SEND_DEFAULT_WITH_HFP_OR_A2DP_CONNECTED = 1;
    }

    public enum ECBtnCode {
        EC_BTN_TALKIE(net.easyconn.ecsdk.ECTypes.ECAuthSuccessCode.EC_CAR_NETWORK_AUTH_CHECK_UUID_LICENSE),
        EC_BTN_TALKIE_GROUP_MUTE(4113),
        EC_BTN_TALKIE_GROUP_CANCEL_MUTE(4114),
        EC_BTN_TALKIE_GROUP_SWITCH_MUTE(4115),
        EC_BTN_NAVIGATION(net.easyconn.ecsdk.ECTypes.ECAuthSuccessCode.EC_CAR_NETWORK_AUTH_REGISTER_UUID_LICENSE),
        EC_BTN_VOICE_ASSISTANT(net.easyconn.ecsdk.ECTypes.ECAuthSuccessCode.EC_CAR_NETWORK_AUTH_DOWNLOAD_UUID_LICENSE),
        EC_BTN_MUSIC_PLAY(4160),
        EC_BTN_MUSIC_NEXT(4161),
        EC_BTN_MUSIC_PREVIOUS(4162),
        EC_BTN_MUSIC_PAUSE(4163),
        EC_BTN_MUSIC_STOP(4164),
        EC_BTN_MUSIC_PLAY_PAUSE(4167),
        EC_BTN_VOLUME_UP(4176),
        EC_BTN_VOLUME_DOWN(4177),
        EC_BTN_TOPLEFT(4192),
        EC_BTN_TOPRIGHT(4193),
        EC_BTN_BOTTOMLEFT(4194),
        EC_BTN_BOTTOMRIGHT(4195),
        EC_BTN_MODE(4208),
        EC_BTN_APP_FRONT(4224),
        EC_BTN_APP_BACK(4240),
        EC_BTN_ENFORCE_LANDSCAPE(4256),
        EC_BTN_CANCEL_LANDSCAPE(4257),
        EC_BTN_ENFORCE_OR_CANCEL_LANDSCAPE(4258),
        EC_BTN_FOCUS_BACKWARD(com.umeng.analytics.pro.n.a.l),
        EC_BTN_FOCUS_FORWARD(com.umeng.analytics.pro.n.a.m),
        EC_BTN_FOCUS_LEFT(com.umeng.analytics.pro.n.a.n),
        EC_BTN_FOCUS_RIGHT(com.umeng.analytics.pro.n.a.o),
        EC_BTN_FOCUS_UP(4357),
        EC_BTN_FOCUS_DOWN(4358),
        EC_BTN_FOCUS_ENTER(4359),
        EC_BTN_KEY_PARALLEL_WORLD_MENU(4608),
        EC_BTN_KEY_PARALLEL_WORLD_HOME(4609),
        EC_BTN_KEY_PARALLEL_WORLD_BACK(4610),
        EC_BTN_MAX(4611);

        public int value;

        ECBtnCode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECBtnEventType {
        EC_BTN_TYPE_UP(0),
        EC_BTN_TYPE_DOWN(1),
        EC_BTN_TYPE_CLICK(2),
        EC_BTN_TYPE_DOUBLE_CLICK(3),
        EC_BTN_TYPE_LONG_PRESS(4);

        public int value;

        ECBtnEventType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECCallType {
        EC_CALL_TYPE_DAIL(0),
        EC_CALL_TYPE_HANG_UP(1);

        public int value;

        ECCallType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECCarAuthQueryType {
        EC_CAR_AUTH_QUERY_TYPE_DEFAULT(0),
        EC_CAR_AUTH_QUERY_TYPE_QUICK(1);

        public int value;

        ECCarAuthQueryType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECCarAuthType {
        EC_CAR_AUTH_TYPE_PXC(0),
        EC_CAR_AUTH_TYPE_CAR_LOCAL_NETWORK(1);

        public int value;

        ECCarAuthType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECCarCmd {
        public java.lang.String cmd;
        public java.lang.String id;
        public boolean pauseMusic;
        public int responser;
        public int thresholdLevel;
        public net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType type;
        public java.lang.String vrText;

        public ECCarCmd() {
            this.type = net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType.EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL;
            this.id = "";
            this.cmd = "";
            this.vrText = "";
            this.pauseMusic = false;
            this.responser = 0;
            this.thresholdLevel = 0;
        }

        public ECCarCmd(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z, int i, int i2) {
            this.id = str;
            this.cmd = str2;
            this.vrText = str3;
            this.pauseMusic = z;
            this.responser = i;
            this.thresholdLevel = i2;
            this.type = net.easyconn.ecsdk.ECTypes.ECCarCmdEFFECTType.EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("type=");
            sbO.append(this.type);
            sb.append(sbO.toString());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("id=");
            java.lang.StringBuilder sbS = e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(sb2, this.id, sb, ",cmd="), this.cmd, sb, ",vrText="), this.vrText, sb, ",pauseMusic=");
            sbS.append(this.pauseMusic);
            sb.append(sbS.toString());
            sb.append(",responser=" + this.responser);
            sb.append(",thresholdLevel=" + this.thresholdLevel);
            return sb.toString();
        }
    }

    public enum ECCarCmdEFFECTType {
        EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL(0),
        EC_CAR_CMD_TYPE_EFFECTIVE_PAGE(1),
        EC_CAR_CMD_TYPE_EFFECTIVE_GLOBAL_NO_WAKEUP(2);

        public int value;

        ECCarCmdEFFECTType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECCarDescription {
        public net.easyconn.ecsdk.ECTypes.ECMediaLevel mediaLevel = net.easyconn.ecsdk.ECTypes.ECMediaLevel.EC_DVD_LEVEL_LOW;
        public net.easyconn.ecsdk.ECTypes.ECMicType micType = net.easyconn.ecsdk.ECTypes.ECMicType.EC_MIC_TYPE_PHONE;
        public java.lang.String mediaOS = "";
        public java.lang.String mediaModel = "";
        public net.easyconn.ecsdk.ECTypes.ECScreenType screenType = net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_HORIZONTAL;
        public java.lang.String carBrand = "";
        public java.lang.String carModel = "";
        public java.lang.String carConfig = "";
        public boolean supportBTCall = false;
        public boolean supportBTSetting = false;
        public java.lang.String btName = "";
        public java.lang.String btAddress = "";
        public java.lang.String btPin = "";
        public int dpi = 160;
        public boolean enableDpi = false;
        public int supportConnect = 0;
        public int supportFunction = 0;
        public int micSupportFeature = 0;
        public int productType = 0;
        public java.lang.String wakeupWord = "";
    }

    public enum ECCarStatusType {
        EC_CAR_REVERSING(1),
        EC_CAR_BLUETOOTH(2),
        EC_CAR_DRIVINGMODE(3),
        EC_CAR_AUDIO_FOCUS_CHANGE(4),
        EC_CAR_IS_AUTO_START_EASYCONN(5),
        EC_CAR_MIC_STATUS(6),
        EC_CAR_RUN_STATUS(7);

        public int value;

        ECCarStatusType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECCarStatusValue {
        EC_CAR_STATUS_FALSE(0),
        EC_CAR_STATUS_TRUE(1),
        EC_CAR_STATUS_STARTED(2),
        EC_CAR_STATUS_STOPPED(3),
        EC_CAR_STATUS_CLOSED(4),
        EC_CAR_STATUS_UNCONNECTED(5),
        EC_CAR_STATUS_CONNECTED(6),
        EC_CAR_STATUS_CONNECTED_SAME(7),
        EC_CAR_STATUS_LONG_FUCUS_GAIN(8),
        EC_CAR_STATUS_LONG_FUCUS_LOSS(9),
        EC_CAR_STATUS_SHORT_FUCUS_GAIN(10),
        EC_CAR_STATUS_SHORT_FUCUS_LOSS(11),
        EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN(12),
        EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS(13),
        EC_CAR_STATUS_MIC_OPEN(14),
        EC_CAR_STATUS_MIC_CLOSED(15),
        EC_CAR_STATUS_RUN_FOREGROUND(16),
        EC_CAR_STATUS_RUN_BACKGROUND(17);

        public int value;

        ECCarStatusValue(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECConfig {
        public java.lang.String aoaManufacturer;
        public java.lang.String aoaModel;
        public java.lang.String aoaUri;
        public java.lang.String aoaVersion;
        public java.lang.String bonjourMDNSServerPath;
        public int channel;
        public boolean enableSockServerAuth;
        public boolean existAdbServerInSystem;
        public long flavor;
        public boolean lightningBindApp;
        public java.lang.String packageName;
        public java.lang.String phoneAppMainActivity;
        public java.lang.String phoneAppPackage;
        public java.lang.String signature;
        public int[] thirdChannel;

        public ECConfig() {
            this.channel = -1;
            this.flavor = 0L;
            this.phoneAppPackage = "";
            this.phoneAppMainActivity = "";
            this.aoaManufacturer = "";
            this.aoaModel = "";
            this.aoaVersion = "";
            this.aoaUri = "";
            this.lightningBindApp = true;
            this.signature = "";
            this.bonjourMDNSServerPath = "";
            this.existAdbServerInSystem = false;
            this.packageName = "";
            this.enableSockServerAuth = false;
        }

        public ECConfig(int i, int[] iArr, long j, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, boolean z, java.lang.String str7, java.lang.String str8) {
            this.channel = i;
            this.flavor = j;
            this.phoneAppPackage = str;
            this.phoneAppMainActivity = str2;
            this.aoaManufacturer = str3;
            this.aoaModel = str4;
            this.aoaVersion = str5;
            this.aoaUri = str6;
            this.lightningBindApp = z;
            this.signature = str7;
            this.packageName = str8;
            this.thirdChannel = iArr;
            this.bonjourMDNSServerPath = "";
            this.existAdbServerInSystem = false;
            this.enableSockServerAuth = false;
        }

        public ECConfig(int i, int[] iArr, long j, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, boolean z, java.lang.String str7, boolean z2) {
            this.channel = i;
            this.flavor = j;
            this.phoneAppPackage = str;
            this.phoneAppMainActivity = str2;
            this.aoaManufacturer = str3;
            this.aoaModel = str4;
            this.aoaVersion = str5;
            this.aoaUri = str6;
            this.lightningBindApp = z;
            this.signature = str7;
            this.packageName = "";
            this.thirdChannel = iArr;
            this.bonjourMDNSServerPath = "";
            this.existAdbServerInSystem = z2;
            this.enableSockServerAuth = false;
        }
    }

    public static class ECDevice {
        public java.lang.String phoneIp;
        public java.lang.String serial;
        public net.easyconn.ecsdk.ECTypes.ECTransportType transportType;

        public ECDevice(net.easyconn.ecsdk.ECTypes.ECTransportType eCTransportType, java.lang.String str, java.lang.String str2) {
            this.transportType = eCTransportType;
            this.serial = str;
            this.phoneIp = str2;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("transportType=");
            sbO.append(this.transportType);
            stringBuffer.append(sbO.toString());
            stringBuffer.append(", serial=" + this.serial);
            stringBuffer.append(", phoneIp=" + this.phoneIp);
            return stringBuffer.toString();
        }
    }

    public static class ECDisplayRotation {
        public static final int EC_DISPLAY_ROTATION_0 = 0;
        public static final int EC_DISPLAY_ROTATION_180 = 2;
        public static final int EC_DISPLAY_ROTATION_270 = 3;
        public static final int EC_DISPLAY_ROTATION_90 = 1;
    }

    public enum ECDrivingStatus {
        EC_DRIVING_FREE(0),
        EC_DRIVING_NO_VIDEO(1),
        EC_DRIVING_NO_KEYBOARD_INPUT(2),
        EC_DRIVING_NO_VOICE_INPUT(4),
        EC_DRIVING_NO_CONFIG(8);

        public int value;

        ECDrivingStatus(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECErrorStatusCode {
        public static final int EC_ERROR_NO_ERROR = 0;
        public static final int EC_ERROR_TIME_OUT = -1;
    }

    public static class ECFlavor {
        public static final int EC_FLAVOR_AE_AFTER_MARKET_INSTALLED = 0;
        public static final int EC_FLAVOR_AE_FACTORY_INSTALLED = 1;
        public static final int EC_FLAVOR_AE_FREE = 3;
        public static final int EC_FLAVOR_AE_OVERSEA_AFTER_MARKET_INSTALLED = 4;
        public static final int EC_FLAVOR_AE_OVERSEA_FACTORY_INSTALLED = 2;
        public static final int EC_FLAVOR_CARBIT_RIDE_CHINA = 50;
        public static final int EC_FLAVOR_CARBIT_RIDE_OVERSEA = 51;
        public static final int EC_FLAVOR_FORD = 19;
        public static final int EC_FLAVOR_GUANGYANG_EC = 52;
        public static final int EC_FLAVOR_GWM_EC = 16;
        public static final int EC_FLAVOR_MOTOFUN_CHINA = 48;
        public static final int EC_FLAVOR_MOTOFUN_OVERSEA = 49;
        public static final int EC_FLAVOR_MU = 20;
        public static final int EC_FLAVOR_XIANDOU_HAVAL = 18;
        public static final int EC_FLAVOR_XIANDOU_ORA = 17;
        public static final int EC_FLAVOR_YLTP = 21;
    }

    public static class ECForwardInfo {
        public java.lang.String ip;
        public int localPort;
        public int remotePort;

        public ECForwardInfo(java.lang.String str, int i, int i2) {
            this.ip = str;
            this.localPort = i;
            this.remotePort = i2;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ip=");
            sbO.append(this.ip);
            sbO.append(", localPort=");
            sbO.append(this.localPort);
            sbO.append(", remotePort=");
            sbO.append(this.remotePort);
            return sbO.toString();
        }
    }

    public static class ECGPSInfo {
        public double altitude;
        public double course;
        public double latitude;
        public double longitude;
        public double speed;
        public boolean status;
        public long time;

        public ECGPSInfo(boolean z, double d2, double d3, double d4, long j, double d5, double d6) {
            this.status = z;
            this.altitude = d2;
            this.speed = d3;
            this.course = d4;
            this.time = j;
            this.longitude = d5;
            this.latitude = d6;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status=");
            sbO.append(this.status);
            sbO.append(", altitude=");
            sbO.append(this.altitude);
            sbO.append(", speed=");
            sbO.append(this.speed);
            sbO.append(", course=");
            sbO.append(this.course);
            sbO.append(", time=");
            sbO.append(this.time);
            sbO.append(", longitude=");
            sbO.append(this.longitude);
            sbO.append(", latitude=");
            sbO.append(this.latitude);
            return sbO.toString();
        }
    }

    public enum ECGearType {
        EC_GEAR_NEUTRUAL(0),
        EC_GEAR_MANUAL_1st(1),
        EC_GEAR_MANUAL_2nd(2),
        EC_GEAR_MANUAL_3rd(3),
        EC_GEAR_MANUAL_4th(4),
        EC_GEAR_MANUAL_5th(5),
        EC_GEAR_MANUAL_6th(6),
        EC_GEAR_MANUAL_7th(7),
        EC_GEAR_MANUAL_8th(8),
        EC_GEAR_MANUAL_9th(9),
        EC_GEAR_MANUAL_10th(10),
        EC_GEAR_AUTO_DRIVE(100),
        EC_GEAR_AUTO_PARK(101);

        public int value;

        ECGearType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECHeadLightStatus {
        EC_HEADLIGHT_OFF(0),
        EC_HEADLIGHT_ON(1),
        EC_HEADLIGHT_HIGH(2);

        public int value;

        ECHeadLightStatus(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECHudLaneGuidancePictureInfo {
        public int format;
        public byte[] pictureData;
        public int status;

        public ECHudLaneGuidancePictureInfo(int i, int i2, byte[] bArr) {
            this.status = i;
            this.format = i2;
            this.pictureData = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status = ");
            sbO.append(this.status);
            sbO.append(" format = ");
            sbO.append(this.format);
            return sbO.toString();
        }
    }

    public static class ECHudRoadJunctionPictureInfo {
        public int format;
        public byte[] pictureData;
        public int status;

        public ECHudRoadJunctionPictureInfo(int i, int i2, byte[] bArr) {
            this.status = i;
            this.format = i2;
            this.pictureData = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status = ");
            sbO.append(this.status);
            sbO.append(" format = ");
            sbO.append(this.format);
            sbO.append(" pictureData = ");
            sbO.append(this.pictureData);
            return sbO.toString();
        }
    }

    public static class ECIconFormat {
        public static final int EC_ICON_JPG = 2;
        public static final int EC_ICON_PNG = 1;
    }

    public static class ECIconInfo {
        public byte[] iconData;
        public int iconFormat;
        public int page;

        public ECIconInfo(int i, int i2, byte[] bArr) {
            this.page = i;
            this.iconFormat = i2;
            this.iconData = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("page=");
            sbO.append(this.page);
            stringBuffer.append(sbO.toString());
            stringBuffer.append(", iconFormat=" + this.iconFormat);
            stringBuffer.append(", iconData=" + this.iconData);
            return stringBuffer.toString();
        }
    }

    public static class ECInputImeOptions {
        public static final int EC_INPUT_IME_ACTION_DONE = 6;
        public static final int EC_INPUT_IME_ACTION_GO = 2;
        public static final int EC_INPUT_IME_ACTION_NEXT = 5;
        public static final int EC_INPUT_IME_ACTION_NONE = 1;
        public static final int EC_INPUT_IME_ACTION_PREVIOUS = 7;
        public static final int EC_INPUT_IME_ACTION_SEARCH = 3;
        public static final int EC_INPUT_IME_ACTION_SEND = 4;
        public static final int EC_INPUT_IME_ACTION_UNSPECIFIED = 0;
        public static final int EC_INPUT_IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
        public static final int EC_INPUT_IME_FLAG_NAVIGATE_NEXT = 134217728;
        public static final int EC_INPUT_IME_FLAG_NAVIGATE_PREVIOUS = 67108864;
        public static final int EC_INPUT_IME_FLAG_NO_ACCESSORY_ACTION = 536870912;
        public static final int EC_INPUT_IME_FLAG_NO_ENTER_ACTION = 1073741824;
        public static final int EC_INPUT_IME_FLAG_NO_EXTRACT_UI = 268435456;
        public static final int EC_INPUT_IME_FLAG_NO_FULL_SCREEN = 33554432;
        public static final int EC_INPUT_IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    }

    public static class ECInputInfo {
        public int imeOptions;
        public int inputType;
        public int maxLength;
        public int maxLines;
        public int minLines;
        public java.lang.String rawText;

        public ECInputInfo(int i, int i2, java.lang.String str, int i3, int i4, int i5) {
            this.inputType = i;
            this.imeOptions = i2;
            this.rawText = str;
            this.minLines = i3;
            this.maxLines = i4;
            this.maxLength = i5;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("inputType=");
            sbO.append(this.inputType);
            stringBuffer.append(sbO.toString());
            stringBuffer.append(", imeOptions=" + this.imeOptions);
            stringBuffer.append(", rawText=" + this.rawText);
            stringBuffer.append(", minLines=" + this.minLines);
            stringBuffer.append(", maxLines=" + this.maxLines);
            stringBuffer.append(", maxLength=" + this.maxLength);
            return stringBuffer.toString();
        }
    }

    public static class ECInputType {
        public static final int EC_INPUT_TYPE_DATE = 20;
        public static final int EC_INPUT_TYPE_DATETIME = 4;
        public static final int EC_INPUT_TYPE_NONE = 0;
        public static final int EC_INPUT_TYPE_NUMBER = 2;
        public static final int EC_INPUT_TYPE_NUMBER_DECIMAL = 8194;
        public static final int EC_INPUT_TYPE_NUMBER_PASSWORD = 18;
        public static final int EC_INPUT_TYPE_NUMBER_SIGNED = 4098;
        public static final int EC_INPUT_TYPE_PHONE = 3;
        public static final int EC_INPUT_TYPE_TEXT = 1;
        public static final int EC_INPUT_TYPE_TEXT_AUTO_COMPLETE = 65537;
        public static final int EC_INPUT_TYPE_TEXT_AUTO_CORRECT = 32769;
        public static final int EC_INPUT_TYPE_TEXT_CAP_CHARACTERS = 4097;
        public static final int EC_INPUT_TYPE_TEXT_CAP_SEQUENCE = 16385;
        public static final int EC_INPUT_TYPE_TEXT_CAP_WORDS = 8193;
        public static final int EC_INPUT_TYPE_TEXT_EMAIL_ADDRESS = 33;
        public static final int EC_INPUT_TYPE_TEXT_EMAIL_SUBJECT = 49;
        public static final int EC_INPUT_TYPE_TEXT_FILTER = 177;
        public static final int EC_INPUT_TYPE_TEXT_IME_MULTI_LINES = 262145;
        public static final int EC_INPUT_TYPE_TEXT_LONG_MESSAGE = 81;
        public static final int EC_INPUT_TYPE_TEXT_MULTI_LINES = 131073;
        public static final int EC_INPUT_TYPE_TEXT_NO_SUGGESTIONS = 524289;
        public static final int EC_INPUT_TYPE_TEXT_PASSWORD = 129;
        public static final int EC_INPUT_TYPE_TEXT_PERSON_NAME = 97;
        public static final int EC_INPUT_TYPE_TEXT_PHONETIC = 193;
        public static final int EC_INPUT_TYPE_TEXT_POSTAL_ADDRESS = 113;
        public static final int EC_INPUT_TYPE_TEXT_SHORT_MESSAGE = 65;
        public static final int EC_INPUT_TYPE_TEXT_URI = 17;
        public static final int EC_INPUT_TYPE_TEXT_VISIBLE_PASSWORD = 145;
        public static final int EC_INPUT_TYPE_TEXT_WEB_EDIT_TEXT = 161;
        public static final int EC_INPUT_TYPE_TEXT_WEB_EMAIL_ADDRESS = 209;
        public static final int EC_INPUT_TYPE_TEXT_WEB_PASSWORD = 225;
        public static final int EC_INPUT_TYPE_TIME = 36;
    }

    public enum ECLogLevel {
        EC_LOG_LEVEL_ALL(0),
        EC_LOG_LEVEL_DEBUG(1),
        EC_LOG_LEVEL_INFO(2),
        EC_LOG_LEVEL_WARN(3),
        EC_LOG_LEVEL_ERROR(4),
        EC_LOG_LEVEL_FATAL(5),
        EC_LOG_LEVEL_OFF(6);

        public int value;

        ECLogLevel(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECLogModule {
        public static final int EC_LOG_MODULE_ADB = 2;
        public static final int EC_LOG_MODULE_APP = 16;
        public static final int EC_LOG_MODULE_MCAST = 64;
        public static final int EC_LOG_MODULE_MDNS = 32;
        public static final int EC_LOG_MODULE_MUX = 4;
        public static final int EC_LOG_MODULE_RTP = 128;
        public static final int EC_LOG_MODULE_SDK = 1;
        public static final int EC_LOG_MODULE_TS = 256;
        public static final int EC_LOG_MODULE_UPNP = 512;
        public static final int EC_LOG_MODULE_USB = 8;
    }

    public enum ECLogOutputType {
        EC_LOG_OUT_STD(0),
        EC_LOG_OUT_FILE(1),
        EC_LOG_OUT_LOGCAT(2),
        EC_LOG_OUT_SLOGINFO(3);

        public int value;

        ECLogOutputType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECMInstBaseInfo {
        public boolean capaOilFlag;
        public int capaOilPercent;
        public int gear;
        public boolean gearFlag;
        public int rpm;
        public boolean rpmFlag;
        public int speed;
        public boolean speedFlag;
        public int tempLiquid;
        public int tempWater;
        public int tempWaterLevel;
    }

    public enum ECMediaLevel {
        EC_DVD_LEVEL_LOW(0),
        EC_DVD_LEVEL_MIDDLE(1),
        EC_DVD_LEVEL_HIGH(2);

        public int value;

        ECMediaLevel(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECMicFeature {
        public static final int EC_MIC_SUPPORT_ECHO_CANCELLATION = 1;
        public static final int EC_MIC_SUPPORT_ECHO_CANCELLATION_UNKNOWN = 0;
        public static final int EC_MIC_SUPPORT_ECHO_CANCELLATION_VIA_PHONE = 2;
        public static final int EC_MIC_SUPPORT_LEFT_CHANNEL_RECORD = 4;
    }

    public enum ECMicType {
        EC_MIC_TYPE_NATIVE(0),
        EC_MIC_TYPE_PHONE(1),
        EC_MIC_TYPE_UNSUPPORT(2);

        public int value;

        ECMicType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECMirrorConfig {
        public int capScreenMode;
        public int height;
        public net.easyconn.ecsdk.ECTypes.ECMirrorFeature mirrorFeature;
        public int quality;
        public net.easyconn.ecsdk.ECTypes.ECScreenDirection screenDirection;
        public double screenPhysicsHeight;
        public double screenPhysicsWidth;
        public int touchMode;
        public net.easyconn.ecsdk.ECTypes.ECVideoType type;
        public net.easyconn.ecsdk.ECTypes.ECMirrorViewConfig viewConfig;
        public int width;

        public ECMirrorConfig() {
            this.type = net.easyconn.ecsdk.ECTypes.ECVideoType.EC_VIDEO_TYPE_H264;
            this.capScreenMode = 0;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = 0;
            this.screenDirection = net.easyconn.ecsdk.ECTypes.ECScreenDirection.EC_SCREEN_DIRECTION_UNKNOWN;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4, int i5) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = i5;
            this.screenDirection = net.easyconn.ecsdk.ECTypes.ECScreenDirection.EC_SCREEN_DIRECTION_UNKNOWN;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4, int i5, net.easyconn.ecsdk.ECTypes.ECScreenDirection eCScreenDirection) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = i5;
            this.screenDirection = eCScreenDirection;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4, int i5, net.easyconn.ecsdk.ECTypes.ECScreenDirection eCScreenDirection, net.easyconn.ecsdk.ECTypes.ECMirrorViewConfig eCMirrorViewConfig) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = i5;
            this.screenDirection = eCScreenDirection;
            this.viewConfig = eCMirrorViewConfig;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4, int i5, net.easyconn.ecsdk.ECTypes.ECScreenDirection eCScreenDirection, net.easyconn.ecsdk.ECTypes.ECMirrorViewConfig eCMirrorViewConfig, double d2, double d3, net.easyconn.ecsdk.ECTypes.ECMirrorFeature eCMirrorFeature) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = i5;
            this.screenDirection = eCScreenDirection;
            this.viewConfig = eCMirrorViewConfig;
            this.screenPhysicsWidth = d2;
            this.screenPhysicsHeight = d3;
            this.mirrorFeature = eCMirrorFeature;
        }

        public ECMirrorConfig(net.easyconn.ecsdk.ECTypes.ECVideoType eCVideoType, int i, int i2, int i3, int i4, net.easyconn.ecsdk.ECTypes.ECScreenDirection eCScreenDirection) {
            this.type = eCVideoType;
            this.width = i;
            this.height = i2;
            this.quality = i3;
            this.touchMode = i4;
            this.capScreenMode = 0;
            this.screenDirection = eCScreenDirection;
            this.screenPhysicsHeight = 0.0d;
            this.screenPhysicsWidth = 0.0d;
            this.mirrorFeature = net.easyconn.ecsdk.ECTypes.ECMirrorFeature.EC_MIRROR_FEATURE_DEFAULT;
        }
    }

    public enum ECMirrorFeature {
        EC_MIRROR_FEATURE_DEFAULT(0),
        EC_MIRROR_FEATURE_HUD_ELEMENT_NORMAL(1),
        EC_MIRROR_FEATURE_HUD_ELEMENT_SIMPLE(2);

        public int value;

        ECMirrorFeature(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECMirrorMode {
        public static final int EC_MIRROR_MODE_DEFAULT = 0;
        public static final int EC_MIRROR_MODE_FIXED_NAVIGATION = 1;
        public static final int EC_MIRROR_MODE_SCREEN_MIRROR = 2;
    }

    public static class ECMirrorSize {
        public int height;
        public int width;

        public ECMirrorSize() {
            this.width = 0;
            this.height = 0;
        }

        public ECMirrorSize(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }

    public static class ECMirrorViewConfig {
        public int initArea;
        public net.easyconn.ecsdk.ECTypes.ECVideoViewArea[] viewAreaGroup;

        public ECMirrorViewConfig(int i, net.easyconn.ecsdk.ECTypes.ECVideoViewArea[] eCVideoViewAreaArr) {
            this.initArea = i;
            this.viewAreaGroup = eCVideoViewAreaArr;
        }
    }

    public static class ECMusicInfoCover {
        public byte[] data;
        public int format;

        public ECMusicInfoCover(int i, byte[] bArr) {
            this.format = i;
            this.data = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("format = ");
            sbO.append(this.format);
            sbO.append(" length = ");
            byte[] bArr = this.data;
            sbO.append(bArr == null ? 0 : bArr.length);
            return sbO.toString();
        }
    }

    public enum ECMusicStatus {
        EC_MUSIC_STATUS_PLAYING(1),
        EC_MUSIC_STATUS_PAUSED(2),
        EC_MUSIC_STATUS_STOPPED(3),
        EC_MUSIC_STATUS_PENDING(4),
        EC_MUSIC_STATUS_PLAYING_BY_SPEECH(5);

        public int value;

        ECMusicStatus(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECNaviCameraType {
        EC_NAVI_CAMERA_SPEED(0),
        EC_NAVI_CAMERA_SPY(1),
        EC_NAVI_CAMERA_REDLIGHT(2),
        EC_NAVI_CAMERA_VIOLATION(3),
        EC_NAVI_CAMERA_BUS(4),
        EC_NAVI_CAMERA_EMERGENCY(5),
        EC_NAVI_CAMERA_MAX(6);

        public int value;

        ECNaviCameraType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECNaviIcon {
        EC_NAVI_ICON_UNDEFINED(0),
        EC_NAVI_ICON_VEHICLE(1),
        EC_NAVI_ICON_LEFT(2),
        EC_NAVI_ICON_RIGHT(3),
        EC_NAVI_ICON_LEFT_FRONT(4),
        EC_NAVI_ICON_RIGHT_FRONT(5),
        EC_NAVI_ICON_LEFT_BACK(6),
        EC_NAVI_ICON_RIGHT_BACK(7),
        EC_NAVI_ICON_LEFT_TURN_AROUND(8),
        EC_NAVI_ICON_STRAIGHT(9),
        EC_NAVI_ICON_ARRIVED_WAYPOINT(10),
        EC_NAVI_ICON_ENTER_ROUNDABOUT(11),
        EC_NAVI_ICON_OUT_ROUNDABOUT(12),
        EC_NAVI_ICON_ARRIVED_SERVICE_AREA(13),
        EC_NAVI_ICON_ARRIVED_TOLLGATE(14),
        EC_NAVI_ICON_ARRIVED_DESTINATION(15),
        EC_NAVI_ICON_ARRIVED_TUNNEL(16),
        EC_NAVI_ICON_CROSSWALK(17),
        EC_NAVI_ICON_OVERPASS(18),
        EC_NAVI_ICON_UNDERPASS(19),
        EC_NAVI_ICON_SQUARE(20),
        EC_NAVI_ICON_PARK(21),
        EC_NAVI_ICON_STAIRCASE(22),
        EC_NAVI_ICON_LIFT(23),
        EC_NAVI_ICON_CABLEWAY(24),
        EC_NAVI_ICON_SKY_CHANNEL(25),
        EC_NAVI_ICON_CHANNEL(26),
        EC_NAVI_ICON_WALK_ROAD(27),
        EC_NAVI_ICON_CRUISE_ROUTE(28),
        EC_NAVI_ICON_SIGHTSEEING_BUSLINE(29),
        EC_NAVI_ICON_SLIDEWAY(30),
        EC_NAVI_ICON_LADDER(31),
        EC_NAVI_ICON_MERGE_LEFT(51),
        EC_NAVI_ICON_MERGE_RIGHT(52),
        EC_NAVI_ICON_SLOW(53),
        EC_NAVI_ICON_ENTRY_RING_LEFT(54),
        EC_NAVI_ICON_ENTRY_RING_RIGHT(55),
        EC_NAVI_ICON_ENTRY_RING_CONTINUE(56),
        EC_NAVI_ICON_ENTRY_RING_UTURN(57),
        EC_NAVI_ICON_ENTRY_LEFT_RING(58),
        EC_NAVI_ICON_LEAVE_LEFT_RING(59),
        EC_NAVI_ICON_UTURN_RIGHT(60),
        EC_NAVI_ICON_SPECIAL_CONTINUE(61),
        EC_NAVI_ICON_ENTRY_LEFT_RING_LEFT(62),
        EC_NAVI_ICON_ENTRY_LEFT_RING_RIGHT(63),
        EC_NAVI_ICON_ENTRY_LEFT_RING_CONTINUE(64),
        EC_NAVI_ICON_ENTRY_LEFT_RING_UTURN(65),
        EC_NAVI_ICON_SLOPE(66),
        EC_NAVI_ICON_BRIDGE(67),
        EC_NAVI_ICON_FERRYBOAT(68),
        EC_NAVI_ICON_SUBWAY(69),
        EC_NAVI_ICON_ENTER_BUILDING(70),
        EC_NAVI_ICON_LEAVE_BUILDING(71),
        EC_NAVI_ICON_BY_ELEVATOR(72),
        EC_NAVI_ICON_BY_STAIR(73),
        EC_NAVI_ICON_ESCALATOR(74),
        EC_NAVI_ICON_LOW_TRAFFIC_CROSS(75),
        EC_NAVI_ICON_LOW_CROSS(76),
        EC_NAVI_ROTARY_SHARP_LEFT(77),
        EC_NAVI_ROTARY_SHARP_RIGHT(78),
        EC_NAVI_ROTARY_SLIGHT_LEFT(79),
        EC_NAVI_ROTARY_SLIGHT_RIGHT(80),
        EC_NAVI_ICON_MAX(81);

        public int value;

        ECNaviIcon(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECNaviStatus {
        EC_NAVI_STATUS_ACTIVE(0),
        EC_NAVI_STATUS_INACTIVE(1),
        EC_NAVI_STATUS_MAX(2);

        public int value;

        ECNaviStatus(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECNavigationHudInfo {
        public long arriveTime;
        public java.lang.String arriveTimeZone;
        public int cameraDistance;
        public int cameraSpeed;
        public net.easyconn.ecsdk.ECTypes.ECNaviCameraType cameraType;
        public int carDirection;
        public java.lang.String currentRoad;
        public int destinationRemainingDistance;
        public int destinationRemainingTime;
        public net.easyconn.ecsdk.ECTypes.ECNaviIcon naviIcon;
        public java.lang.String nextRoad;
        public int roadRemainingDistance;
        public int roadRemainingTime;
        public net.easyconn.ecsdk.ECTypes.ECNaviStatus status;

        public ECNavigationHudInfo(net.easyconn.ecsdk.ECTypes.ECNaviStatus eCNaviStatus, java.lang.String str, int i, net.easyconn.ecsdk.ECTypes.ECNaviCameraType eCNaviCameraType, int i2, int i3, net.easyconn.ecsdk.ECTypes.ECNaviIcon eCNaviIcon, java.lang.String str2, int i4, int i5, int i6, int i7, long j, java.lang.String str3) {
            this.status = eCNaviStatus;
            this.currentRoad = str;
            this.carDirection = i;
            this.cameraType = eCNaviCameraType;
            this.cameraSpeed = i2;
            this.cameraDistance = i3;
            this.naviIcon = eCNaviIcon;
            this.nextRoad = str2;
            this.roadRemainingDistance = i4;
            this.roadRemainingTime = i5;
            this.destinationRemainingDistance = i6;
            this.destinationRemainingTime = i7;
            this.arriveTime = j;
            this.arriveTimeZone = str3;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("status=");
            sbO.append(this.status);
            sb.append(sbO.toString());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(",currentRoad=");
            java.lang.StringBuilder sbS = e.a.c.a.a.s(sb2, this.currentRoad, sb, ",carDirection=");
            sbS.append(this.carDirection);
            sb.append(sbS.toString());
            sb.append(",cameraType=" + this.cameraType);
            sb.append(",cameraSpeed=" + this.cameraSpeed);
            sb.append(",cameraDistance=" + this.cameraDistance);
            sb.append(",naviIcon=" + this.naviIcon);
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append(",nextRoad=");
            java.lang.StringBuilder sbS2 = e.a.c.a.a.s(sb3, this.nextRoad, sb, ",roadRemainingDistance=");
            sbS2.append(this.roadRemainingDistance);
            sb.append(sbS2.toString());
            sb.append(",roadRemainingTime=" + this.roadRemainingTime);
            sb.append(",destinationRemainingDistance=" + this.destinationRemainingDistance);
            sb.append(",destinationRemainingTime=" + this.destinationRemainingTime);
            sb.append(",arriveTime=" + this.arriveTime);
            sb.append(",arriveTimeZone=" + this.arriveTimeZone);
            return sb.toString();
        }
    }

    public static class ECNetInterfaceInfo {
        public java.lang.String ifa_address;
        public java.lang.String ifa_name;
        public java.lang.String ifa_netmask;
        public boolean supportsMulticast;

        public ECNetInterfaceInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z) {
            this.ifa_name = str;
            this.ifa_address = str2;
            this.ifa_netmask = str3;
            this.supportsMulticast = z;
        }
    }

    public static class ECNetLinkInfo {
        public int netFlow;
        public boolean state;

        public ECNetLinkInfo(boolean z, int i) {
            this.state = z;
            this.netFlow = i;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("state = ");
            sbO.append(this.state);
            sbO.append(" netFlow = ");
            sbO.append(this.netFlow);
            return sbO.toString();
        }
    }

    public enum ECOTAUpdateCheckMode {
        EC_OTA_CHECK_VIA_DEFAULT(0),
        EC_OTA_CHECK_VIA_NETWORK(1),
        EC_OTA_CHECK_VIA_PHONE(2),
        EC_OTA_CHECK_ONLY_LOCAL(3);

        public int value;

        ECOTAUpdateCheckMode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECOTAUpdateErrorCode {
        public static final int EC_OTA_ERROR_SOFTWARE_DOWNLOAD_FAILED_VIA_NETWORK = -1;
        public static final int EC_OTA_ERROR_SOFTWARE_DOWNLOAD_FAILED_VIA_PHONE = -4;
        public static final int EC_OTA_ERROR_SOFTWARE_NETWORK_UNAVAILABLE = -3;
        public static final int EC_OTA_ERROR_SOFTWARE_SPACE_NOT_ENOUGH = -2;
    }

    public static class ECOTAUpdateSoftware {
        public java.lang.String createTime;
        public java.lang.String iconPath;
        public int isFullDist;
        public boolean isRemote;
        public java.lang.String md5Path;
        public java.lang.String modifyTime;
        public java.lang.String packagePath;
        public java.lang.String softwareId;
        public java.lang.String softwareName;
        public long softwareSize;
        public java.lang.String vcDesc;
        public java.lang.String vcDetail;
        public java.lang.String vcTitle;
        public int versionCode;

        public ECOTAUpdateSoftware(java.lang.String str, java.lang.String str2, long j, int i, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, int i2, java.lang.String str8, java.lang.String str9, java.lang.String str10, boolean z) {
            this.softwareId = str;
            this.softwareName = str2;
            this.softwareSize = j;
            this.versionCode = i;
            this.vcDesc = str3;
            this.vcTitle = str4;
            this.vcDetail = str5;
            this.createTime = str6;
            this.modifyTime = str7;
            this.isFullDist = i2;
            this.packagePath = str8;
            this.md5Path = str9;
            this.iconPath = str10;
            this.isRemote = z;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbS = e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.o("softwareId="), this.softwareId, sb, ", softwareName="), this.softwareName, sb, ", softwareSize=");
            sbS.append(this.softwareSize);
            sb.append(sbS.toString());
            sb.append(", versionCode=" + this.versionCode);
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(", vcDesc=");
            java.lang.StringBuilder sbS2 = e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(sb2, this.vcDesc, sb, ", vcTitle="), this.vcTitle, sb, ", vcDetail="), this.vcDetail, sb, ", createTime="), this.createTime, sb, ", modifyTime="), this.modifyTime, sb, ", isFullDist=");
            sbS2.append(this.isFullDist);
            sb.append(sbS2.toString());
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append(", packagePath=");
            java.lang.StringBuilder sbS3 = e.a.c.a.a.s(e.a.c.a.a.s(e.a.c.a.a.s(sb3, this.packagePath, sb, ", md5Path="), this.md5Path, sb, ", iconPath="), this.iconPath, sb, ", isRemote=");
            sbS3.append(this.isRemote);
            sb.append(sbS3.toString());
            return sb.toString();
        }
    }

    public static class ECOptions {
        public int bluetoothPolicy;
        public java.lang.String workspace;
        public boolean enableWifiDirect = true;
        public boolean enableUsbBroadcastReceiver = true;
        public boolean enableAndroidUsbForADB = true;
        public boolean enableAndroidUsbForAOA = true;
        public boolean enableIOSUsb = true;
        public java.lang.String usbFilterPath = "";
        public boolean useBindTransport = false;
        public net.easyconn.ecsdk.ECTypes.ECConfig config = null;
        public boolean supportRVForAdb = false;
        public boolean isAppMirrorForAdb = false;
        public boolean supportScreenMirroring = true;
        public boolean supportThirdPartyApp = true;
        public boolean supportLandscapeAdaptive = true;
        public boolean supportScreenTouch = true;
        public boolean supportOTAUpdate = true;
        public boolean supportBackDesktop = false;
        public int mirrorMode = 0;
        public boolean useJavaBindTransport = false;

        @java.lang.Deprecated
        public boolean useDefaultMdnsPort = true;
        public boolean useSubProcess = false;
        public boolean useCarBtCallRecords = false;
        public boolean supportPhoneSignal = false;
        public int socketTimeoutPeriod = 0;
    }

    public static class ECPageInfo {
        public java.lang.String iconMd5;
        public int installState;
        public java.lang.String name;
        public int packageSize;
        public int page;
        public int sequence;
        public int type;

        public ECPageInfo(int i, int i2, java.lang.String str, java.lang.String str2, int i3) {
            this.page = i;
            this.name = str;
            this.iconMd5 = str2;
            this.installState = i3;
            this.type = i2;
            this.packageSize = 0;
            this.sequence = 0;
        }

        public ECPageInfo(int i, int i2, java.lang.String str, java.lang.String str2, int i3, int i4) {
            this.page = i;
            this.name = str;
            this.iconMd5 = str2;
            this.installState = i3;
            this.type = i2;
            this.packageSize = i4;
            this.sequence = 0;
        }

        public ECPageInfo(int i, int i2, java.lang.String str, java.lang.String str2, int i3, int i4, int i5) {
            this.page = i;
            this.name = str;
            this.iconMd5 = str2;
            this.installState = i3;
            this.type = i2;
            this.packageSize = i4;
            this.sequence = i5;
        }

        public ECPageInfo(int i, java.lang.String str, java.lang.String str2) {
            this.page = i;
            this.name = str;
            this.iconMd5 = str2;
            this.type = 0;
            this.packageSize = 0;
            this.sequence = 0;
        }

        public ECPageInfo(int i, java.lang.String str, java.lang.String str2, int i2) {
            this.page = i;
            this.name = str;
            this.iconMd5 = str2;
            this.installState = i2;
            this.type = 0;
            this.packageSize = 0;
            this.sequence = 0;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("page=");
            sbO.append(this.page);
            stringBuffer.append(sbO.toString());
            stringBuffer.append(", type=" + this.type);
            stringBuffer.append(", name=" + this.name);
            stringBuffer.append(", iconMd5=" + this.iconMd5);
            stringBuffer.append(", installState=" + this.installState);
            stringBuffer.append(", packageSize=" + this.packageSize);
            stringBuffer.append(", sequence=" + this.sequence);
            return stringBuffer.toString();
        }
    }

    public static class ECPageInstallAction {
        public static final int EC_PAGE_REQUEST_INSTALL_ACTION_INSTALL = 0;
        public static final int EC_PAGE_REQUEST_INSTALL_ACTION_UNINSTALL = 2;
        public static final int EC_PAGE_REQUEST_INSTALL_ACTION_UPDATE = 1;
    }

    public static class ECPageInstallResult {
        public int installState;
        public java.lang.String note;
        public int packageSize;
        public int page;
        public float progress;
        public int type;

        public ECPageInstallResult(int i, int i2, int i3, float f2, int i4, java.lang.String str) {
            this.page = i;
            this.type = i2;
            this.installState = i3;
            this.note = str;
            this.progress = f2;
            this.packageSize = i4;
        }

        public ECPageInstallResult(int i, int i2, int i3, float f2, java.lang.String str) {
            this.page = i;
            this.type = i2;
            this.installState = i3;
            this.note = str;
            this.progress = f2;
            this.packageSize = 0;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("page=");
            sbO.append(this.page);
            stringBuffer.append(sbO.toString());
            stringBuffer.append("type = " + this.type);
            stringBuffer.append(", installState=" + this.installState);
            stringBuffer.append(", progress=" + this.progress);
            stringBuffer.append(", packageSize=" + this.packageSize);
            stringBuffer.append(", note=" + this.note);
            return stringBuffer.toString();
        }
    }

    public static class ECPageInstallState {
        public static final int EC_PAGE_INSTALL_STATE_CAN_UPDATE = 5;
        public static final int EC_PAGE_INSTALL_STATE_DEFAULT = 0;
        public static final int EC_PAGE_INSTALL_STATE_DOWNLOADED = 14;
        public static final int EC_PAGE_INSTALL_STATE_DOWNLOADING = 10;
        public static final int EC_PAGE_INSTALL_STATE_INSTALLED = 3;
        public static final int EC_PAGE_INSTALL_STATE_INSTALLING = 2;
        public static final int EC_PAGE_INSTALL_STATE_INSTALL_FAIL = 4;
        public static final int EC_PAGE_INSTALL_STATE_PAGE_NOT_STARTED = 4096;
        public static final int EC_PAGE_INSTALL_STATE_PAGE_STARTED = 16384;
        public static final int EC_PAGE_INSTALL_STATE_PAGE_STARTING = 8192;
        public static final int EC_PAGE_INSTALL_STATE_PHONE_NO_ENOUGH_SPACE = 13;
        public static final int EC_PAGE_INSTALL_STATE_PHONE_UNINSTALLED = 11;
        public static final int EC_PAGE_INSTALL_STATE_TO_BE_INSTALLED = 12;
        public static final int EC_PAGE_INSTALL_STATE_UNINSTALLED = 1;
        public static final int EC_PAGE_INSTALL_STATE_UNINSTALLING = 8;
        public static final int EC_PAGE_INSTALL_STATE_UNINSTALLING_FAIL = 9;
        public static final int EC_PAGE_INSTALL_STATE_UPDATE_FAIL = 7;
        public static final int EC_PAGE_INSTALL_STATE_UPDATING = 6;
    }

    public static class ECPageType {
        public static final int EC_PAGE_TYPE_360_DOWNLOAD = 8192;
        public static final int EC_PAGE_TYPE_DEFAULT = 0;
        public static final int EC_PAGE_TYPE_GAME = 32;
        public static final int EC_PAGE_TYPE_LOCAL = 128;
        public static final int EC_PAGE_TYPE_LOCAL_DOWNLOAD = 16384;
        public static final int EC_PAGE_TYPE_MIRROR_THIRD_APP = 2048;
        public static final int EC_PAGE_TYPE_MUSIC = 1;
        public static final int EC_PAGE_TYPE_NATIVE_APP = 512;
        public static final int EC_PAGE_TYPE_NAVI = 8;
        public static final int EC_PAGE_TYPE_NEWS = 16;
        public static final int EC_PAGE_TYPE_ONLINE = 64;
        public static final int EC_PAGE_TYPE_PARALLEL_WORLD_APP = 1024;
        public static final int EC_PAGE_TYPE_PRE_INSTALL = 4096;
        public static final int EC_PAGE_TYPE_ROM = 256;
        public static final int EC_PAGE_TYPE_TOOL = 4;
        public static final int EC_PAGE_TYPE_VIDEO = 2;
    }

    public enum ECParallelWorldAudioSource {
        EC_PARALLEL_WORLD_AUDIO_SOURCE_DEFAULT(0),
        EC_PARALLEL_WORLD_AUDIO_SOURCE_TTS(1),
        EC_PARALLEL_WORLD_AUDIO_SOURCE_MUSIC(2);

        public int value;

        ECParallelWorldAudioSource(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECParallelWorldCache {
        public int noticeType;
        public int parallelWorldUsedCache;
        public int phoneLeftSpace;

        public ECParallelWorldCache(int i, int i2, int i3) {
            this.noticeType = i;
            this.parallelWorldUsedCache = i2;
            this.phoneLeftSpace = i3;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("noticeType = ");
            sbO.append(this.noticeType);
            sbO.append(", parallelWorldUsedCache = ");
            sbO.append(this.parallelWorldUsedCache);
            sbO.append(" phoneLeftSpace = ");
            sbO.append(this.phoneLeftSpace);
            return sbO.toString();
        }
    }

    public static class ECPhoneBlueState {
        public static final int EC_PHONE_BLUE_STATE_AUTH_PENDING = 4096;
        public static final int EC_PHONE_BLUE_STATE_CLOSE = 4097;
        public static final int EC_PHONE_BLUE_STATE_CONNECTED = 4099;
        public static final int EC_PHONE_BLUE_STATE_DISCONNECT = 4098;
    }

    public static class ECPhoneNotification {
        public byte[] appIcon;
        public int appIconFormat;
        public int appIconLen;
        public java.lang.String appName;
        public java.lang.String context;
        public java.lang.String dateTime;
        public java.lang.String title;

        public ECPhoneNotification(int i, byte[] bArr, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
            this.appName = str;
            this.title = str2;
            this.context = str3;
            this.dateTime = str4;
            this.appIconFormat = i;
            this.appIcon = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" appName = ");
            sbO.append(this.appName);
            sbO.append(" title = ");
            sbO.append(this.title);
            sbO.append(" context = ");
            sbO.append(this.context);
            sbO.append(" dateTime = ");
            sbO.append(this.dateTime);
            return sbO.toString();
        }
    }

    public static class ECProductType {
        public static final int EC_PRODUCT_TYPE_DA = 1;
        public static final int EC_PRODUCT_TYPE_DEFAULT = 0;
        public static final int EC_PRODUCT_TYPE_MU = 2;
        public static final int EC_PRODUCT_TYPE_NI = 3;
        public static final int EC_PRODUCT_TYPE_TWICC = 4;
    }

    public static class ECQRInfo {
        public int action;
        public java.lang.String auth;
        public java.lang.String bm;
        public java.lang.String mac;
        public java.lang.String name;
        public java.lang.String pwd;
        public java.lang.String ssid;

        public ECQRInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, int i) {
            this.ssid = str;
            this.pwd = str2;
            this.auth = str3;
            this.mac = str4;
            this.name = str5;
            this.bm = "";
            this.action = i;
        }

        public ECQRInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, int i) {
            this.ssid = str;
            this.pwd = str2;
            this.auth = str3;
            this.mac = str4;
            this.name = str5;
            this.bm = str6;
            this.action = i;
        }

        public java.lang.String toString() {
            java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ssid=");
            sbO.append(this.ssid);
            stringBuffer.append(sbO.toString());
            stringBuffer.append(", pwd=" + this.pwd);
            stringBuffer.append(", auth=" + this.auth);
            stringBuffer.append(", mac=" + this.mac);
            stringBuffer.append(", name=" + this.name);
            stringBuffer.append(", bm=" + this.bm);
            stringBuffer.append(", action=" + this.action);
            return stringBuffer.toString();
        }
    }

    public static class ECQrAction {
        public static final int EC_QR_ACTION_BLE = 128;
        public static final int EC_QR_ACTION_BT = 64;
        public static final int EC_QR_ACTION_DEFAULT = 0;
        public static final int EC_QR_ACTION_USB_ANDROID = 16;
        public static final int EC_QR_ACTION_USB_IPHONE = 32;
        public static final int EC_QR_ACTION_WIFI_AP_MODE_ACCESS_INTERNET = 2;
        public static final int EC_QR_ACTION_WIFI_AP_MODE_CUSTOMIZED = 1;
        public static final int EC_QR_ACTION_WIFI_P2P_MODE = 8;
        public static final int EC_QR_ACTION_WIFI_STATION_MODE = 4;
    }

    public static class ECRoundScreenMirrorPos {
        public int mirrorOffsetX;
        public int mirrorOffsetY;
        public int screenRadius;

        public ECRoundScreenMirrorPos(int i, int i2, int i3) {
            this.screenRadius = i;
            this.mirrorOffsetX = i2;
            this.mirrorOffsetY = i3;
        }
    }

    public static class ECSEPrameter {
        public static final java.lang.String EC_SE_PARAM_KEY_AEC_REF_NUMBER = "aec_ref_number";
        public static final java.lang.String EC_SE_PARAM_KEY_AEC_WORK_MODE = "aec_work_mode";
        public static final java.lang.String EC_SE_PARAM_KEY_BEAM_INDEX = "beam_index";
        public static final java.lang.String EC_SE_PARAM_KEY_MIC_NUMBER = "mic_number";
        public static final java.lang.String EC_SE_PARAM_KEY_WORK_MODE = "work_mode";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_OFF_MODE = "1";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_REF_DBL = "2";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_REF_QUAD = "4";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_REF_SGL = "1";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_REF_ZERO = "0";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_TEL_MODE = "3";
        public static final java.lang.String EC_SE_PARAM_VALUE_AEC_VR_MODE = "2";
        public static final java.lang.String EC_SE_PARAM_VALUE_BEAM_FRONT_LEFT = "0";
        public static final java.lang.String EC_SE_PARAM_VALUE_BEAM_FRONT_RIGTH = "1";
        public static final java.lang.String EC_SE_PARAM_VALUE_BEAM_REAR_LEFT = "2";
        public static final java.lang.String EC_SE_PARAM_VALUE_BEAM_REAR_MID = "4";
        public static final java.lang.String EC_SE_PARAM_VALUE_BEAM_REAR_RIGHT = "3";
        public static final java.lang.String EC_SE_PARAM_VALUE_BLUETOOTH_MAE_MODE = "9";
        public static final java.lang.String EC_SE_PARAM_VALUE_FAKE_MAE_MODE = "1";
        public static final java.lang.String EC_SE_PARAM_VALUE_FOURVOICE_MAB_AND_MAE_MODE = "8";
        public static final java.lang.String EC_SE_PARAM_VALUE_FOURVOICE_MAB_MODE = "6";
        public static final java.lang.String EC_SE_PARAM_VALUE_FOURVOICE_MAE_MODE = "7";
        public static final java.lang.String EC_SE_PARAM_VALUE_LSA_MODE = "2";
        public static final java.lang.String EC_SE_PARAM_VALUE_MAB_AND_MAE_MODE = "5";
        public static final java.lang.String EC_SE_PARAM_VALUE_MAB_MODE = "4";
        public static final java.lang.String EC_SE_PARAM_VALUE_MAB_NN_FOR_6020 = "10";
        public static final java.lang.String EC_SE_PARAM_VALUE_MAE_MODE = "3";
        public static final java.lang.String EC_SE_PARAM_VALUE_MIC_DBL = "2";
        public static final java.lang.String EC_SE_PARAM_VALUE_MIC_QUAD = "4";
        public static final java.lang.String EC_SE_PARAM_VALUE_MIC_SGL = "1";
        public static final java.lang.String EC_SE_PARAM_VALUE_VAD_ONLY_MODE = "0";
    }

    public enum ECScreenDirection {
        EC_SCREEN_DIRECTION_UNKNOWN(0),
        EC_SCREEN_DIRECTION_HORIZONTAL(1),
        EC_SCREEN_DIRECTION_VERTICAL(2),
        EC_SCREEN_DIRECTION_HORIZONTAL_ROUND(3),
        EC_SCREEN_DIRECTION_VERTICAL_ROUND(4);

        public int value;

        ECScreenDirection(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECScreenType {
        EC_CAR_SCREEN_HORIZONTAL(0),
        EC_CAR_SCREEN_VERTICAL(1),
        EC_CAR_SCREEN_HORIZONTIAL_ROUND(2),
        EC_CAR_SCREEN_VERTICAL_ROUND(3),
        EC_CAR_SCREEN_UNKNOWN(4);

        public int value;

        ECScreenType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECSensorErrorType {
        EC_SENSORERROR_OK(0),
        EC_SENSORERROR_TRANSIENT(1),
        EC_SENSORERROR_PERMANENT(2);

        public int value;

        ECSensorErrorType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECSensorType {
        EC_SENSOR_LOCATION(1),
        EC_SENSOR_COMPASS(2),
        EC_SENSOR_SPEED(3),
        EC_SENSOR_RPM(4),
        EC_SENSOR_ODOMETER(5),
        EC_SENSOR_FUEL(6),
        EC_SENSOR_PARKING_BRAKE(7),
        EC_SENSOR_GEAR(8),
        EC_SENSOR_NIGHT_MODE(9),
        EC_SENSOR_ENV_STATUS(10),
        EC_SENSOR_DRIVING_STATUS(11),
        EC_SENSOR_PASSENGER_STATUS(12),
        EC_SENSOR_DOOR_STATUS(13),
        EC_SENSOR_LIGHT_STATUS(14),
        EC_SENSOR_TIRE_PRESSURE_STATUS(15),
        EC_SENSOR_ACCLEROMETER_STATUS(16),
        EC_SENSOR_GYROSCOPE_STATUS(17),
        EC_SENSOR_GPS_SATELLITE_STATUS(18),
        EC_SENSOR_MAX(19);

        public int value;

        ECSensorType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECSpeechEngineType {
        public static final int EC_SPEECH_ENGINE_IFLYTEK = 2;
        public static final int EC_SPEECH_ENGINE_IFLYTEK_ADVANCED = 2001;
        public static final int EC_SPEECH_ENGINE_IFLYTEK_PRO = 2002;
        public static final int EC_SPEECH_ENGINE_TXZ = 1;
    }

    public enum ECStatusMessage {
        EC_STATUS_MESSAGE_USER_NOT_AUTH_DEBUG(0),
        EC_STATUS_MESSAGE_APP_NOT_RUNNING(1),
        EC_STATUS_MESSAGE_APP_FOREGROUND(2),
        EC_STATUS_MESSAGE_APP_FOREGROUND_SAME(3),
        EC_STATUS_MESSAGE_APP_FOREGROUND_SPLIT(4),
        EC_STATUS_MESSAGE_APP_BACKGROUND_SAME(5),
        EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT(6),
        EC_STATUS_MESSAGE_APP_SCREENLOCKED(7),
        EC_STATUS_MESSAGE_APP_UNSCREENLOCKED(8),
        EC_STATUS_MESSAGE_APP_NAVI_STARTED(9),
        EC_STATUS_MESSAGE_APP_NAVI_STOPPED(10),
        EC_STATUS_MESSAGE_SWITCH_AOA_FAIL(11),
        EC_STATUS_MESSAGE_3RD_APP_HORIZONTAL_NOT_SUPPORT(12),
        EC_STATUS_MESSAGE_3RD_APP_HORIZONTAL_SUPPORT(13),
        EC_STATUS_MESSAGE_APP_VR_STARTED(14),
        EC_STATUS_MESSAGE_APP_VR_STOPPED(15),
        EC_STATUS_MESSAGE_ACQUIRE_BLUETOOTH_A2DP(16),
        EC_STATUS_MESSAGE_ACQUIRE_BLUETOOTH_A2DP_WITHOUT_SEND_PLAY(17),
        EC_STATUS_MESSAGE_SWITCH_TO_SYSTEM_MAIN_PAGE(18),
        EC_STATUS_MESSAGE_LAUNCH_PHONE_APP(19),
        EC_STATUS_MESSAGE_APP_TALKIE_STARTED(20),
        EC_STATUS_MESSAGE_APP_TALKIE_STOPPED(21),
        EC_STATUS_MESSAGE_APP_MUSIC_PENDING(22),
        EC_STATUS_MESSAGE_APP_MUSIC_PLAYING(23),
        EC_STATUS_MESSAGE_APP_MUSIC_PAUSED(24),
        EC_STATUS_MESSAGE_APP_MUSIC_STOPPED(25),
        EC_STATUS_MESSAGE_SWITCH_TO_FRONT(26),
        EC_STATUS_MESSAGE_OPEN_BLUETOOTH_PHONE(27),
        EC_STATUS_MESSAGE_OPEN_BLUETOOTH_SETTING(28),
        EC_STATUS_MESSAGE_TALKIE_MUTE(29),
        EC_STATUS_MESSAGE_TALKIE_NON_MUTE(30),
        EC_STATUS_MESSAGE_TALKIE_NON_LOGIN(31),
        EC_STATUS_MESSAGE_SWITCH_EASYCONN_TO_BACKGROUND(32),
        EC_STATUS_MESSAGE_HU_BT_NOT_MATCH(33),
        EC_STATUS_MESSAGE_ENABLE_UPLOAD_GPS_INFO(34),
        EC_STATUS_MESSAGE_DISABLE_UPLOAD_GPS_INFO(35),
        EC_STATUS_MESSAGE_ENABLE_ACCESSIBILITY(36),
        EC_STATUS_MESSAGE_DISABLE_ACCESSIBILITY(37),
        EC_STATUS_MESSAGE_START_DLNA_SERVICE(38),
        EC_STATUS_MESSAGE_STOP_DLNA_SERVICE(39),
        EC_STATUS_MESSAGE_VR_TIPS_HIDE(40),
        EC_STATUS_MESSAGE_VR_TIPS_SHOW(41),
        EC_STATUS_MESSAGE_IMUX_READ_VERSION_TIMEOUT(42),
        EC_STATUS_MESSAGE_NET_LINK_OPEN(43),
        EC_STATUS_MESSAGE_NET_LINK_CLOSE(44),
        EC_STATUS_MESSAGE_IOS_APP_MIRROR_STARTING(45),
        EC_STATUS_MESSAGE_IOS_APP_MIRROR_CLOSEING(46),
        EC_STATUS_MESSAGE_APP_FOREGROUND_SPLIT_OVERLAY(47),
        EC_STATUS_MESSAGE_APP_BACKGROUND_SPLIT_OVERLAY(48),
        EC_STATUS_MESSAGE_TALK_TEAM_UP(49),
        EC_STATUS_MESSAGE_TALK_TEAM_DISBAND(50),
        EC_STATUS_MESSAGE_MAX(51);

        public int value;

        ECStatusMessage(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECSupportConnect {
        public static final int EC_SUPPORT_CONNECT_ADB = 1;
        public static final int EC_SUPPORT_CONNECT_AIRPLAY = 16;
        public static final int EC_SUPPORT_CONNECT_ANDROID_WIFI = 512;
        public static final int EC_SUPPORT_CONNECT_AOA = 2;
        public static final int EC_SUPPORT_CONNECT_EAP = 32;
        public static final int EC_SUPPORT_CONNECT_IPHONE_WIFI = 256;
        public static final int EC_SUPPORT_CONNECT_LIGHTNING = 128;
        public static final int EC_SUPPORT_CONNECT_MUX = 64;
        public static final int EC_SUPPORT_CONNECT_USB_AIRPLAY = 1024;
        public static final int EC_SUPPORT_CONNECT_WIFI = 4;
        public static final int EC_SUPPORT_CONNECT_WIFIDIRECT = 8;
        public static final int EC_SUPPORT_CONNECT_WIFI_AIRPLAY = 2048;
    }

    public static class ECSupportFunction {
        public static final int EC_SUPPORT_FUNCTION_ANDROID_PARALLEL_WORLD = 4096;
        public static final int EC_SUPPORT_FUNCTION_BLE_CONNECT = 8192;
        public static final int EC_SUPPORT_FUNCTION_BLE_HID = 16384;
        public static final int EC_SUPPORT_FUNCTION_BT_AUTO_PAIR = 16;
        public static final int EC_SUPPORT_FUNCTION_BT_CALL_BY_HU = 256;
        public static final int EC_SUPPORT_FUNCTION_BT_MUSIC = 8;
        public static final int EC_SUPPORT_FUNCTION_DLNA = 512;
        public static final int EC_SUPPORT_FUNCTION_GPS = 64;
        public static final int EC_SUPPORT_FUNCTION_HU_HOTSPOT = 32;
        public static final int EC_SUPPORT_FUNCTION_INPUT = 1;
        public static final int EC_SUPPORT_FUNCTION_MEDIA_TRANSPORT_VIA_EC = 2048;
        public static final int EC_SUPPORT_FUNCTION_MIRROR_OVERLAY = 32768;
        public static final int EC_SUPPORT_FUNCTION_MULT_STREAMS = 131072;
        public static final int EC_SUPPORT_FUNCTION_PHONE_CONTROL_CAR = 1024;
        public static final int EC_SUPPORT_FUNCTION_SPEECH_WAKE = 2;
        public static final int EC_SUPPORT_FUNCTION_VIRTUAL_INSTRUMENT = 65536;
        public static final int EC_SUPPORT_FUNCTION_VR_TEXT = 4;
        public static final int EC_SUPPORT_FUNCTION_WEB_CAR_DVR = 262144;
        public static final int EC_SUPPORT_FUNCTION_WIFI_QR_CONNECT = 128;
    }

    public enum ECSystemKeyCode {
        EC_SYSTEM_KEYCODE_HOME(0),
        EC_SYSTEM_KEYCODE_MENU(1),
        EC_SYSTEM_KEYCODE_BACK(2),
        EC_SYSTEM_KEYCODE_VOLUME_UP(3),
        EC_SYSTEM_KEYCODE_VOLUME_DOWN(4),
        EC_SYSTEM_KEYCODE_MEDIA_PALY(5),
        EC_SYSTEM_KEYCODE_MEDIA_PAUSE(6),
        EC_SYSTEM_KEYCODE_MEDIA_STOP(7),
        EC_SYSTEM_KEYCODE_MEDIA_NEXT(8),
        EC_SYSTEM_KEYCODE_MEDIA_PREVIOUS(9),
        EC_SYSTEM_KEYCODE_MEDIA_REWIND(10),
        EC_SYSTEM_KEYCODE_MEDIA_FAST_FORWARD(11),
        EC_SYSTEM_KEYCODE_MUTE(12),
        EC_SYSTEM_KEYCODE_POWER(13),
        EC_SYSTEM_KEYCODE_UP(14),
        EC_SYSTEM_KEYCODE_DOWN(15),
        EC_SYSTEM_KEYCODE_LEFT(16),
        EC_SYSTEM_KEYCODE_RIGHT(17);

        public int value;

        ECSystemKeyCode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECTimeInfo {
        public java.lang.String dateTime;
        public long gmtTime;
        public long localTime;
        public java.lang.String timeZone;

        public ECTimeInfo() {
            this.gmtTime = 0L;
            this.localTime = 0L;
            this.timeZone = "";
            this.dateTime = "";
        }

        public ECTimeInfo(long j, long j2, java.lang.String str) {
            this.gmtTime = j;
            this.localTime = j2;
            this.timeZone = str;
        }

        public ECTimeInfo(long j, long j2, java.lang.String str, java.lang.String str2) {
            this.gmtTime = j;
            this.localTime = j2;
            this.timeZone = str;
            this.dateTime = str2;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("gmtTime=");
            sbO.append(this.gmtTime);
            sbO.append(", localTime=");
            sbO.append(this.localTime);
            sbO.append(", timeZone=");
            sbO.append(this.timeZone);
            sbO.append(", dateTime=");
            sbO.append(this.dateTime);
            return sbO.toString();
        }
    }

    public static class ECTouchEventData {
        public int pointX;
        public int pointY;
        public int slot;

        public ECTouchEventData(int i, int i2, int i3) {
            this.pointX = i;
            this.pointY = i2;
            this.slot = i3;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("x=");
            sbO.append(this.pointX);
            sbO.append(", y=");
            sbO.append(this.pointY);
            sbO.append(", slot=");
            sbO.append(this.slot);
            return sbO.toString();
        }
    }

    public enum ECTouchEventType {
        EC_TOUCH_UP(0),
        EC_TOUCH_DOWN(1),
        EC_TOUCH_MOVE(2);

        public int value;

        ECTouchEventType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public class ECTouchMode {
        public static final int EC_TOUCH_MODE_MULTI_TOUCH = 1;
        public static final int EC_TOUCH_MODE_NOT_SUPPORT_TOUCH = 2;
        public static final int EC_TOUCH_MODE_SINGLE_TOUCH = 0;
        public int value;

        public ECTouchMode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECTransportCommConfig {
        public static final int EC_TRANSPORT_INFO_COMM_VALUE_0 = 0;
        public static final int EC_TRANSPORT_INFO_COMM_VALUE_1 = 1;
    }

    public static class ECTransportInfo {
        public static final int EC_TRANSPORT_INFO_DISABLE_APP_VR = 2;
        public static final int EC_TRANSPORT_INFO_SPEECH_ENGINE = 1;
    }

    public enum ECTransportType {
        EC_TRANSPORT_ANDROID_USB_ADB(0),
        EC_TRANSPORT_ANDORID_USB_AOA(1),
        EC_TRANSPORT_ANDROID_WIFI(2),
        EC_TRANSPORT_IOS_USB_EAP(3),
        EC_TRANSPORT_IOS_USB_MUX(4),
        EC_TRANSPORT_IOS_USB_AIRPLAY(5),
        EC_TRANSPORT_IOS_WIFI_APP(6),
        EC_TRANSPORT_IOS_WIFI_AIRPLAY(7),
        EC_TRANSPORT_IOS_USB_LIGHTNING(8),
        EC_TRANSPORT_MIRACAST(9),
        EC_TRANSPORT_DLNA(10),
        EC_TRANSPORT_BLE(11),
        EC_TRANSPORT_BTRFCOMM(12),
        EC_TRANSPORT_BLE_ENCRYPT(13),
        EC_TRANSPORT_MAX(14);

        public int value;

        ECTransportType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public enum ECTurnIndicatorStatus {
        EC_TURNINDICATOR_NONE(0),
        EC_TURNINDICATOR_LEFT(1),
        EC_TURNINDICATOR_RIGHT(2);

        public int value;

        ECTurnIndicatorStatus(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECVRTextInfo {
        public java.lang.String htmlText;
        public java.lang.String plainText;
        public int sequence;
        public int type;

        public ECVRTextInfo(int i, int i2, java.lang.String str, java.lang.String str2) {
            this.type = i;
            this.sequence = i2;
            this.plainText = str;
            this.htmlText = str2;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("type=");
            sbO.append(this.type);
            sb.append(sbO.toString());
            sb.append(",sequence=" + this.sequence);
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append(",plainText=");
            java.lang.StringBuilder sbS = e.a.c.a.a.s(sb2, this.plainText, sb, ",htmlText=");
            sbS.append(this.htmlText);
            sb.append(sbS.toString());
            return sb.toString();
        }
    }

    public static class ECVRTextType {
        public static final int EC_VR_TEXT_FROM_SPEAK = 2;
        public static final int EC_VR_TEXT_FROM_UNKNOWN = 0;
        public static final int EC_VR_TEXT_FROM_VR = 1;
    }

    public static class ECVideoInfo {
        public int direction;
        public int mirrorHeight;
        public int mirrorWidth;
        public int realHeight;
        public int realWidth;

        public ECVideoInfo() {
            this.realWidth = 0;
            this.realHeight = 0;
            this.mirrorWidth = 0;
            this.mirrorHeight = 0;
            this.direction = 0;
        }

        public ECVideoInfo(int i, int i2, int i3, int i4, int i5) {
            this.realWidth = i;
            this.realHeight = i2;
            this.mirrorWidth = i3;
            this.mirrorHeight = i4;
            this.direction = i5;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("realWidth=");
            sbO.append(this.realWidth);
            sbO.append(",realHeight=");
            sbO.append(this.realHeight);
            sbO.append(",mirrorWidth=");
            sbO.append(this.mirrorWidth);
            sbO.append(",mirrorHeight=");
            sbO.append(this.mirrorHeight);
            sbO.append(",direction=");
            sbO.append(this.direction);
            return sbO.toString();
        }
    }

    public enum ECVideoType {
        EC_VIDEO_TYPE_H264(0),
        EC_VIDEO_TYPE_MPEG4(1),
        EC_VIDEO_TYPE_JPEG(2),
        EC_VIDEO_TYPE_MAX(3);

        public int value;

        ECVideoType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static class ECVideoViewArea {
        public int height;
        public int index;
        public int originX;
        public int originY;
        public int present;
        public int sHeight;
        public int sOriginX;
        public int sOriginY;
        public int sPresent;
        public int sWidth;
        public int width;

        public ECVideoViewArea(int i, int i2, int i3, int i4, int i5, int i6) {
            this.index = i;
            this.present = i2;
            this.originX = i3;
            this.originY = i4;
            this.width = i5;
            this.height = i6;
            this.sHeight = 0;
            this.sWidth = 0;
            this.sOriginY = 0;
            this.sOriginX = 0;
            this.sPresent = 0;
        }

        public ECVideoViewArea(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            this.index = i;
            this.present = i2;
            this.originX = i3;
            this.originY = i4;
            this.width = i5;
            this.height = i6;
            this.sPresent = i7;
            this.sOriginX = i8;
            this.sOriginY = i9;
            this.sWidth = i10;
            this.sHeight = i11;
        }
    }

    public static class ECVirtualInstStateData {
        public java.lang.String msg;
        public int reason;
        public int state;

        public ECVirtualInstStateData(int i, int i2, java.lang.String str) {
            this.state = i;
            this.reason = i2;
            this.msg = str;
        }
    }
}
