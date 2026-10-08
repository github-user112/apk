.class public final La/a/b/j;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/c;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, La/a/b/j;->b:La/a/a/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x18061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, La/a/a/a/a/a/b$a;->a(ILjava/lang/Integer;I)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    const-string v3, "VehicleControlHandler"

    invoke-virtual {v1, v3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->setTokenString(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setId(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->addAreaValue(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setValueType(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;->setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;

    move-result-object v2

    invoke-virtual {v2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;->addVehicleData(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataListProto$CarlifeVehicleDataList$Builder;

    move-result-object v1

    invoke-virtual {v1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    iget-object v1, p0, La/a/b/j;->b:La/a/a/a/c;

    invoke-interface {v1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    .line 2
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
