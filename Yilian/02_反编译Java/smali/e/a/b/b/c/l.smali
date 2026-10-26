.class public Le/a/b/b/c/l;
.super Le/a/b/b/c/h0;
.source ""


# instance fields
.field public final e:Le/a/b/b/b/g;

.field public f:[B

.field public final g:Z

.field public final h:Le/a/b/d/c/s;


# direct methods
.method public constructor <init>(Le/a/b/b/b/g;ZLe/a/b/d/c/s;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Le/a/b/b/c/h0;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/a/b/b/c/l;->e:Le/a/b/b/b/g;

    iput-boolean p2, p0, Le/a/b/b/c/l;->g:Z

    iput-object p3, p0, Le/a/b/b/c/l;->h:Le/a/b/d/c/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 0

    return-void
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->r:Le/a/b/b/c/z;

    return-object v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v1, p1, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Le/a/b/b/c/l;->n(Le/a/b/b/c/m;Ljava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;Z)[B

    move-result-object p1

    iput-object p1, p0, Le/a/b/b/c/l;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->l(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "...while placing debug info for "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Le/a/b/b/c/l;->h:Le/a/b/d/c/s;

    invoke-virtual {v0}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object p1

    throw p1
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 6

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/h0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/a/b/f/c;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Le/a/b/b/c/l;->n(Le/a/b/b/c/m;Ljava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;Z)[B

    :cond_0
    iget-object p1, p0, Le/a/b/b/c/l;->f:[B

    invoke-virtual {p2, p1}, Le/a/b/f/c;->i([B)V

    return-void
.end method

.method public final n(Le/a/b/b/c/m;Ljava/lang/String;Ljava/io/PrintWriter;Le/a/b/f/a;Z)[B
    .locals 8

    .line 1
    iget-object p3, p0, Le/a/b/b/c/l;->e:Le/a/b/b/b/g;

    .line 2
    invoke-virtual {p3}, Le/a/b/b/b/g;->a()V

    iget-object v1, p3, Le/a/b/b/b/g;->e:Le/a/b/b/b/t;

    .line 3
    iget-object p3, p0, Le/a/b/b/c/l;->e:Le/a/b/b/b/g;

    .line 4
    invoke-virtual {p3}, Le/a/b/b/b/g;->a()V

    iget-object v2, p3, Le/a/b/b/b/g;->f:Le/a/b/b/b/o;

    .line 5
    iget-object p3, p0, Le/a/b/b/c/l;->e:Le/a/b/b/b/g;

    .line 6
    invoke-virtual {p3}, Le/a/b/b/b/g;->a()V

    iget-object p3, p3, Le/a/b/b/b/g;->g:Le/a/b/b/b/i;

    .line 7
    invoke-virtual {p3}, Le/a/b/b/b/i;->i()I

    move-result v4

    .line 8
    iget v5, p3, Le/a/b/b/b/i;->c:I

    .line 9
    new-instance p3, Le/a/b/b/c/k;

    iget-boolean v6, p0, Le/a/b/b/c/l;->g:Z

    iget-object v7, p0, Le/a/b/b/c/l;->h:Le/a/b/d/c/s;

    move-object v0, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Le/a/b/b/c/k;-><init>(Le/a/b/b/b/t;Le/a/b/b/b/o;Le/a/b/b/c/m;IIZLe/a/b/d/c/s;)V

    const-string p1, "...while encoding debug info"

    if-nez p4, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p3}, Le/a/b/b/c/k;->c()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2, p1}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object p1

    throw p1

    .line 11
    :cond_0
    iput-object p2, p3, Le/a/b/b/c/k;->m:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p3, Le/a/b/b/c/k;->l:Ljava/io/PrintWriter;

    iput-object p4, p3, Le/a/b/b/c/k;->k:Le/a/b/f/a;

    iput-boolean p5, p3, Le/a/b/b/c/k;->n:Z

    .line 12
    :try_start_1
    invoke-virtual {p3}, Le/a/b/b/c/k;->c()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object p1

    :catch_1
    move-exception p2

    invoke-static {p2, p1}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object p1

    throw p1
.end method
