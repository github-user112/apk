.class public final Le/c/b/b/n$d;
.super Le/c/b/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public b:I

.field public final synthetic c:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;I)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    invoke-direct {p0}, Le/c/b/b/g;-><init>()V

    iget-object p1, p1, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Le/c/b/b/n$d;->a:Ljava/lang/Object;

    iput p2, p0, Le/c/b/b/n$d;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Le/c/b/b/n$d;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    .line 1
    iget v2, v1, Le/c/b/b/n;->h:I

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Le/c/b/b/n$d;->a:Ljava/lang/Object;

    iget-object v1, v1, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {v2, v0}, Le/c/b/a/f;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    iget-object v1, p0, Le/c/b/b/n$d;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Le/c/b/b/n;->b(Le/c/b/b/n;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Le/c/b/b/n$d;->b:I

    :cond_1
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/n$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/n$d;->a()V

    iget v0, p0, Le/c/b/b/n$d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    iget-object v1, v1, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/n$d;->a()V

    iget v0, p0, Le/c/b/b/n$d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    iget-object v1, p0, Le/c/b/b/n$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Le/c/b/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Le/c/b/b/n$d;->c:Le/c/b/b/n;

    iget-object v1, v1, Le/c/b/b/n;->d:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    return-object v2
.end method
