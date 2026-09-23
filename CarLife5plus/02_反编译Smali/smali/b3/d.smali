.class public final Lb3/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb3/d;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb3/g;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lb3/d;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lb3/d;->a(Lb3/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lb3/g;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p1, Lb3/g;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lb3/g;->a:Ljava/util/List;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lb3/e;

    .line 28
    .line 29
    new-instance v4, Lb3/c;

    .line 30
    .line 31
    iget-object v5, v3, Lb3/e;->a:Ljava/lang/Object;

    .line 32
    .line 33
    iget v6, v3, Lb3/e;->b:I

    .line 34
    .line 35
    add-int/2addr v6, v1

    .line 36
    iget v7, v3, Lb3/e;->c:I

    .line 37
    .line 38
    add-int/2addr v7, v1

    .line 39
    iget-object v3, v3, Lb3/e;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v4, v5, v6, v7, v3}, Lb3/c;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lb3/d;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 1

    .line 7
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .line 1
    instance-of v0, p1, Lb3/g;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb3/g;

    invoke-virtual {p0, p1}, Lb3/d;->a(Lb3/g;)V

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .line 4
    instance-of v0, p1, Lb3/g;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lb3/g;

    invoke-virtual {p0, p1, p2, p3}, Lb3/d;->b(Lb3/g;II)V

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final b(Lb3/g;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p1, Lb3/g;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p2, p3, v0}, Lb3/h;->a(Lb3/g;IILa8/v0;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 p3, 0x0

    .line 24
    :goto_0
    if-ge p3, p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lb3/e;

    .line 31
    .line 32
    new-instance v2, Lb3/c;

    .line 33
    .line 34
    iget-object v3, v0, Lb3/e;->a:Ljava/lang/Object;

    .line 35
    .line 36
    iget v4, v0, Lb3/e;->b:I

    .line 37
    .line 38
    add-int/2addr v4, v1

    .line 39
    iget v5, v0, Lb3/e;->c:I

    .line 40
    .line 41
    add-int/2addr v5, v1

    .line 42
    iget-object v0, v0, Lb3/e;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {v2, v3, v4, v5, v0}, Lb3/c;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lb3/d;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 p3, p3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final c()Lb3/g;
    .locals 11

    .line 1
    iget-object v0, p0, Lb3/d;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, p0, Lb3/d;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Lb3/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget v8, v6, Lb3/c;->c:I

    .line 36
    .line 37
    const/high16 v9, -0x80000000

    .line 38
    .line 39
    if-ne v8, v9, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v7, v8

    .line 43
    :goto_1
    if-eq v7, v9, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const-string v8, "Item.end should be set first"

    .line 47
    .line 48
    invoke-static {v8}, Lh3/a;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_2
    new-instance v8, Lb3/e;

    .line 52
    .line 53
    iget-object v9, v6, Lb3/c;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iget v10, v6, Lb3/c;->b:I

    .line 56
    .line 57
    iget-object v6, v6, Lb3/c;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v8, v9, v10, v7, v6}, Lb3/e;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lb3/g;

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lb3/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
