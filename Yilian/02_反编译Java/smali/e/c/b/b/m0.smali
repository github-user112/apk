.class public final Le/c/b/b/m0;
.super Le/c/b/b/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/u<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final h:Le/c/b/b/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/m0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I

.field public final transient g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Le/c/b/b/m0;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/c/b/b/m0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Le/c/b/b/m0;->h:Le/c/b/b/m0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Le/c/b/b/u;-><init>()V

    iput-object p1, p0, Le/c/b/b/m0;->c:[Ljava/lang/Object;

    iput-object p3, p0, Le/c/b/b/m0;->d:[Ljava/lang/Object;

    iput p4, p0, Le/c/b/b/m0;->e:I

    iput p2, p0, Le/c/b/b/m0;->f:I

    iput p5, p0, Le/c/b/b/m0;->g:I

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Le/c/b/b/m0;->c:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/m0;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Le/c/b/b/m0;->g:I

    add-int/2addr p2, p1

    return p2
.end method

.method public c()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/c/b/b/m0;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Le/c/b/b/m0;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Le/c/b/a/f;->q(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Le/c/b/b/m0;->e:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Le/c/b/b/m0;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Le/c/b/b/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/w0<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/b/u;->a()Le/c/b/b/s;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Le/c/b/b/s;->n()Le/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Le/c/b/b/m0;->f:I

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Le/c/b/b/m0;->g()Le/c/b/b/w0;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/c/b/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/s<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/m0;->c:[Ljava/lang/Object;

    iget v1, p0, Le/c/b/b/m0;->g:I

    invoke-static {v0, v1}, Le/c/b/b/s;->i([Ljava/lang/Object;I)Le/c/b/b/s;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/b/m0;->g:I

    return v0
.end method
