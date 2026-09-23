.class public final synthetic Lj8/g0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lj8/g0;->a:I

    iput-object p3, p0, Lj8/g0;->c:Ljava/lang/Object;

    iput p1, p0, Lj8/g0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr1/p;II)V
    .locals 0

    .line 2
    const/4 p2, 0x2

    iput p2, p0, Lj8/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g0;->c:Ljava/lang/Object;

    iput p3, p0, Lj8/g0;->b:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lj8/g0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/g0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr1/p;

    .line 9
    .line 10
    check-cast p1, Lf1/s;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget v1, p0, Lj8/g0;->b:I

    .line 23
    .line 24
    invoke-static {v0, p1, p2, v1}, Ll0/e;->b(Lr1/p;Lf1/s;II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_0
    iget-object v0, p0, Lj8/g0;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/List;

    .line 33
    .line 34
    check-cast p1, Lf1/s;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lj8/g0;->b:I

    .line 42
    .line 43
    or-int/lit8 p2, p2, 0x1

    .line 44
    .line 45
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-static {v0, p1, p2}, Lg5/a;->j(Ljava/util/List;Lf1/s;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lj8/g0;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    check-cast p1, Lf1/s;

    .line 58
    .line 59
    check-cast p2, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget p2, p0, Lj8/g0;->b:I

    .line 65
    .line 66
    or-int/lit8 p2, p2, 0x1

    .line 67
    .line 68
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {v0, p1, p2}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
