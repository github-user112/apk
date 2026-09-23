.class public final enum Lcom/huawei/hms/scankit/p/be;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/be;

.field public static final enum b:Lcom/huawei/hms/scankit/p/be;

.field public static final enum c:Lcom/huawei/hms/scankit/p/be;

.field public static final enum d:Lcom/huawei/hms/scankit/p/be;

.field public static final synthetic e:[Lcom/huawei/hms/scankit/p/be;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/huawei/hms/scankit/p/be;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/be;->a:Lcom/huawei/hms/scankit/p/be;

    new-instance v0, Lcom/huawei/hms/scankit/p/be;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/be;->b:Lcom/huawei/hms/scankit/p/be;

    new-instance v0, Lcom/huawei/hms/scankit/p/be;

    const-string v1, "BYTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/be;->c:Lcom/huawei/hms/scankit/p/be;

    new-instance v0, Lcom/huawei/hms/scankit/p/be;

    const-string v1, "NUMERIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/be;->d:Lcom/huawei/hms/scankit/p/be;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/be;

    sget-object v6, Lcom/huawei/hms/scankit/p/be;->a:Lcom/huawei/hms/scankit/p/be;

    aput-object v6, v1, v2

    sget-object v2, Lcom/huawei/hms/scankit/p/be;->b:Lcom/huawei/hms/scankit/p/be;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/scankit/p/be;->c:Lcom/huawei/hms/scankit/p/be;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/huawei/hms/scankit/p/be;->e:[Lcom/huawei/hms/scankit/p/be;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/be;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/p/be;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/be;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/be;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/be;->e:[Lcom/huawei/hms/scankit/p/be;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/be;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/be;

    return-object v0
.end method
