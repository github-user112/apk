.class public final Le/a/b/d/c/e;
.super Le/a/b/d/c/n;
.source ""


# static fields
.field public static final b:Le/a/b/d/c/e;

.field public static final c:Le/a/b/d/c/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/d/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/d/c/e;-><init>(Z)V

    sput-object v0, Le/a/b/d/c/e;->b:Le/a/b/d/c/e;

    new-instance v0, Le/a/b/d/c/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/b/d/c/e;-><init>(Z)V

    sput-object v0, Le/a/b/d/c/e;->c:Le/a/b/d/c/e;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/d/c/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Le/a/b/d/c/n;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    sget-object v0, Le/a/b/d/d/c;->g:Le/a/b/d/d/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Le/a/b/d/c/n;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "boolean{true}"

    goto :goto_1

    :cond_1
    const-string v0, "boolean{false}"

    :goto_1
    return-object v0
.end method
