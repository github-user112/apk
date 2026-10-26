.class public abstract Lcom/huawei/hms/scankit/p/Za;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/scankit/aiscan/common/m;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/p/Za;
.end method

.method public abstract a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;
.end method

.method public abstract a()Lcom/huawei/hms/scankit/p/bb;
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/huawei/hms/scankit/aiscan/common/m;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Za;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v0

    return v0
.end method
