.class public final Le/a/b/d/c/m;
.super Le/a/b/d/c/p;
.source ""


# static fields
.field public static final a:Le/a/b/d/c/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/d/c/m;

    invoke-direct {v0}, Le/a/b/d/c/m;-><init>()V

    sput-object v0, Le/a/b/d/c/m;->a:Le/a/b/d/c/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/d/c/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public d(Le/a/b/d/c/a;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Le/a/b/d/c/m;

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    sget-object v0, Le/a/b/d/d/c;->p:Le/a/b/d/d/c;

    return-object v0
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x4466757a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method
