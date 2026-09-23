.class public final enum Lcom/huawei/hms/scankit/p/fa;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/fa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/fa;

.field public static final enum b:Lcom/huawei/hms/scankit/p/fa;

.field public static final enum c:Lcom/huawei/hms/scankit/p/fa;

.field public static final enum d:Lcom/huawei/hms/scankit/p/fa;

.field public static final synthetic e:[Lcom/huawei/hms/scankit/p/fa;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hms/scankit/p/fa;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/fa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/fa;->a:Lcom/huawei/hms/scankit/p/fa;

    new-instance v0, Lcom/huawei/hms/scankit/p/fa;

    const-string v1, "UDID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/scankit/p/fa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    new-instance v0, Lcom/huawei/hms/scankit/p/fa;

    const-string v1, "SN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hms/scankit/p/fa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/fa;->c:Lcom/huawei/hms/scankit/p/fa;

    new-instance v0, Lcom/huawei/hms/scankit/p/fa;

    const-string v1, "EMPTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hms/scankit/p/fa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/fa;->d:Lcom/huawei/hms/scankit/p/fa;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/fa;

    sget-object v6, Lcom/huawei/hms/scankit/p/fa;->a:Lcom/huawei/hms/scankit/p/fa;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hms/scankit/p/fa;->b:Lcom/huawei/hms/scankit/p/fa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/scankit/p/fa;->c:Lcom/huawei/hms/scankit/p/fa;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/huawei/hms/scankit/p/fa;->e:[Lcom/huawei/hms/scankit/p/fa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/fa;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/p/fa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/fa;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/fa;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/fa;->e:[Lcom/huawei/hms/scankit/p/fa;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/fa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/fa;

    return-object v0
.end method
