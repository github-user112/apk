.class public final synthetic Ll0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll0/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/h;->b:Lf9/k;

    .line 4
    .line 5
    iput-object p2, p0, Ll0/h;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Ll0/h;->d:Lf1/b1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ll0/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lj8/k0;

    .line 7
    .line 8
    const-string v0, "it"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 14
    .line 15
    invoke-interface {p1}, Lj8/o0;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Ll0/h;->c:Lf1/b1;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Ll0/h;->b:Lf9/k;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    iget-object v0, p0, Ll0/h;->d:Lf1/b1;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_0
    check-cast p1, Lj8/k0;

    .line 46
    .line 47
    const-string v0, "option"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    iget-object v1, p0, Ll0/h;->c:Lf1/b1;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p1, Lj8/k0;->b:Lj8/o0;

    .line 60
    .line 61
    invoke-interface {v0}, Lj8/o0;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Ll0/h;->b:Lf9/k;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Ll0/h;->d:Lf1/b1;

    .line 71
    .line 72
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_1
    check-cast p1, Lg3/w;

    .line 77
    .line 78
    iget-object v0, p0, Ll0/h;->c:Lf1/b1;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Ll0/h;->d:Lf1/b1;

    .line 84
    .line 85
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, p1, Lg3/w;->a:Lb3/g;

    .line 92
    .line 93
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-object p1, p1, Lg3/w;->a:Lb3/g;

    .line 100
    .line 101
    iget-object v2, p1, Lb3/g;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-interface {v0, v2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    if-nez v1, :cond_0

    .line 107
    .line 108
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v0, p0, Ll0/h;->b:Lf9/k;

    .line 111
    .line 112
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 116
    .line 117
    return-object p1

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
