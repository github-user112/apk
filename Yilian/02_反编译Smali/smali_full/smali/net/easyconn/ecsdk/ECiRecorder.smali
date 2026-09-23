.class public Lnet/easyconn/ecsdk/ECiRecorder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ourInstance:Lnet/easyconn/ecsdk/ECiRecorder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/easyconn/ecsdk/ECiRecorder;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECiRecorder;-><init>()V

    sput-object v0, Lnet/easyconn/ecsdk/ECiRecorder;->ourInstance:Lnet/easyconn/ecsdk/ECiRecorder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/easyconn/ecsdk/ECiRecorder;
    .locals 1

    sget-object v0, Lnet/easyconn/ecsdk/ECiRecorder;->ourInstance:Lnet/easyconn/ecsdk/ECiRecorder;

    return-object v0
.end method


# virtual methods
.method public native initialize(Lnet/easyconn/ecsdk/IECiRecorderCallback;)I
.end method

.method public native pauseMirror()I
.end method

.method public native release()V
.end method

.method public native resumeMirror()I
.end method

.method public native startAudio()I
.end method

.method public native startMirror(I)I
.end method

.method public native stopAudio()V
.end method

.method public native stopMirror()I
.end method
