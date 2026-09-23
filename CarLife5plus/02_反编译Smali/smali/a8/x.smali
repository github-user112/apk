.class public final synthetic La8/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p6, p0, La8/x;->a:I

    iput-object p1, p0, La8/x;->c:Ljava/lang/Object;

    iput-object p2, p0, La8/x;->d:Ljava/lang/Object;

    iput-object p3, p0, La8/x;->e:Ljava/lang/Object;

    iput-object p4, p0, La8/x;->f:Ljava/lang/Object;

    iput p5, p0, La8/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr1/p;Lw0/z;Lf9/k;Ln1/c;I)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, La8/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/x;->c:Ljava/lang/Object;

    iput-object p2, p0, La8/x;->d:Ljava/lang/Object;

    iput-object p3, p0, La8/x;->f:Ljava/lang/Object;

    iput-object p4, p0, La8/x;->e:Ljava/lang/Object;

    iput p5, p0, La8/x;->b:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, La8/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La8/x;->c:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lr1/p;

    .line 10
    .line 11
    iget-object v0, p0, La8/x;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lw0/z;

    .line 15
    .line 16
    iget-object v0, p0, La8/x;->f:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Lf9/k;

    .line 20
    .line 21
    iget-object v0, p0, La8/x;->e:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Ln1/c;

    .line 25
    .line 26
    move-object v5, p1

    .line 27
    check-cast v5, Lf1/s;

    .line 28
    .line 29
    check-cast p2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget p1, p0, La8/x;->b:I

    .line 35
    .line 36
    or-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static/range {v1 .. v6}, Lw0/y0;->c(Lr1/p;Lw0/z;Lf9/k;Ln1/c;Lf1/s;I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_0
    iget-object v0, p0, La8/x;->c:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Ln1/c;

    .line 52
    .line 53
    iget-object v0, p0, La8/x;->d:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Ls0/b;

    .line 57
    .line 58
    move-object v5, p1

    .line 59
    check-cast v5, Lf1/s;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget p1, p0, La8/x;->b:I

    .line 67
    .line 68
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    or-int/lit8 v6, p1, 0x1

    .line 73
    .line 74
    iget-object v3, p0, La8/x;->e:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v4, p0, La8/x;->f:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Ln1/c;->i(Ls0/b;Ljava/lang/Object;Ljava/lang/Object;Lf1/s;I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, La8/x;->c:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    check-cast v1, La8/w0;

    .line 86
    .line 87
    iget-object v0, p0, La8/x;->d:Ljava/lang/Object;

    .line 88
    .line 89
    move-object v2, v0

    .line 90
    check-cast v2, Lz7/b2;

    .line 91
    .line 92
    iget-object v0, p0, La8/x;->e:Ljava/lang/Object;

    .line 93
    .line 94
    move-object v3, v0

    .line 95
    check-cast v3, Lf9/a;

    .line 96
    .line 97
    iget-object v0, p0, La8/x;->f:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v4, v0

    .line 100
    check-cast v4, Lf9/k;

    .line 101
    .line 102
    move-object v5, p1

    .line 103
    check-cast v5, Lf1/s;

    .line 104
    .line 105
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    iget p1, p0, La8/x;->b:I

    .line 111
    .line 112
    or-int/lit8 p1, p1, 0x1

    .line 113
    .line 114
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual/range {v1 .. v6}, La8/w0;->d(Lz7/b2;Lf9/a;Lf9/k;Lf1/s;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
