.class public final Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommand()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearDtmfCode()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$700(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearPhoneNum()Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$400(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getCommand()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getCommand()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDtmfCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getDtmfCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNum()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPhoneNumBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->getPhoneNumBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasCommand()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasCommand()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasDtmfCode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasDtmfCode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasPhoneNum()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->hasPhoneNum()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setCommand(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setDtmfCode(I)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$600(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setPhoneNum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setPhoneNumBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;->access$500(Lcom/baidu/carlife/protobuf/CarlifeBTHfpRequestProto$CarlifeBTHfpRequest;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
