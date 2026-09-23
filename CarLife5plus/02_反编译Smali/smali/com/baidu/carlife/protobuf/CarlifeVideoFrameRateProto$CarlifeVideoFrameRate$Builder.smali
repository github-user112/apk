.class public final Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$000()Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFrameRate()Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$200(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getFrameRate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->getFrameRate()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasFrameRate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->hasFrameRate()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setFrameRate(I)Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;->access$100(Lcom/baidu/carlife/protobuf/CarlifeVideoFrameRateProto$CarlifeVideoFrameRate;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
