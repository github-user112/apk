.class public final synthetic Lj8/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Lf9/k;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg9/x;FLv/f;Lv/k;Lf9/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lj8/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/b;->d:Ljava/lang/Object;

    iput p2, p0, Lj8/b;->b:F

    iput-object p3, p0, Lj8/b;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj8/b;->f:Ljava/lang/Object;

    iput-object p5, p0, Lj8/b;->c:Lf9/k;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;FLj8/k0;Lf9/k;Lf9/o;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lj8/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/b;->d:Ljava/lang/Object;

    iput p2, p0, Lj8/b;->b:F

    iput-object p3, p0, Lj8/b;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj8/b;->c:Lf9/k;

    iput-object p5, p0, Lj8/b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lj8/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lg9/x;

    .line 9
    .line 10
    iget-object v1, p0, Lj8/b;->e:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v6, v1

    .line 13
    check-cast v6, Lv/f;

    .line 14
    .line 15
    iget-object v1, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v7, v1

    .line 18
    check-cast v7, Lv/k;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Lv/i;

    .line 33
    .line 34
    iget v5, p0, Lj8/b;->b:F

    .line 35
    .line 36
    iget-object v8, p0, Lj8/b;->c:Lf9/k;

    .line 37
    .line 38
    invoke-static/range {v2 .. v8}, Lv/d;->h(Lv/i;JFLv/f;Lv/k;Lf9/k;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_0
    iget-object v0, p0, Lj8/b;->d:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    check-cast v2, Ljava/util/List;

    .line 48
    .line 49
    iget-object v0, p0, Lj8/b;->e:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v4, v0

    .line 52
    check-cast v4, Lj8/k0;

    .line 53
    .line 54
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v6, v0

    .line 57
    check-cast v6, Lf9/o;

    .line 58
    .line 59
    check-cast p1, Lg0/g;

    .line 60
    .line 61
    const-string v0, "$this$LazyVerticalGrid"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    new-instance v7, La8/r;

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    invoke-direct {v7, v1, v2}, La8/r;-><init>(ILjava/util/List;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lj8/e;

    .line 77
    .line 78
    iget v3, p0, Lj8/b;->b:F

    .line 79
    .line 80
    iget-object v5, p0, Lj8/b;->c:Lf9/k;

    .line 81
    .line 82
    invoke-direct/range {v1 .. v6}, Lj8/e;-><init>(Ljava/util/List;FLj8/k0;Lf9/k;Lf9/o;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Ln1/c;

    .line 86
    .line 87
    const v3, -0x4297e015

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-direct {v2, v1, v3, v4}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lg0/g;->c:Le7/l;

    .line 95
    .line 96
    new-instance v1, Lg0/f;

    .line 97
    .line 98
    sget-object v3, Lg0/g;->d:Lf0/q;

    .line 99
    .line 100
    invoke-direct {v1, v3, v7, v2}, Lg0/f;-><init>(Lf9/n;Lf9/k;Ln1/c;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Le7/l;->a(ILh0/p;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
