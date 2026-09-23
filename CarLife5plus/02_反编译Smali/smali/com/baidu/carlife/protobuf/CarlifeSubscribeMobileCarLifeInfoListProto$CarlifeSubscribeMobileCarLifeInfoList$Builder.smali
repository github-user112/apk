.class public final Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSubscribemobileCarLifeInfo(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;"
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addSubscribemobileCarLifeInfo(ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)V

    return-object p0
.end method

.method public addSubscribemobileCarLifeInfo(ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)V

    return-object p0
.end method

.method public addSubscribemobileCarLifeInfo(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)V

    return-object p0
.end method

.method public addSubscribemobileCarLifeInfo(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearSubscribemobileCarLifeInfo()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;)V

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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->getCnt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSubscribemobileCarLifeInfo(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->getSubscribemobileCarLifeInfo(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getSubscribemobileCarLifeInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->getSubscribemobileCarLifeInfoCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSubscribemobileCarLifeInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->getSubscribemobileCarLifeInfoList()Ljava/util/List;

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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->hasCnt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeSubscribemobileCarLifeInfo(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setSubscribemobileCarLifeInfo(ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo$Builder;)V

    return-object p0
.end method

.method public setSubscribemobileCarLifeInfo(ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;ILcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)V

    return-object p0
.end method
