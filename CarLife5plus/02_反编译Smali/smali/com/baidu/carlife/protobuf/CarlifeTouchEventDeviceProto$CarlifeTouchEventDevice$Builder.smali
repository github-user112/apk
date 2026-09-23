.class public final Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDeviceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$000()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDownEvent(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAllMoveEvent(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addAllUpEvent(Ljava/lang/Iterable;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;)",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addDownEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addMoveEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public addUpEvent(Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public clearAbsXMax()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAbsXMin()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAbsYMax()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAbsYMin()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearCid()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$200(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearDevice()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearDownEvent()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearEventx()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$400(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearMoveEvent()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearScreenHeight()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearScreenWidth()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearUpEvent()Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getAbsXMax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getAbsXMax()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAbsXMin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getAbsXMin()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAbsYMax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getAbsYMax()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAbsYMin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getAbsYMin()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getCid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getCid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDevice()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDeviceBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDeviceBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getDownEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEventCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDownEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getDownEventList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getEventx()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getEventx()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMoveEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEventCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMoveEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getMoveEventList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getScreenHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getScreenWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getUpEventCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEventCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getUpEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->getUpEventList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public hasAbsXMax()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMax()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAbsXMin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsXMin()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAbsYMax()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMax()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasAbsYMin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasAbsYMin()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasCid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasCid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasDevice()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasEventx()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasEventx()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasScreenHeight()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenHeight()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasScreenWidth()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->hasScreenWidth()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public removeDownEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public removeMoveEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$4600(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public removeUpEvent(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAbsXMax(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAbsXMin(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAbsYMax(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAbsYMin(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCid(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setDevice(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setDeviceBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$1900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2100(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public setDownEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public setEventx(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$300(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public setMoveEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3800(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method

.method public setScreenHeight(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$700(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$500(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$3000(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent$Builder;)V

    return-object p0
.end method

.method public setUpEvent(ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;

    invoke-static {v0, p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;->access$2900(Lcom/baidu/carlife/protobuf/CarlifeTouchEventDeviceProto$CarlifeTouchEventDevice;ILcom/baidu/carlife/protobuf/CarlifeTouchEventProto$CarlifeTouchEvent;)V

    return-object p0
.end method
