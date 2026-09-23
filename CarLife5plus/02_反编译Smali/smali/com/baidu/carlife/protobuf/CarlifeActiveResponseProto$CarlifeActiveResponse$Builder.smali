.class public final Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStatue()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearToken()Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$500(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getStatue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getStatue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStatueBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getStatueBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->getTokenBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasStatue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->hasStatue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->hasToken()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setStatue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setStatueBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$400(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;->access$600(Lcom/baidu/carlife/protobuf/CarlifeActiveResponseProto$CarlifeActiveResponse;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
