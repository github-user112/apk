.class public final La/a/a/a/m/k/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# instance fields
.field public final b:La/a/a/a/a/a/f/a;

.field public final c:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/f/a;Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/k/a/e;->b:La/a/a/a/a/a/f/a;

    iput-object p2, p0, La/a/a/a/m/k/a/e;->c:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public synthetic F0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->c(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic Q(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->e(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-string v3, "args"

    const-string v4, "tag"

    const-string v5, "CarLife_SDK"

    const/4 v6, 0x0

    const-string v7, "<this>"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const p2, 0x1806f

    .line 1
    invoke-interface {p1, v10, p2}, La/a/a/a/c;->z0(II)V

    iget-object p2, p0, La/a/a/a/m/k/a/e;->b:La/a/a/a/a/a/f/a;

    if-eqz p2, :cond_f

    iget-object p2, p0, La/a/a/a/m/k/a/e;->c:Ljava/security/PublicKey;

    if-eqz p2, :cond_f

    invoke-interface {p1, v10}, La/a/a/a/c;->u(Z)V

    goto/16 :goto_7

    .line 2
    :sswitch_1
    iget-object v0, p0, La/a/a/a/m/k/a/e;->b:La/a/a/a/a/a/f/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/m/k/a/e;->c:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    if-eqz v0, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    :cond_1
    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    :try_start_0
    iget-object p2, p0, La/a/a/a/m/k/a/e;->b:La/a/a/a/a/a/f/a;

    invoke-virtual {v6}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKey()Ljava/lang/String;

    move-result-object v0

    const-string v6, "it.aesKey"

    invoke-static {v0, v6}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, La/a/a/a/a/a/f/a;->a(Ljava/lang/String;)V

    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x1806d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-interface {p1, p2}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "handleAESKeyRequest exception: "

    aput-object v0, p2, v9

    aput-object p1, p2, v10

    .line 3
    invoke-static {v5, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_3

    goto/16 :goto_7

    .line 5
    :cond_3
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v2, v5, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    :goto_0
    new-array p1, v10, [Ljava/lang/Object;

    const-string p2, "can not handle aes key when CONTENT_ENCRYPTION not enabled"

    aput-object p2, p1, v9

    invoke-static {v5, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_5

    goto/16 :goto_7

    .line 7
    :cond_5
    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, v5, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 8
    :sswitch_2
    iget-object p2, p0, La/a/a/a/m/k/a/e;->b:La/a/a/a/a/a/f/a;

    if-eqz p2, :cond_7

    iget-object p2, p0, La/a/a/a/m/k/a/e;->c:Ljava/security/PublicKey;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v1, 0x1806b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v10, v1, v9, v8}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;->setRsaPublicKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;

    move-result-object p2

    invoke-virtual {p2}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p2

    invoke-virtual {v0, p2}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, v0}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    goto/16 :goto_7

    :cond_7
    :goto_1
    new-array p1, v10, [Ljava/lang/Object;

    const-string p2, "can not request public key when CONTENT_ENCRYPTION not enabled"

    aput-object p2, p1, v9

    .line 9
    invoke-static {v5, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_8

    goto/16 :goto_7

    .line 11
    :cond_8
    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, v5, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 12
    :sswitch_3
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    if-eqz v0, :cond_9

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;

    goto :goto_2

    :cond_9
    move-object p2, v6

    :goto_2
    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->getFeatureConfigList()Ljava/util/List;

    move-result-object v6

    :goto_3
    if-nez v6, :cond_b

    sget-object v6, Lc/h/b;->b:Lc/h/b;

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feature.key"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;->getValue()I

    move-result v0

    invoke-interface {p1, v1, v0, v9}, La/a/a/a/c;->x0(Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_c
    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x18052

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-interface {p1}, La/a/a/a/c;->h0()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->addFeatureConfig(Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigProto$CarlifeFeatureConfig;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->getFeatureConfigCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    const-string v0, "builder"

    invoke-static {v1, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const-string v2, "CONFIG_HU_BT_NAME"

    .line 14
    invoke-interface {p1, v2, v0}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v1

    const-string v2, "CONFIG_HU_BT_MAC"

    invoke-interface {p1, v2, v0}, La/a/a/a/c;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;->setHuBtMAC(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeFeatureConfigListProto$CarlifeFeatureConfigList$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {p2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, p2}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    goto :goto_7

    :sswitch_4
    const p2, 0x18044

    .line 15
    invoke-interface {p1, v10, p2}, La/a/a/a/c;->z0(II)V

    goto :goto_7

    .line 16
    :sswitch_5
    sget-object p2, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v0, 0x18043

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v10, v0, v9, v8}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object p2

    invoke-interface {p1}, La/a/a/a/c;->g()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {v0, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;

    invoke-virtual {v1, v2}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->addSubscribemobileCarLifeInfo(Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoProto$CarlifeSubscribeMobileCarLifeInfo;)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->getSubscribemobileCarLifeInfoCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;->setCnt(I)Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList$Builder;

    invoke-virtual {v1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeSubscribeMobileCarLifeInfoListProto$CarlifeSubscribeMobileCarLifeInfoList;

    .line 18
    invoke-virtual {p2, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-interface {p1, p2}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    .line 19
    :cond_f
    :goto_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10043 -> :sswitch_5
        0x10044 -> :sswitch_4
        0x10051 -> :sswitch_3
        0x1006a -> :sswitch_2
        0x1006c -> :sswitch_1
        0x1006e -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method
