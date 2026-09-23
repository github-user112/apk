.class public final Lcom/huawei/hms/scankit/p/Ua;
.super Lcom/huawei/hms/scankit/aiscan/common/g;
.source ""


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/aiscan/common/g;-><init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;)V

    iput-boolean p3, p0, Lcom/huawei/hms/scankit/p/Ua;->e:Z

    iput p4, p0, Lcom/huawei/hms/scankit/p/Ua;->f:I

    iput p5, p0, Lcom/huawei/hms/scankit/p/Ua;->g:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/Ua;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/Ua;->g:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Ua;->e:Z

    return v0
.end method
