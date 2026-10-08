.class public final Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$000()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRsaPublicKey()Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$200(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;)V

    return-object p0
.end method

.method public getRsaPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->getRsaPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRsaPublicKeyBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->getRsaPublicKeyBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public hasRsaPublicKey()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->hasRsaPublicKey()Z

    move-result v0

    return v0
.end method

.method public setRsaPublicKey(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$100(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRsaPublicKeyBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;->access$300(Lcom/baidu/carlife/protobuf/CarlifeHuRsaPublicKeyResponseProto$CarlifeHuRsaPublicKeyResponse;La/c/a/g;)V

    return-object p0
.end method
