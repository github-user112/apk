.class public final synthetic Lj8/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lr8/e;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Lf9/n;FLd7/q;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lj8/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/w;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj8/w;->d:Lr8/e;

    iput p3, p0, Lj8/w;->b:F

    iput-object p4, p0, Lj8/w;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ll9/d;FLf9/k;Lf1/v2;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lj8/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/w;->c:Ljava/lang/Object;

    iput p2, p0, Lj8/w;->b:F

    iput-object p3, p0, Lj8/w;->d:Lr8/e;

    iput-object p4, p0, Lj8/w;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lj8/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/w;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lg9/x;

    .line 9
    .line 10
    iget-object v1, p0, Lj8/w;->d:Lr8/e;

    .line 11
    .line 12
    check-cast v1, Lf9/n;

    .line 13
    .line 14
    iget-object v2, p0, Lj8/w;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ld7/q;

    .line 17
    .line 18
    check-cast p1, Ln3/l;

    .line 19
    .line 20
    iget-wide v3, p1, Ln3/l;->a:J

    .line 21
    .line 22
    const/16 v5, 0x20

    .line 23
    .line 24
    shr-long v6, v3, v5

    .line 25
    .line 26
    long-to-int v7, v6

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    const-wide v6, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long v8, v3, v6

    .line 35
    .line 36
    long-to-int v9, v8

    .line 37
    if-eqz v9, :cond_0

    .line 38
    .line 39
    shr-long v8, v3, v5

    .line 40
    .line 41
    long-to-int v5, v8

    .line 42
    and-long/2addr v3, v6

    .line 43
    long-to-int v4, v3

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {v5, v4, v3}, Ly1/h0;->f(III)Ly1/f;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Ly1/h0;->a(Ly1/f;)Ly1/b;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v1, v4, p1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-wide v5, p1, Ln3/l;->a:J

    .line 57
    .line 58
    iget p1, p0, Lj8/w;->b:F

    .line 59
    .line 60
    invoke-static {v4, v5, v6, p1, v2}, Ll5/j;->b(Ly1/o;JFLd7/q;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 64
    .line 65
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_0
    iget-object v0, p0, Lj8/w;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ll9/d;

    .line 71
    .line 72
    iget-object v1, p0, Lj8/w;->d:Lr8/e;

    .line 73
    .line 74
    check-cast v1, Lf9/k;

    .line 75
    .line 76
    iget-object v2, p0, Lj8/w;->e:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lf1/v2;

    .line 79
    .line 80
    check-cast p1, Lf0/g;

    .line 81
    .line 82
    const-string v3, "$this$LazyColumn"

    .line 83
    .line 84
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    new-instance v4, La8/r;

    .line 96
    .line 97
    const/4 v5, 0x3

    .line 98
    invoke-direct {v4, v5, v0}, La8/r;-><init>(ILjava/util/List;)V

    .line 99
    .line 100
    .line 101
    new-instance v5, Lj8/z;

    .line 102
    .line 103
    iget v6, p0, Lj8/w;->b:F

    .line 104
    .line 105
    invoke-direct {v5, v0, v6, v1, v2}, Lj8/z;-><init>(Ljava/util/List;FLf9/k;Lf1/v2;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ln1/c;

    .line 109
    .line 110
    const v1, 0x2fd4df92

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-direct {v0, v5, v1, v2}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lf0/g;->b:Le7/l;

    .line 118
    .line 119
    new-instance v1, Lf0/f;

    .line 120
    .line 121
    invoke-direct {v1, v4, v0}, Lf0/f;-><init>(Lf9/k;Ln1/c;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v3, v1}, Le7/l;->a(ILh0/p;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 128
    .line 129
    return-object p1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
