.class public final Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAccelerationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccX()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAccY()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$400(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAccZ()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$600(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTimeStamp()Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$800(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAccX()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccX()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getAccY()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccY()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getAccZ()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getAccZ()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->getTimeStamp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public hasAccX()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccX()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAccY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccY()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAccZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasAccZ()Z

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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->hasTimeStamp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAccX(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAccY(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$300(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAccZ(D)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$500(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;D)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;->access$700(Lcom/baidu/carlife/protobuf/CarlifeAccelerationProto$CarlifeAcceleration;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
