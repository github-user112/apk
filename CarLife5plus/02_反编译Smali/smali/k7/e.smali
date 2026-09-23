.class public final synthetic Lk7/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/o;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/h1;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf9/o;Lf1/b1;Lf1/b1;Lf1/h1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lk7/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/e;->b:Lf9/o;

    iput-object p2, p0, Lk7/e;->c:Lf1/b1;

    iput-object p3, p0, Lk7/e;->e:Lf1/b1;

    iput-object p4, p0, Lk7/e;->d:Lf1/h1;

    return-void
.end method

.method public synthetic constructor <init>(Lf9/o;Lf1/b1;Lf1/h1;Lf1/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lk7/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/e;->b:Lf9/o;

    iput-object p2, p0, Lk7/e;->c:Lf1/b1;

    iput-object p3, p0, Lk7/e;->d:Lf1/h1;

    iput-object p4, p0, Lk7/e;->e:Lf1/b1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lk7/e;->a:I

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
    invoke-interface {p1}, Lj8/o0;->c()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lk7/e;->c:Lf1/b1;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lk7/e;->d:Lf1/h1;

    .line 38
    .line 39
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lk7/e;->e:Lf1/b1;

    .line 48
    .line 49
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lk7/e;->b:Lf9/o;

    .line 59
    .line 60
    invoke-interface {v2, p1, v0, v1}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lk7/e;->c:Lf1/b1;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lk7/e;->e:Lf1/b1;

    .line 77
    .line 78
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lk7/e;->d:Lf1/h1;

    .line 88
    .line 89
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lk7/e;->b:Lf9/o;

    .line 107
    .line 108
    invoke-interface {v2, p1, v1, v0}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 112
    .line 113
    return-object p1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
