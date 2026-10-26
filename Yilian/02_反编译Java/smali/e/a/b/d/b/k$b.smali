.class public Le/a/b/d/b/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/d/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Le/a/b/d/d/d;

.field public c:Le/a/b/d/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/a/b/d/b/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/d/b/k;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Le/a/b/d/b/k;

    iget v0, p0, Le/a/b/d/b/k$b;->a:I

    iget-object v1, p0, Le/a/b/d/b/k$b;->b:Le/a/b/d/d/d;

    invoke-static {p1, v0, v1}, Le/a/b/d/b/k;->b(Le/a/b/d/b/k;ILe/a/b/d/d/d;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/a/b/d/b/k$b;->a:I

    iget-object v1, p0, Le/a/b/d/b/k$b;->b:Le/a/b/d/d/d;

    invoke-static {v0, v1}, Le/a/b/d/b/k;->d(ILe/a/b/d/d/d;)I

    move-result v0

    return v0
.end method
