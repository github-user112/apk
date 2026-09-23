.class public Lcom/huawei/hms/scankit/p/ya;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/ya;->a:I

    iput p2, p0, Lcom/huawei/hms/scankit/p/ya;->b:I

    iput p3, p0, Lcom/huawei/hms/scankit/p/ya;->c:I

    iput p4, p0, Lcom/huawei/hms/scankit/p/ya;->d:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ya;->b:I

    return v0
.end method
