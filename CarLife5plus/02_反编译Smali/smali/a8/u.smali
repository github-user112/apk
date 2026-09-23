.class public final synthetic La8/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lf9/a;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La8/w0;Ljava/util/List;ZLf9/a;Lf9/k;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, La8/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/u;->e:Ljava/lang/Object;

    iput-object p2, p0, La8/u;->f:Ljava/lang/Object;

    iput-boolean p3, p0, La8/u;->b:Z

    iput-object p4, p0, La8/u;->c:Lf9/a;

    iput-object p5, p0, La8/u;->g:Ljava/lang/Object;

    iput p6, p0, La8/u;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lm7/k;ZLf9/a;Ljava/lang/String;Lf9/n;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, La8/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/u;->e:Ljava/lang/Object;

    iput-boolean p2, p0, La8/u;->b:Z

    iput-object p3, p0, La8/u;->c:Lf9/a;

    iput-object p4, p0, La8/u;->f:Ljava/lang/Object;

    iput-object p5, p0, La8/u;->g:Ljava/lang/Object;

    iput p6, p0, La8/u;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lu7/h;ZLjava/lang/String;Ljava/lang/String;Lf9/a;I)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, La8/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/u;->e:Ljava/lang/Object;

    iput-boolean p2, p0, La8/u;->b:Z

    iput-object p3, p0, La8/u;->f:Ljava/lang/Object;

    iput-object p4, p0, La8/u;->g:Ljava/lang/Object;

    iput-object p5, p0, La8/u;->c:Lf9/a;

    iput p6, p0, La8/u;->d:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, La8/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La8/u;->e:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lu7/h;

    .line 10
    .line 11
    iget-object v0, p0, La8/u;->f:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, La8/u;->g:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v4, v0

    .line 19
    check-cast v4, Ljava/lang/String;

    .line 20
    .line 21
    move-object v6, p1

    .line 22
    check-cast v6, Lf1/s;

    .line 23
    .line 24
    check-cast p2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget p1, p0, La8/u;->d:I

    .line 30
    .line 31
    or-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-boolean v2, p0, La8/u;->b:Z

    .line 38
    .line 39
    iget-object v5, p0, La8/u;->c:Lf9/a;

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v7}, Lu7/h;->c(ZLjava/lang/String;Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_0
    iget-object v0, p0, La8/u;->e:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v1, v0

    .line 50
    check-cast v1, Lm7/k;

    .line 51
    .line 52
    iget-object v0, p0, La8/u;->f:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v4, v0

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p0, La8/u;->g:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v5, v0

    .line 60
    check-cast v5, Lf9/n;

    .line 61
    .line 62
    move-object v6, p1

    .line 63
    check-cast v6, Lf1/s;

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget p1, p0, La8/u;->d:I

    .line 71
    .line 72
    or-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget-boolean v2, p0, La8/u;->b:Z

    .line 79
    .line 80
    iget-object v3, p0, La8/u;->c:Lf9/a;

    .line 81
    .line 82
    invoke-virtual/range {v1 .. v7}, Lm7/k;->a(ZLf9/a;Ljava/lang/String;Lf9/n;Lf1/s;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, La8/u;->e:Ljava/lang/Object;

    .line 87
    .line 88
    move-object v1, v0

    .line 89
    check-cast v1, La8/w0;

    .line 90
    .line 91
    iget-object v0, p0, La8/u;->f:Ljava/lang/Object;

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    check-cast v2, Ljava/util/List;

    .line 95
    .line 96
    iget-object v0, p0, La8/u;->g:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v5, v0

    .line 99
    check-cast v5, Lf9/k;

    .line 100
    .line 101
    move-object v6, p1

    .line 102
    check-cast v6, Lf1/s;

    .line 103
    .line 104
    check-cast p2, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget p1, p0, La8/u;->d:I

    .line 110
    .line 111
    or-int/lit8 p1, p1, 0x1

    .line 112
    .line 113
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iget-boolean v3, p0, La8/u;->b:Z

    .line 118
    .line 119
    iget-object v4, p0, La8/u;->c:Lf9/a;

    .line 120
    .line 121
    invoke-virtual/range {v1 .. v7}, La8/w0;->b(Ljava/util/List;ZLf9/a;Lf9/k;Lf1/s;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
