.class public final Le2/g0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Le2/h0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le2/g0;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p1, p1, Le2/h0;->j:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Le2/g0;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lk1/e;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Le2/g0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 4
    new-array v1, v0, [Lk1/n;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lk1/p;

    invoke-direct {v3, p0}, Lk1/p;-><init>(Le2/g0;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lk1/f;

    invoke-direct {v0, p1, v1}, Lk1/f;-><init>(Lk1/e;[Lk1/n;)V

    iput-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Le2/g0;->a:I

    const-string v0, "array"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    move-result-object p1

    iput-object p1, p0, Le2/g0;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Le2/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    check-cast v0, Lg9/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg9/b;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 16
    .line 17
    check-cast v0, Lk1/f;

    .line 18
    .line 19
    iget-boolean v0, v0, Lk1/d;->c:Z

    .line 20
    .line 21
    return v0

    .line 22
    :pswitch_1
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le2/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    check-cast v0, Lg9/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg9/b;->next()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 16
    .line 17
    check-cast v0, Lk1/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lk1/f;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Le2/j0;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Le2/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0

    .line 12
    :pswitch_0
    iget-object v0, p0, Le2/g0;->b:Ljava/util/Iterator;

    .line 13
    .line 14
    check-cast v0, Lk1/f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lk1/f;->remove()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string v1, "Operation is not supported for read-only collection"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
