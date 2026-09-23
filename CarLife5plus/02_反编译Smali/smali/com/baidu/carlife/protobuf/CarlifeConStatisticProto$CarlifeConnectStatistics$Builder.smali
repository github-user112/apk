.class public final Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatisticsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$000()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNerrorType(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;"
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addNerrorType(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearConfailed()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$600(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearConsuccess()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearContime()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$800(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearContotal()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$200(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearNerrorType()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearNerrorcount()Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getConfailed()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getConfailed()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getConsuccess()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getConsuccess()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getContime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getContime()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getContotal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getContotal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getNerrorType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorType(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getNerrorTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getNerrorTypeList()Ljava/util/List;
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorTypeList()Ljava/util/List;

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

.method public getNerrorcount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->getNerrorcount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasConfailed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConfailed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasConsuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasConsuccess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasContime()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContime()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasContotal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasContotal()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasNerrorcount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->hasNerrorcount()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setConfailed(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$500(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setConsuccess(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$300(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setContime(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$700(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setContotal(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setNerrorType(II)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;II)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setNerrorcount(I)Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;->access$900(Lcom/baidu/carlife/protobuf/CarlifeConStatisticProto$CarlifeConnectStatistics;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
