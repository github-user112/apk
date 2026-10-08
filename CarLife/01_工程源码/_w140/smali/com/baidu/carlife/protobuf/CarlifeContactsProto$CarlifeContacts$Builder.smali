.class public final Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContactsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContactsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$000()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCid()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$200(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public clearName()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$400(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public clearNumber()Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$700(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;)V

    return-object p0
.end method

.method public getCid()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getCid()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNameBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->getNumberBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public hasCid()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasCid()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public setCid(I)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$100(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$300(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$500(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;La/c/a/g;)V

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$600(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNumberBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;->access$800(Lcom/baidu/carlife/protobuf/CarlifeContactsProto$CarlifeContacts;La/c/a/g;)V

    return-object p0
.end method
