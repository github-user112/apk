.class public final enum Lcom/huawei/hms/scankit/p/qc;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/qc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum b:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum c:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum d:Lcom/huawei/hms/scankit/p/qc;

.field public static final e:[Lcom/huawei/hms/scankit/p/qc;

.field public static final synthetic f:[Lcom/huawei/hms/scankit/p/qc;


# instance fields
.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/qc;->a:Lcom/huawei/hms/scankit/p/qc;

    new-instance v0, Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/qc;->b:Lcom/huawei/hms/scankit/p/qc;

    new-instance v0, Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "Q"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/qc;->c:Lcom/huawei/hms/scankit/p/qc;

    new-instance v0, Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/qc;->d:Lcom/huawei/hms/scankit/p/qc;

    const/4 v1, 0x4

    new-array v6, v1, [Lcom/huawei/hms/scankit/p/qc;

    sget-object v7, Lcom/huawei/hms/scankit/p/qc;->a:Lcom/huawei/hms/scankit/p/qc;

    aput-object v7, v6, v2

    sget-object v8, Lcom/huawei/hms/scankit/p/qc;->b:Lcom/huawei/hms/scankit/p/qc;

    aput-object v8, v6, v3

    sget-object v9, Lcom/huawei/hms/scankit/p/qc;->c:Lcom/huawei/hms/scankit/p/qc;

    aput-object v9, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/huawei/hms/scankit/p/qc;->f:[Lcom/huawei/hms/scankit/p/qc;

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/qc;

    aput-object v8, v1, v2

    aput-object v7, v1, v3

    aput-object v0, v1, v4

    aput-object v9, v1, v5

    sput-object v1, Lcom/huawei/hms/scankit/p/qc;->e:[Lcom/huawei/hms/scankit/p/qc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hms/scankit/p/qc;->g:I

    return-void
.end method

.method public static a(I)Lcom/huawei/hms/scankit/p/qc;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/qc;->e:[Lcom/huawei/hms/scankit/p/qc;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/qc;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/p/qc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/qc;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/qc;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/qc;->f:[Lcom/huawei/hms/scankit/p/qc;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/qc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/qc;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qc;->g:I

    return v0
.end method
