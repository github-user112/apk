.class public Lnet/easyconn/ecsdk/ECTypes$ECNetInterfaceInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECNetInterfaceInfo"
.end annotation


# instance fields
.field public ifa_address:Ljava/lang/String;

.field public ifa_name:Ljava/lang/String;

.field public ifa_netmask:Ljava/lang/String;

.field public supportsMulticast:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECNetInterfaceInfo;->ifa_name:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECNetInterfaceInfo;->ifa_address:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECNetInterfaceInfo;->ifa_netmask:Ljava/lang/String;

    iput-boolean p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECNetInterfaceInfo;->supportsMulticast:Z

    return-void
.end method
