.class public final Lcom/huawei/hms/scankit/p/pe;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/huawei/hms/scankit/p/wc;

.field public b:Lcom/huawei/hms/scankit/p/qc;

.field public c:Lcom/huawei/hms/scankit/p/zc;

.field public d:I

.field public e:Lcom/huawei/hms/scankit/p/je;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/je;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/pe;->e:Lcom/huawei/hms/scankit/p/je;

    return-object v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/je;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->e:Lcom/huawei/hms/scankit/p/je;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/qc;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->b:Lcom/huawei/hms/scankit/p/qc;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/wc;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->a:Lcom/huawei/hms/scankit/p/wc;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/zc;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->c:Lcom/huawei/hms/scankit/p/zc;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->a:Lcom/huawei/hms/scankit/p/wc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->b:Lcom/huawei/hms/scankit/p/qc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->c:Lcom/huawei/hms/scankit/p/zc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    const-string v2, ">>\n"

    invoke-static {v0, v1, v2}, Le/a/c/a/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
