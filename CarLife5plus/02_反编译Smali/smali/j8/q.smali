.class public final synthetic Lj8/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lf9/k;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/io/Serializable;ZZLf9/k;III)V
    .locals 0

    .line 1
    iput p9, p0, Lj8/q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/q;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/q;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p3, p0, Lj8/q;->i:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-boolean p4, p0, Lj8/q;->d:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Lj8/q;->e:Z

    .line 12
    .line 13
    iput-object p6, p0, Lj8/q;->f:Lf9/k;

    .line 14
    .line 15
    iput p7, p0, Lj8/q;->g:I

    .line 16
    .line 17
    iput p8, p0, Lj8/q;->h:I

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lj8/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/q;->i:Ljava/io/Serializable;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Lr8/j;

    .line 10
    .line 11
    move-object v7, p1

    .line 12
    check-cast v7, Lf1/s;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lj8/q;->g:I

    .line 20
    .line 21
    or-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-object v1, p0, Lj8/q;->b:Ljava/util/List;

    .line 28
    .line 29
    iget-object v2, p0, Lj8/q;->c:Ljava/util/List;

    .line 30
    .line 31
    iget-boolean v4, p0, Lj8/q;->d:Z

    .line 32
    .line 33
    iget-boolean v5, p0, Lj8/q;->e:Z

    .line 34
    .line 35
    iget-object v6, p0, Lj8/q;->f:Lf9/k;

    .line 36
    .line 37
    iget v9, p0, Lj8/q;->h:I

    .line 38
    .line 39
    invoke-static/range {v1 .. v9}, Li9/a;->e(Ljava/util/List;Ljava/util/List;Lr8/j;ZZLf9/k;Lf1/s;II)V

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
    iget-object v0, p0, Lj8/q;->i:Ljava/io/Serializable;

    .line 46
    .line 47
    move-object v3, v0

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    move-object v7, p1

    .line 51
    check-cast v7, Lf1/s;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lj8/q;->g:I

    .line 59
    .line 60
    or-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget-object v1, p0, Lj8/q;->b:Ljava/util/List;

    .line 67
    .line 68
    iget-object v2, p0, Lj8/q;->c:Ljava/util/List;

    .line 69
    .line 70
    iget-boolean v4, p0, Lj8/q;->d:Z

    .line 71
    .line 72
    iget-boolean v5, p0, Lj8/q;->e:Z

    .line 73
    .line 74
    iget-object v6, p0, Lj8/q;->f:Lf9/k;

    .line 75
    .line 76
    iget v9, p0, Lj8/q;->h:I

    .line 77
    .line 78
    invoke-static/range {v1 .. v9}, Li9/a;->d(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
