.class public final La/c/a/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "La/c/a/n$a<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:La/c/a/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/c0<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, La/c/a/c0;->b:I

    new-instance v0, La/c/a/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/c/a/b0;-><init>(I)V

    .line 2
    invoke-virtual {v0}, La/c/a/c0;->g()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/c/a/n;->c:Z

    .line 1
    sget v0, La/c/a/c0;->b:I

    new-instance v0, La/c/a/b0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/c/a/b0;-><init>(I)V

    .line 2
    iput-object v0, p0, La/c/a/n;->a:La/c/a/c0;

    return-void
.end method

.method public static e(La/c/a/i0;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object p0, p0, La/c/a/i0;->u:La/c/a/j0;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, p1, La/c/a/x;

    if-nez p0, :cond_0

    instance-of p0, p1, La/c/a/t;

    if-eqz p0, :cond_1

    goto :goto_0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, La/c/a/r$c;

    if-eqz p0, :cond_1

    goto :goto_0

    :pswitch_2
    instance-of p0, p1, La/c/a/g;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()La/c/a/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/n<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, La/c/a/n;

    invoke-direct {v0}, La/c/a/n;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v2}, La/c/a/c0;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v2, v1}, La/c/a/c0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c/a/n$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, La/c/a/n;->d(La/c/a/n$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1}, La/c/a/c0;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c/a/n$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, La/c/a/n;->d(La/c/a/n$a;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, La/c/a/n;->c:Z

    iput-boolean v1, v0, La/c/a/n;->c:Z

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final c(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/n$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, La/c/a/t;

    if-eqz v1, :cond_0

    check-cast p1, La/c/a/t;

    invoke-virtual {p1}, La/c/a/t;->a()La/c/a/x;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, La/c/a/n$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1
    iget-object v1, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1, v0}, La/c/a/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, La/c/a/t;

    if-eqz v2, :cond_1

    check-cast v1, La/c/a/t;

    invoke-virtual {v1}, La/c/a/t;->a()La/c/a/x;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2}, La/c/a/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {p1, v0, v1}, La/c/a/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {v0}, La/c/a/n$a;->c()La/c/a/j0;

    move-result-object v1

    sget-object v2, La/c/a/j0;->j:La/c/a/j0;

    if-ne v1, v2, :cond_7

    .line 3
    iget-object v1, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v1, v0}, La/c/a/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, La/c/a/t;

    if-eqz v2, :cond_5

    check-cast v1, La/c/a/t;

    invoke-virtual {v1}, La/c/a/t;->a()La/c/a/x;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_1

    .line 4
    :cond_6
    check-cast v1, La/c/a/x;

    invoke-interface {v1}, La/c/a/x;->toBuilder()La/c/a/x$a;

    move-result-object v1

    check-cast p1, La/c/a/x;

    invoke-interface {v0, v1, p1}, La/c/a/n$a;->d(La/c/a/x$a;La/c/a/x;)La/c/a/x$a;

    move-result-object p1

    invoke-interface {p1}, La/c/a/x$a;->build()La/c/a/x;

    move-result-object p1

    iget-object v1, p0, La/c/a/n;->a:La/c/a/c0;

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {p0, p1}, La/c/a/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, v0, p1}, La/c/a/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/c/a/n;->a()La/c/a/n;

    move-result-object v0

    return-object v0
.end method

.method public d(La/c/a/n$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, La/c/a/n$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, La/c/a/n$a;->b()La/c/a/i0;

    move-result-object v2

    invoke-static {v2, v1}, La/c/a/n;->e(La/c/a/i0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, La/c/a/n$a;->b()La/c/a/i0;

    move-result-object v0

    invoke-static {v0, p2}, La/c/a/n;->e(La/c/a/i0;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, La/c/a/t;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, La/c/a/n;->c:Z

    :cond_3
    iget-object v0, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v0, p1, p2}, La/c/a/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, La/c/a/n;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, La/c/a/n;

    iget-object v0, p0, La/c/a/n;->a:La/c/a/c0;

    iget-object p1, p1, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v0, p1}, La/c/a/c0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/c/a/n;->a:La/c/a/c0;

    invoke-virtual {v0}, La/c/a/c0;->hashCode()I

    move-result v0

    return v0
.end method
