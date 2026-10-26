.class public final enum Lcom/huawei/hms/scankit/aiscan/common/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/aiscan/common/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum b:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum c:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum d:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum e:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum f:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum g:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum h:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum i:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final synthetic j:[Lcom/huawei/hms/scankit/aiscan/common/d;


# instance fields
.field public final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->a:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Ljava/util/List;

    const-string v2, "POSSIBLE_FORMATS"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "PHOTO_MODE"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->c:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "PHOTO_MODE_NUM"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "NEED_JNI"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->e:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Ljava/lang/String;

    const-string v2, "CHARACTER_SET"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->f:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Ljava/lang/Void;

    const-string v2, "RETURN_CODABAR_START_END"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->g:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Lcom/huawei/hms/scankit/aiscan/common/A;

    const-string v2, "NEED_RESULT_POINT_CALLBACK"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, [I

    const-string v2, "ALLOWED_EAN_EXTENSIONS"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->i:Lcom/huawei/hms/scankit/aiscan/common/d;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->a:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->c:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->e:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->f:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v8

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->g:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v9

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/d;->j:[Lcom/huawei/hms/scankit/aiscan/common/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/d;->k:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/d;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/d;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/aiscan/common/d;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->j:[Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/d;

    return-object v0
.end method
