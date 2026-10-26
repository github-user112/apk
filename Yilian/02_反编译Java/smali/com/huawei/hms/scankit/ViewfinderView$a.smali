.class public final enum Lcom/huawei/hms/scankit/ViewfinderView$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/ViewfinderView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/ViewfinderView$a;

.field public static final enum b:Lcom/huawei/hms/scankit/ViewfinderView$a;

.field public static final enum c:Lcom/huawei/hms/scankit/ViewfinderView$a;

.field public static final synthetic d:[Lcom/huawei/hms/scankit/ViewfinderView$a;


# instance fields
.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/huawei/hms/scankit/ViewfinderView$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hms/scankit/ViewfinderView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/ViewfinderView$a;->a:Lcom/huawei/hms/scankit/ViewfinderView$a;

    new-instance v0, Lcom/huawei/hms/scankit/ViewfinderView$a;

    const-string v1, "LINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/hms/scankit/ViewfinderView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/ViewfinderView$a;->b:Lcom/huawei/hms/scankit/ViewfinderView$a;

    new-instance v0, Lcom/huawei/hms/scankit/ViewfinderView$a;

    const-string v1, "GRID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/hms/scankit/ViewfinderView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/ViewfinderView$a;->c:Lcom/huawei/hms/scankit/ViewfinderView$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/huawei/hms/scankit/ViewfinderView$a;

    sget-object v5, Lcom/huawei/hms/scankit/ViewfinderView$a;->a:Lcom/huawei/hms/scankit/ViewfinderView$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/huawei/hms/scankit/ViewfinderView$a;->b:Lcom/huawei/hms/scankit/ViewfinderView$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/huawei/hms/scankit/ViewfinderView$a;->d:[Lcom/huawei/hms/scankit/ViewfinderView$a;

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

    iput p3, p0, Lcom/huawei/hms/scankit/ViewfinderView$a;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/scankit/ViewfinderView$a;)I
    .locals 0

    iget p0, p0, Lcom/huawei/hms/scankit/ViewfinderView$a;->e:I

    return p0
.end method

.method public static synthetic a(I)Lcom/huawei/hms/scankit/ViewfinderView$a;
    .locals 0

    invoke-static {p0}, Lcom/huawei/hms/scankit/ViewfinderView$a;->b(I)Lcom/huawei/hms/scankit/ViewfinderView$a;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Lcom/huawei/hms/scankit/ViewfinderView$a;
    .locals 5

    invoke-static {}, Lcom/huawei/hms/scankit/ViewfinderView$a;->values()[Lcom/huawei/hms/scankit/ViewfinderView$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/huawei/hms/scankit/ViewfinderView$a;->e:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/huawei/hms/scankit/ViewfinderView$a;->b:Lcom/huawei/hms/scankit/ViewfinderView$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/ViewfinderView$a;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/ViewfinderView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/ViewfinderView$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/ViewfinderView$a;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/ViewfinderView$a;->d:[Lcom/huawei/hms/scankit/ViewfinderView$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/ViewfinderView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/ViewfinderView$a;

    return-object v0
.end method
