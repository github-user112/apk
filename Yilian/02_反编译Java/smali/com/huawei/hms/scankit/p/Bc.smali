.class public Lcom/huawei/hms/scankit/p/Bc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = true

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:F = -1.0f

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:Z = false

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field public static q:[Z

.field public static r:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [Z

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    const-string v0, "BUILDING FLAG"

    const-string v1, "use lite sdk"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/huawei/hms/scankit/p/Bc;->e:F

    sput v0, Lcom/huawei/hms/scankit/p/Bc;->f:I

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->o:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->j:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    const/16 v0, 0x8

    new-array v0, v0, [Z

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    return-void
.end method

.method public static a(I)V
    .locals 3

    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    :cond_0
    rem-int/lit8 v0, p0, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    :cond_1
    rem-int/lit8 p0, p0, 0x5

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    :cond_2
    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/E;)V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/Bc;->a()V

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/E;->e:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    iget-boolean v1, p0, Lcom/huawei/hms/scankit/E;->g:Z

    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/huawei/hms/scankit/E;->f:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Bc;->a(I)V

    return-void
.end method
