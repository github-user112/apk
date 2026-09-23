.class public final Le/a/b/b/c/q;
.super Le/a/b/b/c/p;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/b/c/p;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/c/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b/d/c/s;

.field public final c:Le/a/b/b/c/h;


# direct methods
.method public constructor <init>(Le/a/b/d/c/s;ILe/a/b/b/b/g;Le/a/b/d/d/e;)V
    .locals 1

    invoke-direct {p0, p2}, Le/a/b/b/c/p;-><init>(I)V

    if-eqz p1, :cond_1

    iput-object p1, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Le/a/b/b/c/h;

    invoke-direct {v0, p1, p3, p2, p4}, Le/a/b/b/c/h;-><init>(Le/a/b/d/c/s;Le/a/b/b/b/g;ZLe/a/b/d/d/e;)V

    iput-object v0, p0, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v0}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/a/b/b/c/m;Le/a/b/f/a;II)I
    .locals 6

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {p1, v0}, Le/a/b/b/c/f0;->m(Le/a/b/d/c/d;)I

    move-result p1

    sub-int p3, p1, p3

    .line 3
    iget v0, p0, Le/a/b/b/c/p;->a:I

    .line 4
    iget-object v1, p0, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    invoke-static {v1}, Le/a/b/b/c/h0;->h(Le/a/b/b/c/h0;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ne v4, v5, :cond_3

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v2

    iget-object p4, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {p4}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v4, v3

    const-string p4, "  [%x] %s"

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    invoke-static {p3}, Ld/s/y;->i0(I)I

    move-result p4

    const-string v2, "    method_idx:   "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ld/s/y;->g0(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    invoke-static {v0}, Ld/s/y;->i0(I)I

    move-result p4

    const-string v2, "    access_flags: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x31dff

    const/4 v4, 0x3

    .line 5
    invoke-static {v0, v3, v4}, Ld/s/y;->O(III)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p4, v2}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    invoke-static {v1}, Ld/s/y;->i0(I)I

    move-result p4

    const-string v2, "    code_off:     "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, p2, p4}, Le/a/c/a/a;->u(ILjava/lang/StringBuilder;Le/a/b/f/c;I)V

    :cond_2
    invoke-virtual {p2, p3}, Le/a/b/f/c;->n(I)I

    invoke-virtual {p2, v0}, Le/a/b/f/c;->n(I)I

    invoke-virtual {p2, v1}, Le/a/b/f/c;->n(I)I

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/q;

    .line 1
    iget-object v0, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    iget-object p1, p1, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/b/c/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/b/c/q;

    .line 1
    iget-object v0, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    iget-object p1, p1, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Le/a/b/b/c/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1
    iget v1, p0, Le/a/b/b/c/p;->a:I

    .line 2
    invoke-static {v1}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/b/c/q;->b:Le/a/b/d/c/s;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Le/a/b/b/c/q;->c:Le/a/b/b/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
