.class public final Lcom/huawei/hms/scankit/p/tc$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/tc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/hms/scankit/p/rc;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/tc$a;->a:F

    return-void
.end method

.method public synthetic constructor <init>(FLcom/huawei/hms/scankit/p/sc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/tc$a;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)I
    .locals 2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->a()I

    move-result v1

    invoke-static {v0, v1}, La;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result p1

    iget v0, p0, Lcom/huawei/hms/scankit/p/tc$a;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result p2

    iget v0, p0, Lcom/huawei/hms/scankit/p/tc$a;->a:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/huawei/hms/scankit/p/rc;

    check-cast p2, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/tc$a;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)I

    move-result p1

    return p1
.end method
