.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAreaValue(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAllFloatValues(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAllInt32Values(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAllInt64Values(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAreaValue(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addFloatValues(F)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addInt32Values(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addInt64Values(J)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAreaId()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAreaValue()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearBytesValue()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearFloatValues()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2600(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearId()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearInt32Values()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearInt64Values()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearStringValue()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2800(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearSupport()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearValueType()Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAreaId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAreaValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaValue(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getAreaValueCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaValueCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAreaValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getAreaValueList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getBytesValue()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getBytesValue()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFloatValues(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValues(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getFloatValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFloatValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getFloatValuesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getInt32Values(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt32Values(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getInt32ValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt32ValuesCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getInt32ValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt32ValuesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getInt64Values(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt64Values(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getInt64ValuesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt64ValuesCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getInt64ValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getInt64ValuesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getStringValueBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getValueType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->getValueType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAreaId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasAreaId()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasBytesValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasBytesValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasId()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasStringValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasValueType()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->hasValueType()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAreaId(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAreaValue(II)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setBytesValue(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setFloatValues(IF)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IF)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setId(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setInt32Values(II)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1500(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;II)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setInt64Values(IJ)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;IJ)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2700(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setStringValueBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$2900(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;Z)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setValueType(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleDataProto$CarlifeVehicleData;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
