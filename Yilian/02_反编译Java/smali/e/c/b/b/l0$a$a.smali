.class public Le/c/b/b/l0$a$a;
.super Le/c/b/b/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/b/b/l0$a;->k()Le/c/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/s<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Le/c/b/b/l0$a;


# direct methods
.method public constructor <init>(Le/c/b/b/l0$a;)V
    .locals 0

    iput-object p1, p0, Le/c/b/b/l0$a$a;->c:Le/c/b/b/l0$a;

    invoke-direct {p0}, Le/c/b/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/b/b/l0$a$a;->c:Le/c/b/b/l0$a;

    .line 2
    iget v0, v0, Le/c/b/b/l0$a;->f:I

    .line 3
    invoke-static {p1, v0}, Le/c/b/a/f;->c(II)I

    iget-object v0, p0, Le/c/b/b/l0$a$a;->c:Le/c/b/b/l0$a;

    .line 4
    iget-object v1, v0, Le/c/b/b/l0$a;->d:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 5
    iget v0, v0, Le/c/b/b/l0$a;->e:I

    add-int v2, p1, v0

    .line 6
    aget-object v2, v1, v2

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    aget-object p1, v1, p1

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v2, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Le/c/b/b/l0$a$a;->c:Le/c/b/b/l0$a;

    .line 1
    iget v0, v0, Le/c/b/b/l0$a;->f:I

    return v0
.end method
