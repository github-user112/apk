.class public Lcom/huawei/hms/scankit/p/xa$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/Point;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/p/xa$a;->a:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/hms/scankit/p/xa$a;->b:I

    iput v0, p0, Lcom/huawei/hms/scankit/p/xa$a;->c:I

    const-string v2, "off"

    iput-object v2, p0, Lcom/huawei/hms/scankit/p/xa$a;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/huawei/hms/scankit/p/xa$a;->f:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/xa$a;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/huawei/hms/scankit/p/xa$a;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/xa$a;->b:I

    return-object p0
.end method

.method public a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/xa$a;->e:Landroid/graphics/Point;

    return-object p0
.end method

.method public a(Z)Lcom/huawei/hms/scankit/p/xa$a;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/xa$a;->g:Z

    return-object p0
.end method

.method public a()Lcom/huawei/hms/scankit/p/xa;
    .locals 9

    new-instance v8, Lcom/huawei/hms/scankit/p/xa;

    iget v1, p0, Lcom/huawei/hms/scankit/p/xa$a;->a:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/xa$a;->b:I

    iget v3, p0, Lcom/huawei/hms/scankit/p/xa$a;->c:I

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/xa$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/xa$a;->e:Landroid/graphics/Point;

    iget-boolean v6, p0, Lcom/huawei/hms/scankit/p/xa$a;->f:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/scankit/p/xa;-><init>(IIILjava/lang/String;Landroid/graphics/Point;ZLcom/huawei/hms/scankit/p/wa;)V

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/xa$a;->g:Z

    invoke-static {v8, v0}, Lcom/huawei/hms/scankit/p/xa;->a(Lcom/huawei/hms/scankit/p/xa;Z)Lcom/huawei/hms/scankit/p/xa;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/huawei/hms/scankit/p/xa$a;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/xa$a;->c:I

    return-object p0
.end method

.method public b(Z)Lcom/huawei/hms/scankit/p/xa$a;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/xa$a;->f:Z

    return-object p0
.end method
