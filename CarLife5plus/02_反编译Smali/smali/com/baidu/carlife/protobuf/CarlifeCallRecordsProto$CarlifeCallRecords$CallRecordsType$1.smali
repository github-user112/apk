.class Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/i0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/h0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;->findValueByNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p1

    return-object p1
.end method
