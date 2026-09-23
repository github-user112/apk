.class public final Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$000()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFeatureConfig(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;"
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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$900(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addFeatureConfig(ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$800(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)V

    return-object p0
.end method

.method public addFeatureConfig(ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$600(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)V

    return-object p0
.end method

.method public addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$700(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)V

    return-object p0
.end method

.method public addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$500(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)V

    return-object p0
.end method

.method public clearCnt()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$200(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearFeatureConfig()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearHuBtAudioSupport()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearHuBtMAC()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1800(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearHuBtName()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1500(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;)V

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
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getCnt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFeatureConfig(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfig(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getFeatureConfigCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfigCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFeatureConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfigList()Ljava/util/List;

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

.method public getHuBtAudioSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getHuBtAudioSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getHuBtMAC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getHuBtMAC()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHuBtMACBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getHuBtMACBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHuBtName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getHuBtName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHuBtNameBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getHuBtNameBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasCnt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->hasCnt()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasHuBtAudioSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->hasHuBtAudioSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasHuBtMAC()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->hasHuBtMAC()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasHuBtName()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->hasHuBtName()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeFeatureConfig(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$100(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setFeatureConfig(ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$400(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig$Builder;)V

    return-object p0
.end method

.method public setFeatureConfig(ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$300(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;ILcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)V

    return-object p0
.end method

.method public setHuBtAudioSupport(Z)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Z)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setHuBtMAC(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1700(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setHuBtMACBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1900(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setHuBtName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setHuBtNameBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->access$1600(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
