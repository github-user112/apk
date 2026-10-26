.class public final Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public acceptHa:Ljava/lang/Boolean;

.field public apiKey:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public certFingerprint:Ljava/lang/String;

.field public extProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public haCollectorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mlSdkVersion:Ljava/lang/String;

.field public mlServiceUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlServiceUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->haCollectorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlServiceUrls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->haCollectorUrls:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$000(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->appId:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$100(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$200(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$300(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->certFingerprint:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$400(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->region:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$500(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlSdkVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$600(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->acceptHa:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$700(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlServiceUrls:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$800(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->haCollectorUrls:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;->access$900(Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;
    .locals 13

    new-instance v12, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->apiKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->certFingerprint:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlSdkVersion:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->acceptHa:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->region:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlServiceUrls:Ljava/util/List;

    iget-object v9, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->haCollectorUrls:Ljava/util/List;

    iget-object v10, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$1;)V

    return-object v12
.end method

.method public setAcceptHa(Ljava/lang/Boolean;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->acceptHa:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setCertFingerprint(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->certFingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public setExtProperties(Ljava/lang/String;Ljava/lang/Object;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->extProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setHaCollectorUrls(Ljava/util/List;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->haCollectorUrls:Ljava/util/List;

    return-object p0
.end method

.method public setMLSdkVersion(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setMLServiceUrls(Ljava/util/List;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->mlServiceUrls:Ljava/util/List;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLApplicationSetting$Factory;->region:Ljava/lang/String;

    return-object p0
.end method
