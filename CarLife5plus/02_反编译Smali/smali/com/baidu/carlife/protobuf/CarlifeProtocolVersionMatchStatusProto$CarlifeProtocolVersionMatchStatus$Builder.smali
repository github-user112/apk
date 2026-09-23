.class public final Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatusOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$000()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCarlifeProtocolVersion()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$400(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearMatchStatus()Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$200(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getCarlifeProtocolVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getCarlifeProtocolVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMatchStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->getMatchStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasCarlifeProtocolVersion()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->hasCarlifeProtocolVersion()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasMatchStatus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->hasMatchStatus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setCarlifeProtocolVersion(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$300(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setMatchStatus(I)Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;->access$100(Lcom/baidu/carlife/protobuf/CarlifeProtocolVersionMatchStatusProto$CarlifeProtocolVersionMatchStatus;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
