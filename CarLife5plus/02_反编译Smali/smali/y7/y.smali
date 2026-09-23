.class public final synthetic Ly7/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly7/y;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/y;->b:Lf1/b1;

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
    .locals 1

    .line 1
    iget v0, p0, Ly7/y;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Float;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ly7/y;->b:Lf1/b1;

    .line 12
    .line 13
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lf9/k;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :pswitch_0
    check-cast p1, Lj8/k0;

    .line 35
    .line 36
    const-string v0, "it"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 42
    .line 43
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Ly7/y;->b:Lf1/b1;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "newValue"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Ly7/y;->b:Lf1/b1;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_2
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    const-string v0, "newValue"

    .line 77
    .line 78
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Ly7/y;->b:Lf1/b1;

    .line 82
    .line 83
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, "newValue"

    .line 92
    .line 93
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Ly7/y;->b:Lf1/b1;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    return-object p1

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
