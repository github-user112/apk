.class public final Lcom/huawei/hms/scankit/p/Ya$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Ya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    iput p2, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/scankit/p/Ya$a;)I
    .locals 0

    iget p0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/huawei/hms/scankit/p/Ya$a;)I
    .locals 0

    iget p0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    return v0
.end method

.method public c()Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 3

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "<"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/p/Ya$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
