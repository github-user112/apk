.class public final Le/a/b/d/c/q;
.super Le/a/b/d/c/o;
.source ""


# static fields
.field public static final b:Le/a/b/d/c/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/a/b/d/c/q;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Le/a/b/d/c/q;-><init>(J)V

    .line 2
    sput-object v0, Le/a/b/d/c/q;->b:Le/a/b/d/c/q;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/d/c/o;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/b/d/c/o;->a:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "long"

    return-object v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    sget-object v0, Le/a/b/d/d/c;->m:Le/a/b/d/d/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Le/a/b/d/c/o;->a:J

    const-string v2, "long{0x"

    .line 2
    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ld/s/y;->h0(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
