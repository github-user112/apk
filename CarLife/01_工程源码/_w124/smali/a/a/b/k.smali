.class public final La/a/b/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic F0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->c(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic Q(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->e(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result v0

    const v1, 0x1006f

    if-ne v0, v1, :cond_d

    .line 1
    invoke-virtual {p2}, La/a/a/a/a/a/b;->m()La/c/a/x;

    move-result-object p2

    instance-of v0, p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "\u6536\u5230\u624b\u673a\u7aef\u53d1\u6765\u7684\u6d88\u606f, type: "

    invoke-static {v3}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", areaId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getAreaId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", valueType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    move-object v4, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getValueType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_5

    move-object v4, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, La/c/a/p;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "VehicleControlHandler"

    const-string v5, "tag"

    .line 2
    invoke-static {v3, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "args"

    invoke-static {v2, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v7, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v8, 0x3

    if-nez v7, :cond_6

    goto :goto_6

    .line 4
    :cond_6
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v8, v3, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-nez p2, :cond_7

    goto :goto_7

    .line 5
    :cond_7
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeVehicleControlProto$CarlifeVehicleControl;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_a

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "\u7ed9\u624b\u673a\u7aef\u53d1\u9001\u6d88\u606f"

    aput-object v1, p2, v4

    .line 6
    invoke-static {v3, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_9

    goto :goto_8

    .line 8
    :cond_9
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v8, v3, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const-wide/16 v0, 0x64

    .line 9
    new-instance p2, La/a/b/j;

    invoke-direct {p2, p1}, La/a/b/j;-><init>(La/a/a/a/c;)V

    invoke-interface {p1, v0, v1, p2}, La/a/a/a/c;->L(JLc/k/a/a;)V

    goto :goto_a

    :cond_a
    :goto_9
    const/4 p1, 0x2

    if-nez v1, :cond_b

    goto :goto_a

    .line 10
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_d

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "\u6839\u636e\u6d88\u606f\u6267\u884c\u76f8\u5173\u547d\u4ee4\u64cd\u4f5c"

    aput-object p2, p1, v4

    .line 11
    invoke-static {v3, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_c

    goto :goto_a

    .line 13
    :cond_c
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v8, v3, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_d
    :goto_a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method
