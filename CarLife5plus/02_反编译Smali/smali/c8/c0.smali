.class public final synthetic Lc8/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lf1/h1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc8/c0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/c0;->b:Lf1/h1;

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
    iget v0, p0, Lc8/c0;->a:I

    .line 2
    .line 3
    const-string v1, "it"

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, p0, Lc8/c0;->b:Lf1/h1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Li9/a;->N(F)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :pswitch_3
    check-cast p1, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 65
    .line 66
    .line 67
    return-object v2

    .line 68
    :pswitch_4
    check-cast p1, Lj8/k0;

    .line 69
    .line 70
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 74
    .line 75
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sget v0, Lc8/b1;->e:I

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_5
    check-cast p1, Lj8/k0;

    .line 86
    .line 87
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 91
    .line 92
    invoke-interface {p1}, Lj8/o0;->a()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 97
    .line 98
    .line 99
    return-object v2

    .line 100
    :pswitch_6
    check-cast p1, Ljava/lang/Float;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    float-to-int p1, p1

    .line 107
    sget v0, Lc8/g0;->h:I

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Lf1/h1;->g(I)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
