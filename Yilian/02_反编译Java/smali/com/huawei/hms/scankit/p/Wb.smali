.class public final Lcom/huawei/hms/scankit/p/Wb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/scankit/p/bb;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bb;",
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Wb;->a:Lcom/huawei/hms/scankit/p/bb;

    iput-object p2, p0, Lcom/huawei/hms/scankit/p/Wb;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Wb;->a:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Wb;->b:Ljava/util/List;

    return-object v0
.end method
