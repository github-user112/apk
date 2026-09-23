.class public final synthetic Lv/t0;
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

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p7, p0, Lv/t0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv/t0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lv/t0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lv/t0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lv/t0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lv/t0;->g:Ljava/lang/Object;

    .line 12
    .line 13
    iput p6, p0, Lv/t0;->b:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lv/t0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv/t0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lv/t0;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Ly/c;

    .line 15
    .line 16
    iget-object v0, p0, Lv/t0;->e:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Lr1/p;

    .line 20
    .line 21
    iget-object v0, p0, Lv/t0;->f:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v4, v0

    .line 24
    check-cast v4, Lf9/o;

    .line 25
    .line 26
    iget-object v0, p0, Lv/t0;->g:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v0

    .line 29
    check-cast v5, Lf9/a;

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    check-cast v6, Lf1/s;

    .line 33
    .line 34
    check-cast p2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lv/t0;->b:I

    .line 40
    .line 41
    or-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static/range {v1 .. v7}, Ly/g;->c(Ljava/lang/String;Ly/c;Lr1/p;Lf9/o;Lf9/a;Lf1/s;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_0
    iget-object v0, p0, Lv/t0;->c:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lv/s0;

    .line 57
    .line 58
    iget-object v0, p0, Lv/t0;->d:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    check-cast v2, Lv/p0;

    .line 62
    .line 63
    iget-object v0, p0, Lv/t0;->g:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v5, v0

    .line 66
    check-cast v5, Lv/v;

    .line 67
    .line 68
    move-object v6, p1

    .line 69
    check-cast v6, Lf1/s;

    .line 70
    .line 71
    check-cast p2, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lv/t0;->b:I

    .line 77
    .line 78
    or-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    iget-object v3, p0, Lv/t0;->e:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v4, p0, Lv/t0;->f:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static/range {v1 .. v7}, Lv/u0;->a(Lv/s0;Lv/p0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lf1/s;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
