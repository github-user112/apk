.class public final synthetic Lo7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lf9/a;

.field public final synthetic d:Lr7/g;


# direct methods
.method public synthetic constructor <init>(Lr7/g;ZLf9/a;II)V
    .locals 0

    .line 1
    iput p5, p0, Lo7/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/c;->d:Lr7/g;

    .line 4
    .line 5
    iput-boolean p2, p0, Lo7/c;->b:Z

    .line 6
    .line 7
    iput-object p3, p0, Lo7/c;->c:Lf9/a;

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
    .locals 3

    .line 1
    iget v0, p0, Lo7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/c;->d:Lr7/g;

    .line 7
    .line 8
    check-cast v0, Ls7/e;

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
    const/16 p2, 0x31

    .line 18
    .line 19
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-boolean v1, p0, Lo7/c;->b:Z

    .line 24
    .line 25
    iget-object v2, p0, Lo7/c;->c:Lf9/a;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p1, p2}, Ls7/e;->d(ZLf9/a;Lf1/s;I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_0
    iget-object v0, p0, Lo7/c;->d:Lr7/g;

    .line 34
    .line 35
    check-cast v0, Lq7/d;

    .line 36
    .line 37
    check-cast p1, Lf1/s;

    .line 38
    .line 39
    check-cast p2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/16 p2, 0x31

    .line 45
    .line 46
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget-boolean v1, p0, Lo7/c;->b:Z

    .line 51
    .line 52
    iget-object v2, p0, Lo7/c;->c:Lf9/a;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, p1, p2}, Lq7/d;->d(ZLf9/a;Lf1/s;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lo7/c;->d:Lr7/g;

    .line 59
    .line 60
    check-cast v0, Lp7/a;

    .line 61
    .line 62
    check-cast p1, Lf1/s;

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/16 p2, 0x31

    .line 70
    .line 71
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget-boolean v1, p0, Lo7/c;->b:Z

    .line 76
    .line 77
    iget-object v2, p0, Lo7/c;->c:Lf9/a;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2, p1, p2}, Lp7/a;->d(ZLf9/a;Lf1/s;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lo7/c;->d:Lr7/g;

    .line 84
    .line 85
    check-cast v0, Lo7/h;

    .line 86
    .line 87
    check-cast p1, Lf1/s;

    .line 88
    .line 89
    check-cast p2, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/16 p2, 0x31

    .line 95
    .line 96
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    iget-boolean v1, p0, Lo7/c;->b:Z

    .line 101
    .line 102
    iget-object v2, p0, Lo7/c;->c:Lf9/a;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2, p1, p2}, Lo7/h;->d(ZLf9/a;Lf1/s;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
