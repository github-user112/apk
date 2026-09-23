.class public final Llb/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llb/k0;
.implements Lob/h;


# instance fields
.field public a:Llb/w;

.field public final b:Ljava/util/LinkedHashSet;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/AbstractCollection;)V
    .locals 1

    .line 1
    const-string v0, "typesToIntersect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Llb/v;->c:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b()Llb/a0;
    .locals 7

    .line 1
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Llb/h0;->c:Llb/h0;

    .line 7
    .line 8
    const-string v0, "member scope for intersection type"

    .line 9
    .line 10
    iget-object v2, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-static {v2, v0}, La/a;->p(Ljava/util/Collection;Ljava/lang/String;)Leb/o;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v6, Lba/j;

    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    invoke-direct {v6, v0, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Ls8/w;->a:Ls8/w;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v2, p0

    .line 27
    invoke-static/range {v1 .. v6}, Llb/c;->v(Llb/h0;Llb/k0;Ljava/util/List;ZLeb/o;Lf9/k;)Llb/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final c(Lf9/k;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "getProperTypeRelatedToStringify"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llb/u;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1, p1}, Llb/u;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-static {v1, v0}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v6, Lf1/y0;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {v6, p1, v0}, Lf1/y0;-><init>(Lf9/k;I)V

    .line 22
    .line 23
    .line 24
    const/16 v7, 0x18

    .line 25
    .line 26
    const-string v3, " & "

    .line 27
    .line 28
    const-string v4, "{"

    .line 29
    .line 30
    const-string v5, "}"

    .line 31
    .line 32
    invoke-static/range {v2 .. v7}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Llb/v;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Llb/v;

    .line 12
    .line 13
    iget-object p1, p1, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    iget-object v0, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Llb/v;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Ls9/i;
    .locals 2

    .line 1
    iget-object v0, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Llb/w;

    .line 12
    .line 13
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Llb/k0;->j()Ls9/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getBuiltIns(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final k()Lv9/h;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/v;->b:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Llb/t;->b:Llb/t;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Llb/v;->c(Lf9/k;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
