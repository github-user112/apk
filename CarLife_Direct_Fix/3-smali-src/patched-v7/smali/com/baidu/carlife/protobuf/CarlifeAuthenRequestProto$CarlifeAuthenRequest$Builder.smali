.class public final Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$000()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRandomValue()Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$200(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;)V

    return-object p0
.end method

.method public getRandomValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->getRandomValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomValueBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->getRandomValueBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public hasRandomValue()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->hasRandomValue()Z

    move-result v0

    return v0
.end method

.method public setRandomValue(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$100(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRandomValueBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;->access$300(Lcom/baidu/carlife/protobuf/CarlifeAuthenRequestProto$CarlifeAuthenRequest;La/c/a/g;)V

    return-object p0
.end method
