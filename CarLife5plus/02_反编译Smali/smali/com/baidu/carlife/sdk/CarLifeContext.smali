.class public interface abstract Lcom/baidu/carlife/sdk/CarLifeContext;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;
.implements Lcom/baidu/carlife/sdk/WirlessStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/CarLifeContext$Companion;,
        Lcom/baidu/carlife/sdk/CarLifeContext$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008g\u0018\u0000 \u0099\u00012\u00020\u00012\u00020\u0002:\u0002\u0099\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H&\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\n\u001a\u00020\u00032\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010#\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008#\u0010\"J\u001f\u0010!\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008!\u0010&J\u001f\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010&J\u001f\u0010)\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\'H&\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010+\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008+\u0010,J%\u0010.\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010-2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008.\u0010/J\u001f\u0010.\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010-2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008.\u00100J\u0017\u00101\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u00083\u00102J\u001d\u00106\u001a\u00020\u00032\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000304H&\u00a2\u0006\u0004\u00086\u00107J\u0017\u00106\u001a\u00020\u00032\u0006\u00105\u001a\u000208H\u0016\u00a2\u0006\u0004\u00086\u00109J%\u0010<\u001a\u00020\u00032\u0006\u0010;\u001a\u00020:2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000304H&\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010<\u001a\u00020\u00032\u0006\u00105\u001a\u0002082\u0006\u0010;\u001a\u00020:H\u0016\u00a2\u0006\u0004\u0008<\u0010>J\u000f\u0010@\u001a\u00020?H&\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010C\u001a\u00020BH&\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020BH&\u00a2\u0006\u0004\u0008E\u0010DJ\u0017\u0010F\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0001H&\u00a2\u0006\u0004\u0008F\u0010GJ\u0017\u0010H\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0001H&\u00a2\u0006\u0004\u0008H\u0010GJ\u0017\u0010J\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020IH&\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010L\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020IH&\u00a2\u0006\u0004\u0008L\u0010KJ\u0017\u0010M\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010O\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008O\u0010NJ\u0017\u0010Q\u001a\u00020\u00032\u0006\u0010P\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010T\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020SH&\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010V\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020SH&\u00a2\u0006\u0004\u0008V\u0010UJ\u0017\u0010Y\u001a\u00020\u00032\u0006\u0010X\u001a\u00020WH&\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008[\u0010\\J\u000f\u0010]\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008]\u0010\\J\u000f\u0010^\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008^\u0010_J\u000f\u0010`\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008`\u0010\u0005J\u000f\u0010a\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008a\u0010\u0005J\u000f\u0010b\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008b\u0010\u0005J\u000f\u0010c\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008c\u0010\u0005J\u000f\u0010d\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008d\u0010\u0005R\u0014\u0010h\u001a\u00020e8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010gR\u0014\u0010k\u001a\u00020\u00078&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010jR\u0014\u0010m\u001a\u00020\u00078&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010jR\u0014\u0010o\u001a\u00020\u00088&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010_R\u001c\u0010r\u001a\u00020\u00088&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008p\u0010_\"\u0004\u0008q\u0010RR\u001c\u0010u\u001a\u00020\u00088&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008s\u0010_\"\u0004\u0008t\u0010RR\u001c\u0010v\u001a\u00020\u00108&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008v\u0010\\\"\u0004\u0008w\u0010xR\u0014\u0010|\u001a\u00020y8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R\u0014\u0010~\u001a\u00020y8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008}\u0010{R#\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u007f8&@&X\u00a6\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R$\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0085\u00018&@&X\u00a6\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0016\u0010\u008c\u0001\u001a\u00020\u00088&X\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008b\u0001\u0010_R\u001f\u0010\u008f\u0001\u001a\u00020\u00088&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008d\u0001\u0010_\"\u0005\u0008\u008e\u0001\u0010RR\u001f\u0010\u0092\u0001\u001a\u00020\u00108&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0090\u0001\u0010\\\"\u0005\u0008\u0091\u0001\u0010xR\u0018\u0010\u0096\u0001\u001a\u00030\u0093\u00018&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001f\u0010\u0097\u0001\u001a\u00020\u00108&@&X\u00a6\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0097\u0001\u0010\\\"\u0005\u0008\u0098\u0001\u0010x\u00a8\u0006\u009a\u0001\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/CarLifeContext;",
        "Lcom/baidu/carlife/sdk/internal/transport/TransportListener;",
        "Lcom/baidu/carlife/sdk/WirlessStatusListener;",
        "Lr8/z;",
        "terminate",
        "()V",
        "",
        "",
        "",
        "features",
        "setFeatures",
        "(Ljava/util/Map;)V",
        "key",
        "feature",
        "setFeature",
        "(Ljava/lang/String;I)V",
        "",
        "isLocal",
        "(Ljava/lang/String;IZ)V",
        "defaultConfig",
        "getFeature",
        "(Ljava/lang/String;I)I",
        "",
        "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
        "listFeatures",
        "()Ljava/util/List;",
        "Lcom/baidu/carlife/sdk/FeatureConfigChangeListener;",
        "listener",
        "addFeatureConfigChangeListener",
        "(Lcom/baidu/carlife/sdk/FeatureConfigChangeListener;)V",
        "removeFeatureConfigChangeListener",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "postMessage",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "sendMessage",
        "channel",
        "serviceType",
        "(II)V",
        "",
        "config",
        "setConfig",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "removeConfig",
        "(Ljava/lang/String;)V",
        "T",
        "getConfig",
        "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "encrypt",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "decrypt",
        "Lkotlin/Function0;",
        "runnable",
        "post",
        "(Lf9/a;)V",
        "Ljava/lang/Runnable;",
        "(Ljava/lang/Runnable;)V",
        "",
        "delayed",
        "postDelayed",
        "(JLf9/a;)V",
        "(Ljava/lang/Runnable;J)V",
        "Landroid/os/Handler;",
        "main",
        "()Landroid/os/Handler;",
        "Ljava/util/concurrent/ExecutorService;",
        "io",
        "()Ljava/util/concurrent/ExecutorService;",
        "compute",
        "registerTransportListener",
        "(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V",
        "unregisterTransportListener",
        "Lcom/baidu/carlife/sdk/ConnectionChangeListener;",
        "registerConnectionChangeListener",
        "(Lcom/baidu/carlife/sdk/ConnectionChangeListener;)V",
        "unregisterConnectionChangeListener",
        "registerWirlessStatusListeners",
        "(Lcom/baidu/carlife/sdk/WirlessStatusListener;)V",
        "unregisterWirlessStatusListeners",
        "configuration",
        "notifyConfigurationChange",
        "(I)V",
        "Lcom/baidu/carlife/sdk/ConfigurationChangeListener;",
        "registerConfigurationListener",
        "(Lcom/baidu/carlife/sdk/ConfigurationChangeListener;)V",
        "unregisterConfigurationListener",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "isConnected",
        "()Z",
        "isAttached",
        "getConnectType",
        "()I",
        "onConnectionAttached",
        "onConnectionDetached",
        "onConnectionEstablished",
        "onConnectionVersionNotSupprt",
        "onConnectionAuthenFailed",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "applicationContext",
        "getOsType",
        "()Ljava/lang/String;",
        "osType",
        "getVersionName",
        "versionName",
        "getVersionCode",
        "versionCode",
        "getProtocolVersion",
        "setProtocolVersion",
        "protocolVersion",
        "getCarlifeVersion",
        "setCarlifeVersion",
        "carlifeVersion",
        "isVersionSupport",
        "setVersionSupport",
        "(Z)V",
        "Ljava/io/File;",
        "getDataDir",
        "()Ljava/io/File;",
        "dataDir",
        "getCacheDir",
        "cacheDir",
        "Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;",
        "getDeviceInfo",
        "()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;",
        "setDeviceInfo",
        "(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V",
        "deviceInfo",
        "Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;",
        "getStatisticsInfo",
        "()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;",
        "setStatisticsInfo",
        "(Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;)V",
        "statisticsInfo",
        "getConnectionState",
        "connectionState",
        "getConnectionType",
        "setConnectionType",
        "connectionType",
        "getAuthResult",
        "setAuthResult",
        "authResult",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "isEncryptionEnabled",
        "setEncryptionEnabled",
        "Companion",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONNECTION_ATTACHED:I = 0x1

.field public static final CONNECTION_DETACHED:I = 0x0

.field public static final CONNECTION_ESTABLISHED:I = 0x3

.field public static final CONNECTION_REATTACH:I = 0x2

.field public static final CONNECTION_TYPE_AOA:I = 0x2

.field public static final CONNECTION_TYPE_HOTSPOT:I = 0x5

.field public static final CONNECTION_TYPE_WIFIDIRECT:I = 0x9

.field public static final Companion:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/CarLifeContext$Companion;->$$INSTANCE:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/baidu/carlife/sdk/CarLifeContext;->Companion:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract addFeatureConfigChangeListener(Lcom/baidu/carlife/sdk/FeatureConfigChangeListener;)V
.end method

.method public abstract compute()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract decrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
.end method

.method public abstract encrypt(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getAuthResult()Z
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getCarlifeVersion()I
.end method

.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getConnectType()I
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract getConnectionType()I
.end method

.method public abstract getDataDir()Ljava/io/File;
.end method

.method public abstract getDeviceInfo()Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;
.end method

.method public abstract getFeature(Ljava/lang/String;I)I
.end method

.method public abstract getOsType()Ljava/lang/String;
.end method

.method public abstract getProtocolVersion()I
.end method

.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getStatisticsInfo()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract io()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract isAttached()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isEncryptionEnabled()Z
.end method

.method public abstract isVersionSupport()Z
.end method

.method public abstract listFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract main()Landroid/os/Handler;
.end method

.method public abstract notifyConfigurationChange(I)V
.end method

.method public abstract onConnectionAttached()V
.end method

.method public abstract onConnectionAuthenFailed()V
.end method

.method public abstract onConnectionDetached()V
.end method

.method public abstract onConnectionEstablished()V
.end method

.method public abstract onConnectionVersionNotSupprt()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract post(Lf9/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(JLf9/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lf9/a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract postMessage(II)V
.end method

.method public abstract postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
.end method

.method public abstract registerConfigurationListener(Lcom/baidu/carlife/sdk/ConfigurationChangeListener;)V
.end method

.method public abstract registerConnectionChangeListener(Lcom/baidu/carlife/sdk/ConnectionChangeListener;)V
.end method

.method public abstract registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V
.end method

.method public abstract registerWirlessStatusListeners(Lcom/baidu/carlife/sdk/WirlessStatusListener;)V
.end method

.method public abstract removeConfig(Ljava/lang/String;)V
.end method

.method public abstract removeFeatureConfigChangeListener(Lcom/baidu/carlife/sdk/FeatureConfigChangeListener;)V
.end method

.method public abstract sendMessage(II)V
.end method

.method public abstract sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
.end method

.method public abstract setAuthResult(Z)V
.end method

.method public abstract setCarlifeVersion(I)V
.end method

.method public abstract setConfig(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setConnectionType(I)V
.end method

.method public abstract setDeviceInfo(Lcom/baidu/carlife/protobuf/CarlifeDeviceInfoProto$CarlifeDeviceInfo;)V
.end method

.method public abstract setEncryptionEnabled(Z)V
.end method

.method public abstract setFeature(Ljava/lang/String;I)V
.end method

.method public abstract setFeature(Ljava/lang/String;IZ)V
.end method

.method public abstract setFeatures(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setProtocolVersion(I)V
.end method

.method public abstract setStatisticsInfo(Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;)V
.end method

.method public abstract setVersionSupport(Z)V
.end method

.method public abstract terminate()V
.end method

.method public abstract unregisterConfigurationListener(Lcom/baidu/carlife/sdk/ConfigurationChangeListener;)V
.end method

.method public abstract unregisterConnectionChangeListener(Lcom/baidu/carlife/sdk/ConnectionChangeListener;)V
.end method

.method public abstract unregisterTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V
.end method

.method public abstract unregisterWirlessStatusListeners(Lcom/baidu/carlife/sdk/WirlessStatusListener;)V
.end method
