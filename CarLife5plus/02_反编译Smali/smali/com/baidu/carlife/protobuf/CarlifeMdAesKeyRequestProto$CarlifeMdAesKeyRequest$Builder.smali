.class public final Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAesKey()Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAesKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAesKeyBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->getAesKeyBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasAesKey()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->hasAesKey()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAesKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAesKeyBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeMdAesKeyRequestProto$CarlifeMdAesKeyRequest;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
