.class public final Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeedOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSpeed()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$400(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getSpeed()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->getSpeed()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->getTimeStamp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public hasSpeed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->hasSpeed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->hasTimeStamp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setSpeed(I)Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;->access$300(Lcom/baidu/carlife/protobuf/CarlifeCarSpeedProto$CarlifeCarSpeed;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
