.class public final Le/a/b/f/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/f/a;
.implements Le/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/f/c$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:[B

.field public c:I

.field public d:Z

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b/f/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b/f/c;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Le/a/b/f/c;->a:Z

    iput-object p1, p0, Le/a/b/f/c;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Le/a/b/f/c;->c:I

    iput-boolean p1, p0, Le/a/b/f/c;->d:Z

    const/4 p2, 0x0

    iput-object p2, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    iput p1, p0, Le/a/b/f/c;->f:I

    iput p1, p0, Le/a/b/f/c;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g()V
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_2

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    iget p1, p0, Le/a/b/f/c;->c:I

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iget-boolean v0, p0, Le/a/b/f/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/b/f/c;->b:[B

    array-length v0, v0

    if-gt p1, v0, :cond_1

    :goto_0
    iput p1, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/a/b/f/c;->e()V

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/f/c$a;

    .line 1
    iget v0, v0, Le/a/b/f/c$a;->b:I

    .line 2
    :goto_0
    iget v1, p0, Le/a/b/f/c;->c:I

    if-gt v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    new-instance v2, Le/a/b/f/c$a;

    add-int/2addr p1, v0

    invoke-direct {v2, v0, p1, p2}, Le/a/b/f/c$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/a/b/f/c;->e()V

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    new-instance v1, Le/a/b/f/c$a;

    iget v2, p0, Le/a/b/f/c;->c:I

    invoke-direct {v1, v2, p1}, Le/a/b/f/c$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/b/f/c;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/f/c$a;

    iget v1, p0, Le/a/b/f/c;->c:I

    .line 1
    iget v2, v0, Le/a/b/f/c$a;->b:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    iput v1, v0, Le/a/b/f/c$a;->b:I

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Le/a/b/f/c;->b:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    iget v1, p0, Le/a/b/f/c;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Le/a/b/f/c;->b:[B

    :cond_0
    return-void
.end method

.method public h()[B
    .locals 4

    iget v0, p0, Le/a/b/f/c;->c:I

    new-array v1, v0, [B

    iget-object v2, p0, Le/a/b/f/c;->b:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public i([B)V
    .locals 6

    array-length v0, p1

    .line 1
    iget v1, p0, Le/a/b/f/c;->c:I

    add-int v2, v1, v0

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x0

    or-int/lit8 v5, v0, 0x0

    or-int/2addr v5, v2

    if-ltz v5, :cond_2

    array-length v5, p1

    if-gt v4, v5, :cond_2

    iget-boolean v4, p0, Le/a/b/f/c;->a:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Le/a/b/f/c;->b:[B

    array-length v4, v4

    if-gt v2, v4, :cond_1

    :goto_0
    iget-object v4, p0, Le/a/b/f/c;->b:[B

    invoke-static {p1, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "bytes.length "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "..!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(I)V
    .locals 3

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Le/a/b/f/c;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public k(I)V
    .locals 5

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Le/a/b/f/c;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public l(I)V
    .locals 4

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Le/a/b/f/c;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Le/a/b/f/c;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public m(I)I
    .locals 8

    iget-boolean v0, p0, Le/a/b/f/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Le/a/b/f/c;->f(I)V

    :cond_0
    iget v0, p0, Le/a/b/f/c;->c:I

    shr-int/lit8 v1, p1, 0x7

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_1
    move v7, v1

    move v1, p1

    move p1, v7

    if-eqz v5, :cond_5

    if-ne p1, v2, :cond_3

    and-int/lit8 v5, p1, 0x1

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v4

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    and-int/lit8 v1, v1, 0x7f

    if-eqz v5, :cond_4

    const/16 v6, 0x80

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    or-int/2addr v1, v6

    int-to-byte v1, v1

    .line 1
    invoke-virtual {p0, v1}, Le/a/b/f/c;->j(I)V

    shr-int/lit8 v1, p1, 0x7

    goto :goto_1

    .line 2
    :cond_5
    iget p1, p0, Le/a/b/f/c;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public n(I)I
    .locals 2

    iget-boolean v0, p0, Le/a/b/f/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Le/a/b/f/c;->f(I)V

    :cond_0
    iget v0, p0, Le/a/b/f/c;->c:I

    :goto_0
    ushr-int/lit8 v1, p1, 0x7

    and-int/lit8 p1, p1, 0x7f

    if-eqz v1, :cond_1

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Le/a/b/f/c;->j(I)V

    move p1, v1

    goto :goto_0

    :cond_1
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Le/a/b/f/c;->j(I)V

    .line 2
    iget p1, p0, Le/a/b/f/c;->c:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public o(I)V
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Le/a/b/f/c;->c:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Le/a/b/f/c;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/b/f/c;->b:[B

    array-length p1, p1

    if-gt v0, p1, :cond_1

    :goto_0
    iput v0, p0, Le/a/b/f/c;->c:I

    return-void

    :cond_1
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
