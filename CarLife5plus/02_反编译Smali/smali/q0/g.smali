.class public final synthetic Lq0/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Ln1/c;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ln1/c;II)V
    .locals 0

    .line 1
    iput p4, p0, Lq0/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/g;->b:Lr1/p;

    .line 4
    .line 5
    iput-object p2, p0, Lq0/g;->c:Ln1/c;

    .line 6
    .line 7
    iput p3, p0, Lq0/g;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq0/g;->a:I

    .line 2
    .line 3
    check-cast p1, Lf1/s;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lq0/g;->d:I

    .line 14
    .line 15
    or-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object v0, p0, Lq0/g;->b:Lr1/p;

    .line 22
    .line 23
    iget-object v1, p0, Lq0/g;->c:Ln1/c;

    .line 24
    .line 25
    invoke-static {v0, v1, p1, p2}, Lp9/p1;->b(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_0
    iget p2, p0, Lq0/g;->d:I

    .line 32
    .line 33
    or-int/lit8 p2, p2, 0x1

    .line 34
    .line 35
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object v0, p0, Lq0/g;->b:Lr1/p;

    .line 40
    .line 41
    iget-object v1, p0, Lq0/g;->c:Ln1/c;

    .line 42
    .line 43
    invoke-static {v0, v1, p1, p2}, Lp9/p1;->c(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    iget p2, p0, Lq0/g;->d:I

    .line 48
    .line 49
    or-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-object v0, p0, Lq0/g;->b:Lr1/p;

    .line 56
    .line 57
    iget-object v1, p0, Lq0/g;->c:Ln1/c;

    .line 58
    .line 59
    invoke-static {v0, v1, p1, p2}, Lq0/k;->d(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_2
    iget p2, p0, Lq0/g;->d:I

    .line 64
    .line 65
    or-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iget-object v0, p0, Lq0/g;->b:Lr1/p;

    .line 72
    .line 73
    iget-object v1, p0, Lq0/g;->c:Ln1/c;

    .line 74
    .line 75
    invoke-static {v0, v1, p1, p2}, Lp9/q;->g(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_3
    iget p2, p0, Lq0/g;->d:I

    .line 80
    .line 81
    or-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iget-object v0, p0, Lq0/g;->b:Lr1/p;

    .line 88
    .line 89
    iget-object v1, p0, Lq0/g;->c:Ln1/c;

    .line 90
    .line 91
    invoke-static {v0, v1, p1, p2}, Lp9/q;->f(Lr1/p;Ln1/c;Lf1/s;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
