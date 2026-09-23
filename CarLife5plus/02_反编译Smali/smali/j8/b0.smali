.class public final synthetic Lj8/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/io/Serializable;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lj8/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/b0;->b:Ljava/util/List;

    iput-object p2, p0, Lj8/b0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lj8/b0;->g:Ljava/io/Serializable;

    iput-boolean p4, p0, Lj8/b0;->c:Z

    iput-object p5, p0, Lj8/b0;->h:Ljava/lang/Object;

    iput p6, p0, Lj8/b0;->d:I

    iput p7, p0, Lj8/b0;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lu7/h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lj8/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/b0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lj8/b0;->b:Ljava/util/List;

    iput-object p3, p0, Lj8/b0;->g:Ljava/io/Serializable;

    iput-object p4, p0, Lj8/b0;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lj8/b0;->c:Z

    iput p6, p0, Lj8/b0;->d:I

    iput p7, p0, Lj8/b0;->e:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lj8/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/b0;->f:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lu7/h;

    .line 10
    .line 11
    iget-object v0, p0, Lj8/b0;->g:Ljava/io/Serializable;

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lj8/b0;->h:Ljava/lang/Object;

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
    iget p1, p0, Lj8/b0;->d:I

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
    iget-object v2, p0, Lj8/b0;->b:Ljava/util/List;

    .line 38
    .line 39
    iget-boolean v5, p0, Lj8/b0;->c:Z

    .line 40
    .line 41
    iget v8, p0, Lj8/b0;->e:I

    .line 42
    .line 43
    invoke-virtual/range {v1 .. v8}, Lu7/h;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLf1/s;II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_0
    iget-object v0, p0, Lj8/b0;->f:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Lr8/j;

    .line 53
    .line 54
    iget-object v0, p0, Lj8/b0;->g:Ljava/io/Serializable;

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    check-cast v3, Lr8/j;

    .line 58
    .line 59
    iget-object v0, p0, Lj8/b0;->h:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v5, v0

    .line 62
    check-cast v5, Lf9/k;

    .line 63
    .line 64
    move-object v6, p1

    .line 65
    check-cast v6, Lf1/s;

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget p1, p0, Lj8/b0;->d:I

    .line 73
    .line 74
    or-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    iget-object v1, p0, Lj8/b0;->b:Ljava/util/List;

    .line 81
    .line 82
    iget-boolean v4, p0, Lj8/b0;->c:Z

    .line 83
    .line 84
    iget v8, p0, Lj8/b0;->e:I

    .line 85
    .line 86
    invoke-static/range {v1 .. v8}, La/a;->f(Ljava/util/List;Lr8/j;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
