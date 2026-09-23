.class public final enum Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallRecordsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;",
        ">;",
        "Lcom/google/protobuf/h0;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

.field public static final enum DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

.field public static final DEFAULT_TYPE_VALUE:I = 0x0

.field public static final enum INCOMING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

.field public static final INCOMING_TYPE_VALUE:I = 0x1

.field public static final enum MISSED_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

.field public static final MISSED_TYPE_VALUE:I = 0x3

.field public static final enum OUTGOING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

.field public static final OUTGOING_TYPE_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/i0;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 3
    .line 4
    sget-object v1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->INCOMING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->OUTGOING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->MISSED_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 2
    .line 3
    const-string v1, "DEFAULT_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 10
    .line 11
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 12
    .line 13
    const-string v1, "INCOMING_TYPE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->INCOMING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 20
    .line 21
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 22
    .line 23
    const-string v1, "OUTGOING_TYPE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->OUTGOING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 30
    .line 31
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 32
    .line 33
    const-string v1, "MISSED_TYPE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->MISSED_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 40
    .line 41
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->$values()[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->$VALUES:[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 46
    .line 47
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType$1;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->internalValueMap:Lcom/google/protobuf/i0;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->MISSED_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->OUTGOING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->INCOMING_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->DEFAULT_TYPE:Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 24
    .line 25
    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/i0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->internalValueMap:Lcom/google/protobuf/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->forNumber(I)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    .line 1
    const-class v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->$VALUES:[Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeCallRecordsProto$CarlifeCallRecords$CallRecordsType;->value:I

    .line 2
    .line 3
    return v0
.end method
