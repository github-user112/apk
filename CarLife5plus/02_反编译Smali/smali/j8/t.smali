.class public final synthetic Lj8/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lj8/t;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj8/t;->b:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget v0, p0, Lj8/t;->a:I

    .line 2
    .line 3
    const-string v1, "it"

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, p0, Lj8/t;->b:Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ly2/j;

    .line 13
    .line 14
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 15
    .line 16
    sget-object v0, Ly2/r;->a:Ly2/u;

    .line 17
    .line 18
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    invoke-static {p1, v0}, Ly2/t;->b(Ly2/j;I)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_0
    check-cast p1, Lj8/k0;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 36
    .line 37
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 38
    .line 39
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {v3, p1}, Ll8/d;->e(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_1
    check-cast p1, Lj8/k0;

    .line 48
    .line 49
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 53
    .line 54
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 55
    .line 56
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1, v3}, Ll8/d;->f(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :pswitch_2
    check-cast p1, Lj8/k0;

    .line 65
    .line 66
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Ll8/d;->a:Lr8/o;

    .line 70
    .line 71
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 72
    .line 73
    invoke-interface {p1}, Lj8/o0;->b()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v3, p1}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
