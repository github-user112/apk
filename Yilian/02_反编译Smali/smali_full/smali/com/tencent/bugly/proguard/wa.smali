.class public final Lcom/tencent/bugly/proguard/wa;
.super Lcom/tencent/bugly/proguard/m;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:Lcom/tencent/bugly/proguard/va;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic c:Z


# instance fields
.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/tencent/bugly/proguard/va;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/wa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/wa;->c:Z

    new-instance v0, Lcom/tencent/bugly/proguard/va;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/va;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/wa;->a:Lcom/tencent/bugly/proguard/va;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/wa;->b:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    iput v0, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/bugly/proguard/k;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/bugly/proguard/k;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/wa;->a:Lcom/tencent/bugly/proguard/va;

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/m;IZ)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/va;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    sget-object v0, Lcom/tencent/bugly/proguard/wa;->b:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    const/4 v0, 0x7

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    iget v0, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/m;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    :cond_3
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    iget v0, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;-><init>(Ljava/lang/StringBuilder;I)V

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    const-string p2, "enable"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    const-string p2, "enableUserInfo"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    const-string p2, "enableQuery"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    const-string p2, "url"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    const-string p2, "expUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    const-string p2, "security"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    const-string p2, "valueMap"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-wide p1, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    const-string v1, "strategylastUpdateTime"

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/bugly/proguard/i;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    const-string p2, "httpsUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    const-string p2, "httpsExpUrl"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget p1, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    const-string p2, "eventRecordCount"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    iget p1, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    const-string p2, "eventTimeInterval"

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/wa;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/tencent/bugly/proguard/wa;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/wa;->d:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/wa;->d:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/wa;->e:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/wa;->e:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/wa;->f:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/wa;->f:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->i:Lcom/tencent/bugly/proguard/va;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->j:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/wa;->k:J

    iget-wide v3, p1, Lcom/tencent/bugly/proguard/wa;->k:J

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/n;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/wa;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/wa;->n:I

    iget v2, p1, Lcom/tencent/bugly/proguard/wa;->n:I

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/wa;->o:I

    iget p1, p1, Lcom/tencent/bugly/proguard/wa;->o:I

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Need define key first!"

    :try_start_1
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
