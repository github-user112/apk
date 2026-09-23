.class public final Ly9/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly9/p;


# direct methods
.method public synthetic constructor <init>(Ly9/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly9/o;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly9/o;->b:Ly9/p;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ly9/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lua/e;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ly9/o;->b:Ly9/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Ly9/p;->i()Leb/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lda/b;->f:Lda/b;

    .line 17
    .line 18
    invoke-interface {v1, p1, v2}, Leb/o;->f(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Ly9/p;->j(Lua/e;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x4

    .line 28
    invoke-static {p1}, Ly9/p;->h(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    throw p1

    .line 33
    :pswitch_0
    check-cast p1, Lua/e;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Ly9/o;->b:Ly9/p;

    .line 38
    .line 39
    invoke-virtual {v0}, Ly9/p;->i()Leb/o;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lda/b;->f:Lda/b;

    .line 44
    .line 45
    invoke-interface {v1, p1, v2}, Leb/o;->a(Lua/e;Lda/b;)Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Ly9/p;->j(Lua/e;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_1
    const/16 p1, 0x8

    .line 55
    .line 56
    invoke-static {p1}, Ly9/p;->h(I)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    throw p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
