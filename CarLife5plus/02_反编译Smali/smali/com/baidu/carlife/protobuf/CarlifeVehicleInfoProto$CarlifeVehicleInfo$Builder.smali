.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

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
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrequency()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearModuleID()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearSupportFlag()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getFrequency()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getFrequency()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getModuleID()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getModuleID()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSupportFlag()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->getSupportFlag()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasFrequency()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasFrequency()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasModuleID()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasModuleID()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasSupportFlag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->hasSupportFlag()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setFrequency(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setModuleID(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setSupportFlag(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
