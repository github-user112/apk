.class public final Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllVehicleInfo(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;"
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addVehicleInfo(ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)V

    return-object p0
.end method

.method public addVehicleInfo(ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method

.method public addVehicleInfo(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)V

    return-object p0
.end method

.method public addVehicleInfo(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearVehicleInfo()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getCnt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->getCnt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getVehicleInfo(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->getVehicleInfo(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getVehicleInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->getVehicleInfoCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getVehicleInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->getVehicleInfoList()Ljava/util/List;

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

.method public hasCnt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->hasCnt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeVehicleInfo(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setVehicleInfo(ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo$Builder;)V

    return-object p0
.end method

.method public setVehicleInfo(ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;ILcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)V

    return-object p0
.end method
