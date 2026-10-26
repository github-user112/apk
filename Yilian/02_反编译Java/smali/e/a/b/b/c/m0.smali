.class public final Le/a/b/b/c/m0;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/v;


# direct methods
.method public constructor <init>(Le/a/b/d/c/v;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/a/b/d/c/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Ld/s/y;->i0(I)I

    move-result v0

    .line 3
    iget-object v1, p1, Le/a/b/d/c/v;->b:Le/a/b/f/b;

    .line 4
    iget v1, v1, Le/a/b/f/b;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 5
    invoke-direct {p0, v1, v0}, Le/a/b/b/c/h0;-><init>(II)V

    iput-object p1, p0, Le/a/b/b/c/m0;->e:Le/a/b/d/c/v;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 0

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->q:Le/a/b/b/c/z;

    return-object v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/m0;

    iget-object v0, p0, Le/a/b/b/c/m0;->e:Le/a/b/d/c/v;

    iget-object p1, p1, Le/a/b/b/c/m0;->e:Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 5

    iget-object p1, p0, Le/a/b/b/c/m0;->e:Le/a/b/d/c/v;

    .line 1
    iget-object v0, p1, Le/a/b/d/c/v;->b:Le/a/b/f/b;

    .line 2
    iget-object p1, p1, Le/a/b/d/c/v;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 3
    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ld/s/y;->i0(I)I

    move-result v1

    const-string v2, "utf16_size: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v2, p2, v1}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    .line 4
    iget v1, v0, Le/a/b/f/b;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iget-object v2, p0, Le/a/b/b/c/m0;->e:Le/a/b/d/c/v;

    invoke-virtual {v2}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, p1}, Le/a/b/f/c;->n(I)I

    .line 6
    iget p1, v0, Le/a/b/f/b;->c:I

    .line 7
    iget v1, p2, Le/a/b/f/c;->c:I

    add-int/2addr p1, v1

    iget-boolean v2, p2, Le/a/b/f/c;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2, p1}, Le/a/b/f/c;->f(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p2, Le/a/b/f/c;->b:[B

    array-length v2, v2

    if-gt p1, v2, :cond_3

    :goto_0
    iget-object v2, p2, Le/a/b/f/c;->b:[B

    .line 8
    array-length v3, v2

    sub-int/2addr v3, v1

    iget v4, v0, Le/a/b/f/b;->c:I

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Le/a/b/f/b;->a:[B

    iget v0, v0, Le/a/b/f/b;->b:I

    invoke-static {v3, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput p1, p2, Le/a/b/f/c;->c:I

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Le/a/b/f/c;->j(I)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "(out.length - offset) < size()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-static {}, Le/a/b/f/c;->g()V

    const/4 p1, 0x0

    throw p1
.end method
