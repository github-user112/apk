.class public final synthetic Lj8/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lj8/o0;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lf9/k;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;III)V
    .locals 0

    .line 1
    iput p10, p0, Lj8/s;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/s;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/s;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p3, p0, Lj8/s;->d:Lj8/o0;

    .line 8
    .line 9
    iput-boolean p4, p0, Lj8/s;->e:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Lj8/s;->f:Z

    .line 12
    .line 13
    iput-object p6, p0, Lj8/s;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p7, p0, Lj8/s;->h:Lf9/k;

    .line 16
    .line 17
    iput p8, p0, Lj8/s;->i:I

    .line 18
    .line 19
    iput p9, p0, Lj8/s;->j:I

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lj8/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v8, p1

    .line 7
    check-cast v8, Lf1/s;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lj8/s;->i:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    iget-object v1, p0, Lj8/s;->b:Ljava/util/List;

    .line 23
    .line 24
    iget-object v2, p0, Lj8/s;->c:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p0, Lj8/s;->d:Lj8/o0;

    .line 27
    .line 28
    iget-boolean v4, p0, Lj8/s;->e:Z

    .line 29
    .line 30
    iget-boolean v5, p0, Lj8/s;->f:Z

    .line 31
    .line 32
    iget-object v6, p0, Lj8/s;->g:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v7, p0, Lj8/s;->h:Lf9/k;

    .line 35
    .line 36
    iget v10, p0, Lj8/s;->j:I

    .line 37
    .line 38
    invoke-static/range {v1 .. v10}, Li9/a;->c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V

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
    move-object v7, p1

    .line 45
    check-cast v7, Lf1/s;

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lj8/s;->i:I

    .line 53
    .line 54
    or-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iget-object v0, p0, Lj8/s;->b:Ljava/util/List;

    .line 61
    .line 62
    iget-object v1, p0, Lj8/s;->c:Ljava/util/List;

    .line 63
    .line 64
    iget-object v2, p0, Lj8/s;->d:Lj8/o0;

    .line 65
    .line 66
    iget-boolean v3, p0, Lj8/s;->e:Z

    .line 67
    .line 68
    iget-boolean v4, p0, Lj8/s;->f:Z

    .line 69
    .line 70
    iget-object v5, p0, Lj8/s;->g:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v6, p0, Lj8/s;->h:Lf9/k;

    .line 73
    .line 74
    iget v9, p0, Lj8/s;->j:I

    .line 75
    .line 76
    invoke-static/range {v0 .. v9}, Li9/a;->c(Ljava/util/List;Ljava/util/List;Lj8/o0;ZZLjava/lang/String;Lf9/k;Lf1/s;II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
