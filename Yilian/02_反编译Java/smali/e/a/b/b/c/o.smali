.class public final Le/a/b/b/c/o;
.super Le/a/b/b/c/p;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/b/c/p;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/c/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b/d/c/j;


# direct methods
.method public constructor <init>(Le/a/b/d/c/j;I)V
    .locals 0

    invoke-direct {p0, p2}, Le/a/b/b/c/p;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v0}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/a/b/b/c/m;Le/a/b/f/a;II)I
    .locals 5

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    .line 2
    iget-object v0, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {p1, v0}, Le/a/b/b/c/t;->m(Le/a/b/d/c/j;)I

    move-result p1

    sub-int p3, p1, p3

    .line 3
    iget v0, p0, Le/a/b/b/c/p;->a:I

    .line 4
    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2}, Le/a/b/f/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 p4, 0x1

    iget-object v4, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v4}, Le/a/b/d/c/r;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    const-string p4, "  [%x] %s"

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v3, p4}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    invoke-static {p3}, Ld/s/y;->i0(I)I

    move-result p4

    const-string v2, "    field_idx:    "

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

    const/16 v3, 0x50df

    .line 5
    invoke-static {v0, v3, v1}, Ld/s/y;->O(III)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, p3}, Le/a/b/f/c;->n(I)I

    invoke-virtual {p2, v0}, Le/a/b/f/c;->n(I)I

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/a/b/b/c/o;

    .line 1
    iget-object v0, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    iget-object p1, p1, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/b/c/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/b/c/o;

    .line 1
    iget-object v0, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    iget-object p1, p1, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v0, p1}, Le/a/b/d/c/a;->b(Le/a/b/d/c/a;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v0}, Le/a/b/d/c/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Le/a/b/b/c/o;

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

    iget-object v1, p0, Le/a/b/b/c/o;->b:Le/a/b/d/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
