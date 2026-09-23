.class public final Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearNextTurn()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearRemainDistance()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearRoadName()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$600(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTotalDistance()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$900(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTurnIconData()Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getNextTurn()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getNextTurn()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRemainDistance()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getRoadNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getRoadNameBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTotalDistance()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTotalDistance()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTurnIconData()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->getTurnIconData()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasAction()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasNextTurn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasNextTurn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasRemainDistance()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRemainDistance()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasRoadName()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasRoadName()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasTotalDistance()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTotalDistance()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasTurnIconData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->hasTurnIconData()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAction(I)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setNextTurn(I)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setRemainDistance(I)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setRoadName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$500(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setRoadNameBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$700(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTotalDistance(I)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$800(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTurnIconData(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeNaviNextTurnInfoProto$CarlifeNaviNextTurnInfo;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
