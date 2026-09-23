.class public final Le/a/b/d/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/b/d/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/a/b/d/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/b/d/d/c;

.field public final c:Le/a/b/d/d/b;

.field public d:Le/a/b/d/d/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/a/b/d/d/c;Le/a/b/d/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    iput-object p3, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/d/d/a;->d:Le/a/b/d/d/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;)Le/a/b/d/d/a;
    .locals 10

    if-eqz p0, :cond_c

    sget-object v0, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/d/d/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "bad descriptor"

    const/16 v4, 0x28

    if-ne v2, v4, :cond_b

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x29

    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x41

    if-lt v7, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_a

    sub-int/2addr v0, v2

    if-eq v4, v0, :cond_a

    add-int/2addr v4, v2

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_9

    new-array v0, v5, [Le/a/b/d/d/c;

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_5

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/b/d/d/c;->i(Ljava/lang/String;)Le/a/b/d/d/c;

    move-result-object v2

    new-instance v3, Le/a/b/d/d/b;

    invoke-direct {v3, v5}, Le/a/b/d/d/b;-><init>(I)V

    :goto_3
    if-ge v1, v5, :cond_4

    aget-object v4, v0, v1

    .line 3
    invoke-virtual {v3, v1, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4
    :cond_4
    new-instance v0, Le/a/b/d/d/a;

    invoke-direct {v0, p0, v2, v3}, Le/a/b/d/d/a;-><init>(Ljava/lang/String;Le/a/b/d/d/c;Le/a/b/d/d/b;)V

    invoke-static {v0}, Le/a/b/d/d/a;->d(Le/a/b/d/d/a;)Le/a/b/d/d/a;

    move-result-object p0

    return-object p0

    :cond_5
    move v8, v3

    :goto_4
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_4

    :cond_6
    const/16 v9, 0x4c

    if-ne v7, v9, :cond_8

    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v4, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v7, v8, 0x1

    :goto_5
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/b/d/d/c;->h(Ljava/lang/String;)Le/a/b/d/d/c;

    move-result-object v3

    aput-object v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    .line 5
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static d(Le/a/b/d/d/a;)Le/a/b/d/d/a;
    .locals 3

    sget-object v0, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    .line 2
    sget-object v2, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/d/d/a;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    sget-object v2, Le/a/b/d/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Le/a/b/d/d/a;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    iget-object v2, p1, Le/a/b/d/d/a;->b:Le/a/b/d/d/c;

    invoke-virtual {v1, v2}, Le/a/b/d/d/c;->b(Le/a/b/d/d/c;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 1
    iget-object v1, v1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v1, v1

    .line 2
    iget-object v2, p1, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 3
    iget-object v2, v2, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    invoke-virtual {v5, v4}, Le/a/b/d/d/b;->j(I)Le/a/b/d/d/c;

    move-result-object v5

    iget-object v6, p1, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    invoke-virtual {v6, v4}, Le/a/b/d/d/b;->j(I)Le/a/b/d/d/c;

    move-result-object v6

    .line 5
    iget-object v5, v5, Le/a/b/d/d/c;->a:Ljava/lang/String;

    iget-object v6, v6, Le/a/b/d/d/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public b()Le/a/b/d/d/b;
    .locals 9

    iget-object v0, p0, Le/a/b/d/d/a;->d:Le/a/b/d/d/b;

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    .line 1
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 2
    new-instance v1, Le/a/b/d/d/b;

    invoke-direct {v1, v0}, Le/a/b/d/d/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v5, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    invoke-virtual {v5, v3}, Le/a/b/d/d/b;->j(I)Le/a/b/d/d/c;

    move-result-object v5

    .line 3
    iget v6, v5, Le/a/b/d/d/c;->b:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x3

    if-eq v6, v8, :cond_0

    const/4 v8, 0x6

    if-eq v6, v8, :cond_0

    const/16 v8, 0x8

    if-eq v6, v8, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_1

    .line 4
    sget-object v5, Le/a/b/d/d/c;->l:Le/a/b/d/d/c;

    const/4 v4, 0x1

    .line 5
    :cond_1
    invoke-virtual {v1, v3, v5}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v1, p0, Le/a/b/d/d/a;->c:Le/a/b/d/d/b;

    :goto_2
    iput-object v1, p0, Le/a/b/d/d/a;->d:Le/a/b/d/d/b;

    :cond_4
    iget-object v0, p0, Le/a/b/d/d/a;->d:Le/a/b/d/d/b;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/d/d/a;

    invoke-virtual {p0, p1}, Le/a/b/d/d/a;->a(Le/a/b/d/d/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Le/a/b/d/d/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    check-cast p1, Le/a/b/d/d/a;

    iget-object p1, p1, Le/a/b/d/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/d/d/a;->a:Ljava/lang/String;

    return-object v0
.end method
