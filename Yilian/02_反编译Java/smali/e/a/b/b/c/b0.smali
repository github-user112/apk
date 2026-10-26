.class public abstract Le/a/b/b/c/b0;
.super Le/a/b/b/c/w;
.source ""


# instance fields
.field public final c:Le/a/b/d/c/r;


# direct methods
.method public constructor <init>(Le/a/b/d/c/r;)V
    .locals 1

    .line 1
    iget-object v0, p1, Le/a/b/d/c/r;->a:Le/a/b/d/c/w;

    .line 2
    invoke-direct {p0, v0}, Le/a/b/b/c/w;-><init>(Le/a/b/d/c/w;)V

    iput-object p1, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 1

    invoke-super {p0, p1}, Le/a/b/b/c/w;->a(Le/a/b/b/c/m;)V

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 3
    iget-object v0, v0, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 4
    iget-object v0, v0, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    .line 5
    invoke-virtual {p1, v0}, Le/a/b/b/c/o0;->n(Le/a/b/d/c/v;)Le/a/b/b/c/n0;

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 7

    .line 1
    iget-object v0, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    .line 2
    iget-object v1, p1, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    .line 3
    iget-object v2, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    .line 4
    iget-object v2, v2, Le/a/b/d/c/r;->b:Le/a/b/d/c/t;

    .line 5
    iget-object v3, p0, Le/a/b/b/c/w;->b:Le/a/b/d/c/w;

    .line 6
    invoke-virtual {v0, v3}, Le/a/b/b/c/q0;->m(Le/a/b/d/c/w;)I

    move-result v0

    .line 7
    iget-object v2, v2, Le/a/b/d/c/t;->a:Le/a/b/d/c/v;

    .line 8
    invoke-virtual {v1, v2}, Le/a/b/b/c/o0;->m(Le/a/b/d/c/v;)I

    move-result v1

    invoke-virtual {p0, p1}, Le/a/b/b/c/b0;->h(Le/a/b/b/c/m;)I

    move-result p1

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/x;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/b/b/c/b0;->c:Le/a/b/d/c/r;

    invoke-virtual {v3}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/b/b/c/b0;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "  %-10s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  name_idx:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, p2, v2}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_0
    invoke-virtual {p2, v0}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p2, p1}, Le/a/b/f/c;->l(I)V

    invoke-virtual {p2, v1}, Le/a/b/f/c;->k(I)V

    return-void
.end method

.method public abstract h(Le/a/b/b/c/m;)I
.end method

.method public abstract i()Ljava/lang/String;
.end method
