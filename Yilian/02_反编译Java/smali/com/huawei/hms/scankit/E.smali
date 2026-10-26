.class public Lcom/huawei/hms/scankit/E;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/E;->h:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->i:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->j:Z

    iput p1, p0, Lcom/huawei/hms/scankit/E;->a:I

    iput p2, p0, Lcom/huawei/hms/scankit/E;->b:I

    iput p3, p0, Lcom/huawei/hms/scankit/E;->c:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/E;->g:Z

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/E;->h:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->i:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->j:Z

    iput p1, p0, Lcom/huawei/hms/scankit/E;->a:I

    iput p2, p0, Lcom/huawei/hms/scankit/E;->b:I

    iput p3, p0, Lcom/huawei/hms/scankit/E;->c:I

    iput-boolean p4, p0, Lcom/huawei/hms/scankit/E;->d:Z

    iput-boolean p5, p0, Lcom/huawei/hms/scankit/E;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/E;->g:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/E;->h:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->i:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->j:Z

    iput v0, p0, Lcom/huawei/hms/scankit/E;->a:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->b:I

    iput p1, p0, Lcom/huawei/hms/scankit/E;->c:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->d:Z

    iput-boolean p2, p0, Lcom/huawei/hms/scankit/E;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/E;->g:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/E;->h:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->i:I

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->j:Z

    iget v0, p1, Lcom/huawei/hms/scankit/E;->a:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->a:I

    iget v0, p1, Lcom/huawei/hms/scankit/E;->b:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->b:I

    iget v0, p1, Lcom/huawei/hms/scankit/E;->c:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->c:I

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/E;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->d:Z

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/E;->e:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->e:Z

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/E;->g:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/E;->g:Z

    iget v0, p1, Lcom/huawei/hms/scankit/E;->f:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->f:I

    iget v0, p1, Lcom/huawei/hms/scankit/E;->h:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->h:I

    iget v0, p1, Lcom/huawei/hms/scankit/E;->i:I

    iput v0, p0, Lcom/huawei/hms/scankit/E;->i:I

    iget-boolean p1, p1, Lcom/huawei/hms/scankit/E;->j:Z

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/E;->j:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/huawei/hms/scankit/E;
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/E;->f:I

    return-object p0
.end method
