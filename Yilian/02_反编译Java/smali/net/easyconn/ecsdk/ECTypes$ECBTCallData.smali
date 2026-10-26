.class public Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECBTCallData"
.end annotation


# instance fields
.field public callDateTime:Ljava/lang/String;

.field public callDuration:I

.field public callType:I

.field public location:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->number:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->number:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->location:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->callDateTime:Ljava/lang/String;

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->callDuration:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECBTCallData;->callType:I

    return-void
.end method
