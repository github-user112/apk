.class public Lcom/huawei/hms/scankit/p/vd$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/vd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<State:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/huawei/hms/scankit/p/xd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/xd;Lcom/huawei/hms/scankit/p/xd;)I
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xd;->b()I

    move-result p1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/xd;->b()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/huawei/hms/scankit/p/xd;

    check-cast p2, Lcom/huawei/hms/scankit/p/xd;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/vd$a;->a(Lcom/huawei/hms/scankit/p/xd;Lcom/huawei/hms/scankit/p/xd;)I

    move-result p1

    return p1
.end method
