.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrequency()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method

.method public clearModuleID()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method

.method public clearSupportFlag()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method

.method public getFrequency()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getFrequency()I

    move-result v0

    return v0
.end method

.method public getModuleID()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getModuleID()I

    move-result v0

    return v0
.end method

.method public getSupportFlag()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getSupportFlag()I

    move-result v0

    return v0
.end method

.method public hasFrequency()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasFrequency()Z

    move-result v0

    return v0
.end method

.method public hasModuleID()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasModuleID()Z

    move-result v0

    return v0
.end method

.method public hasSupportFlag()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasSupportFlag()Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    return-object p0
.end method

.method public setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    return-object p0
.end method

.method public setSupportFlag(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    return-object p0
.end method
