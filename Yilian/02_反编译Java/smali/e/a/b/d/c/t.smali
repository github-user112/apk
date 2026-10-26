.class public final Le/a/b/d/c/t;
.super Le/a/b/d/c/a;
.source ""


# instance fields
.field public final a:Le/a/b/d/c/v;

.field public final b:Le/a/b/d/c/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/d/c/v;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    new-instance v0, Le/a/b/d/c/v;

    const-string v1, "Ljava/lang/Class;"

    invoke-direct {v0, v1}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Le/a/b/d/c/v;Le/a/b/d/c/v;)V
    .locals 0

    invoke-direct {p0}, Le/a/b/d/c/a;-><init>()V

    iput-object p1, p0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    iput-object p2, p0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    invoke-virtual {v1}, Le/a/b/d/c/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    invoke-virtual {v1}, Le/a/b/d/c/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Le/a/b/d/c/a;)I
    .locals 2

    check-cast p1, Le/a/b/d/c/t;

    iget-object v0, p0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    iget-object v1, p1, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    invoke-virtual {v0, v1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    iget-object p1, p1, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "nat"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Le/a/b/d/c/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/d/c/t;

    iget-object v0, p0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    iget-object v2, p1, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    invoke-virtual {v0, v2}, Le/a/b/d/c/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    iget-object p1, p1, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Le/a/b/d/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    invoke-virtual {v0}, Le/a/b/d/c/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/b/d/c/t;->b:Le/a/b/d/c/v;

    invoke-virtual {v1}, Le/a/b/d/c/v;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "nat{"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/d/c/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
