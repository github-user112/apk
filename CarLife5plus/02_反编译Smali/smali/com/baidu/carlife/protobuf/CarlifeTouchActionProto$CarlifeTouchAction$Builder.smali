.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearPointerx()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearPointery()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearX()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearY()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPointerx()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->getPointerx()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPointery()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->getPointery()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->getX()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->getY()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasAction()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasPointerx()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointerx()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasPointery()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasPointery()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasX()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasX()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->hasY()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setAction(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setPointerx(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setPointery(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setX(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setY(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
