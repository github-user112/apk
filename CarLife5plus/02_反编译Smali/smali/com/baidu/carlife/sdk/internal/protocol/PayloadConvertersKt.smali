.class public final Lcom/baidu/carlife/sdk/internal/protocol/PayloadConvertersKt;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\u00070\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u0008*\u0008\u0012\u0004\u0012\u00020\t0\u0002\u001a\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b*\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "builder",
        "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;",
        "",
        "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
        "proto",
        "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;",
        "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;",
        "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
        "toMap",
        "",
        "",
        "",
        "carlife-sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final builder(Ljava/util/List;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->getFeatureConfigCount()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static final proto(Ljava/util/List;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    .line 3
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->getFeatureConfigCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p0

    const-string v0, "builder.build()"

    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    return-object p0
.end method

.method public static final proto(Ljava/util/List;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    .line 8
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->addSubscribemobileCarLifeInfo(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->getSubscribemobileCarLifeInfoCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p0

    const-string v0, "builder.build()"

    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    return-object p0
.end method

.method public static final proto(Ljava/util/List;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    .line 13
    invoke-virtual {v0, v1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->addVehicleInfo(Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->getVehicleInfoCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList$Builder;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object p0

    const-string v0, "builder.build()"

    invoke-static {p0, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoListProto$CarlifeVehicleInfoList;

    return-object p0
.end method

.method public static final toMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "it.key"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method
