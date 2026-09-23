.class public Lf/a/i/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;

.field public b:Lnet/easyconn/ecsdk/ECTypes$ECAuthentication;

.field public c:Lnet/easyconn/ecsdk/ECTypes$ECOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_H264:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    return-void
.end method


# virtual methods
.method public a(Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/a;->a:Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;

    return-void
.end method

.method public b(Lnet/easyconn/ecsdk/ECTypes$ECOptions;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/a;->c:Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    return-void
.end method
