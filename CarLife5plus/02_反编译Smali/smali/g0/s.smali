.class public final synthetic Lg0/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Collection;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lg0/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg0/s;->b:I

    iput-object p2, p0, Lg0/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg0/u;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lg0/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/s;->c:Ljava/lang/Object;

    iput p2, p0, Lg0/s;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lg0/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg0/s;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iget v1, p0, Lg0/s;->b:I

    .line 13
    .line 14
    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    iget-object v0, p0, Lg0/s;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lg0/u;

    .line 26
    .line 27
    check-cast p1, Lh0/f0;

    .line 28
    .line 29
    iget-object v0, v0, Lg0/u;->a:Lf0/a;

    .line 30
    .line 31
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lp1/f;->e()Lf9/k;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-static {v1}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3, v2}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget v0, p1, Lh0/f0;->a:I

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    if-ne v0, v1, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    :goto_1
    if-ge v1, v0, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lg0/s;->b:I

    .line 63
    .line 64
    add-int/2addr v2, v1

    .line 65
    invoke-virtual {p1, v2}, Lh0/f0;->a(I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 72
    .line 73
    return-object p1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
