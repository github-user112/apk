.class public final Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCarlifeCallRecords(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;"
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public addCarlifeCallRecords(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public clearCarlifeCallRecords()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getCarlifeCallRecordsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecordsCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getCarlifeCallRecordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCarlifeCallRecordsList()Ljava/util/List;

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

.method public getCnt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->getCnt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasCnt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->hasCnt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeCarlifeCallRecords(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$Builder;)V

    return-object p0
.end method

.method public setCarlifeCallRecords(ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;ILcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;)V

    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeCallRecordsListProto$CarlifeCallRecordsList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
