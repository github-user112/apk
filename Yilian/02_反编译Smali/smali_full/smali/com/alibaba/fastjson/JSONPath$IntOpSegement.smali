.class public Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntOpSegement"
.end annotation


# instance fields
.field public final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field public final value:J

.field public valueDecimal:Ljava/math/BigDecimal;

.field public valueDouble:Ljava/lang/Double;

.field public valueFloat:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_1

    return p2

    :cond_1
    instance-of p3, p1, Ljava/math/BigDecimal;

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    if-nez p3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p3, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_d

    if-eq p3, v3, :cond_b

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_5

    if-eq p3, p4, :cond_3

    return p2

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    return p2

    :cond_5
    if-lez p1, :cond_6

    const/4 p2, 0x1

    :cond_6
    return p2

    :cond_7
    if-gtz p1, :cond_8

    const/4 p2, 0x1

    :cond_8
    return p2

    :cond_9
    if-gez p1, :cond_a

    const/4 p2, 0x1

    :cond_a
    return p2

    :cond_b
    if-eqz p1, :cond_c

    const/4 p2, 0x1

    :cond_c
    return p2

    :cond_d
    if-nez p1, :cond_e

    const/4 p2, 0x1

    :cond_e
    return p2

    :cond_f
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_1d

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    if-nez p3, :cond_10

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-float p3, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    :cond_10
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p3, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1b

    if-eq p3, v3, :cond_19

    if-eq p3, v2, :cond_17

    if-eq p3, v1, :cond_15

    if-eq p3, v0, :cond_13

    if-eq p3, p4, :cond_11

    return p2

    :cond_11
    if-ltz p1, :cond_12

    const/4 p2, 0x1

    :cond_12
    return p2

    :cond_13
    if-lez p1, :cond_14

    const/4 p2, 0x1

    :cond_14
    return p2

    :cond_15
    if-gtz p1, :cond_16

    const/4 p2, 0x1

    :cond_16
    return p2

    :cond_17
    if-gez p1, :cond_18

    const/4 p2, 0x1

    :cond_18
    return p2

    :cond_19
    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    :cond_1a
    return p2

    :cond_1b
    if-nez p1, :cond_1c

    const/4 p2, 0x1

    :cond_1c
    return p2

    :cond_1d
    instance-of p3, p1, Ljava/lang/Double;

    if-eqz p3, :cond_2b

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    if-nez p3, :cond_1e

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    :cond_1e
    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p3, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_29

    if-eq p3, v3, :cond_27

    if-eq p3, v2, :cond_25

    if-eq p3, v1, :cond_23

    if-eq p3, v0, :cond_21

    if-eq p3, p4, :cond_1f

    return p2

    :cond_1f
    if-ltz p1, :cond_20

    const/4 p2, 0x1

    :cond_20
    return p2

    :cond_21
    if-lez p1, :cond_22

    const/4 p2, 0x1

    :cond_22
    return p2

    :cond_23
    if-gtz p1, :cond_24

    const/4 p2, 0x1

    :cond_24
    return p2

    :cond_25
    if-gez p1, :cond_26

    const/4 p2, 0x1

    :cond_26
    return p2

    :cond_27
    if-eqz p1, :cond_28

    const/4 p2, 0x1

    :cond_28
    return p2

    :cond_29
    if-nez p1, :cond_2a

    const/4 p2, 0x1

    :cond_2a
    return p2

    :cond_2b
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_36

    if-eq p1, v3, :cond_34

    if-eq p1, v2, :cond_32

    if-eq p1, v1, :cond_30

    if-eq p1, v0, :cond_2e

    if-eq p1, p4, :cond_2c

    return p2

    :cond_2c
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-gtz p1, :cond_2d

    const/4 p2, 0x1

    :cond_2d
    return p2

    :cond_2e
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-gez p1, :cond_2f

    const/4 p2, 0x1

    :cond_2f
    return p2

    :cond_30
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-ltz p1, :cond_31

    const/4 p2, 0x1

    :cond_31
    return p2

    :cond_32
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-lez p1, :cond_33

    const/4 p2, 0x1

    :cond_33
    return p2

    :cond_34
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-eqz p1, :cond_35

    const/4 p2, 0x1

    :cond_35
    return p2

    :cond_36
    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p1, v4, p3

    if-nez p1, :cond_37

    const/4 p2, 0x1

    :cond_37
    return p2
.end method
