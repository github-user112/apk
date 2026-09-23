.class public final Ll7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;)Ll7/g;
    .locals 3

    .line 1
    new-instance v0, Ll7/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleRate()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getChannelConfig()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeTTSInitProto$CarlifeTTSInit;->getSampleFormat()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {v0, v1, v2, p1}, Ll7/c;-><init>(III)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ll7/g;

    .line 19
    .line 20
    const/high16 v1, 0x10000

    .line 21
    .line 22
    invoke-direct {p1, p0, v0, v1}, Ll7/g;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Ll7/c;I)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method
