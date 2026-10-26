.class public final Le/a/b/b/b/c;
.super Le/a/b/f/d;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/f/d;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/b/b/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/b/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/b/b/c;-><init>(I)V

    sput-object v0, Le/a/b/b/b/c;->c:Le/a/b/b/b/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Le/a/b/b/b/c;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/b/b/c;

    invoke-virtual {p0, p1}, Le/a/b/b/b/c;->j(Le/a/b/b/b/c;)I

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/a/b/b/b/c$a;->a:Le/a/b/d/c/w;

    .line 4
    sget-object v1, Le/a/b/d/c/w;->d:Le/a/b/d/c/w;

    invoke-virtual {v0, v1}, Le/a/b/d/c/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Le/a/b/b/b/c;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    iget-object v2, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/a/b/b/b/c$a;->a(Le/a/b/b/b/c$a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public k(I)Le/a/b/b/b/c$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/b/b/c$a;

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1
    iget-object v1, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "catch "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p2}, Le/a/b/b/b/c;->k(I)Le/a/b/b/b/c$a;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Le/a/b/b/b/c;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "<any>"

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, v2, Le/a/b/b/b/c$a;->a:Le/a/b/d/c/w;

    .line 4
    invoke-virtual {v3}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v2, v2, Le/a/b/b/b/c$a;->b:I

    .line 6
    invoke-static {v2}, Ld/s/y;->f0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
