.class public final Le/a/b/d/c/l;
.super Le/a/b/d/c/n;
.source ""


# static fields
.field public static final b:[Le/a/b/d/c/l;

.field public static final c:Le/a/b/d/c/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Le/a/b/d/c/l;

    sput-object v0, Le/a/b/d/c/l;->b:[Le/a/b/d/c/l;

    const/4 v0, -0x1

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    const/4 v0, 0x0

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    move-result-object v0

    sput-object v0, Le/a/b/d/c/l;->c:Le/a/b/d/c/l;

    const/4 v0, 0x1

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    const/4 v0, 0x2

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    const/4 v0, 0x3

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    const/4 v0, 0x4

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    const/4 v0, 0x5

    invoke-static {v0}, Le/a/b/d/c/l;->i(I)Le/a/b/d/c/l;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/d/c/n;-><init>(I)V

    return-void
.end method

.method public static i(I)Le/a/b/d/c/l;
    .locals 3

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Le/a/b/d/c/l;->b:[Le/a/b/d/c/l;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1
    iget v2, v1, Le/a/b/d/c/n;->a:I

    if-ne v2, p0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v1, Le/a/b/d/c/l;

    invoke-direct {v1, p0}, Le/a/b/d/c/l;-><init>(I)V

    sget-object p0, Le/a/b/d/c/l;->b:[Le/a/b/d/c/l;

    aput-object v1, p0, v0

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Le/a/b/d/c/n;->a:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "int"

    return-object v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    sget-object v0, Le/a/b/d/d/c;->l:Le/a/b/d/d/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Le/a/b/d/c/n;->a:I

    const-string v1, "int{0x"

    .line 2
    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
