.class public final Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$000()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTargetInfo()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$500(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;)V

    return-object p0
.end method

.method public clearWifiDeviceName()Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$200(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;)V

    return-object p0
.end method

.method public getTargetInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->getTargetInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetInfoBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->getTargetInfoBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->getWifiDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDeviceNameBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->getWifiDeviceNameBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public hasTargetInfo()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->hasTargetInfo()Z

    move-result v0

    return v0
.end method

.method public hasWifiDeviceName()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->hasWifiDeviceName()Z

    move-result v0

    return v0
.end method

.method public setTargetInfo(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$400(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetInfoBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$600(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;La/c/a/g;)V

    return-object p0
.end method

.method public setWifiDeviceName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$100(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWifiDeviceNameBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;->access$300(Lcom/baidu/carlife/protobuf/CarlifeWirlessTargetProto$CarlifeWirlessTarget;La/c/a/g;)V

    return-object p0
.end method
