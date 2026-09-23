.class public final synthetic Lj8/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lf9/k;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;ZLf9/k;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lj8/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/j;->e:Ljava/lang/Object;

    iput-object p2, p0, Lj8/j;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Lj8/j;->b:Z

    iput-object p4, p0, Lj8/j;->c:Lf9/k;

    iput p5, p0, Lj8/j;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ZLf9/a;Ll8/p;Lf9/k;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lj8/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj8/j;->b:Z

    iput-object p2, p0, Lj8/j;->e:Ljava/lang/Object;

    iput-object p3, p0, Lj8/j;->f:Ljava/lang/Object;

    iput-object p4, p0, Lj8/j;->c:Lf9/k;

    iput p5, p0, Lj8/j;->d:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lj8/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/j;->e:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lr1/p;

    .line 10
    .line 11
    iget-object v0, p0, Lj8/j;->f:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Ll5/l;

    .line 15
    .line 16
    move-object v5, p1

    .line 17
    check-cast v5, Lf1/s;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string p1, "$modifier"

    .line 25
    .line 26
    invoke-static {v1, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "$controller"

    .line 30
    .line 31
    invoke-static {v2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lj8/j;->d:I

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
    iget-boolean v3, p0, Lj8/j;->b:Z

    .line 43
    .line 44
    iget-object v4, p0, Lj8/j;->c:Lf9/k;

    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, La/a;->c(Lr1/p;Ll5/l;ZLf9/k;Lf1/s;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_0
    iget-object v0, p0, Lj8/j;->e:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    check-cast v2, Lf9/a;

    .line 56
    .line 57
    iget-object v0, p0, Lj8/j;->f:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v3, v0

    .line 60
    check-cast v3, Ll8/p;

    .line 61
    .line 62
    move-object v5, p1

    .line 63
    check-cast v5, Lf1/s;

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget p1, p0, Lj8/j;->d:I

    .line 71
    .line 72
    or-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-boolean v1, p0, Lj8/j;->b:Z

    .line 79
    .line 80
    iget-object v4, p0, Lj8/j;->c:Lf9/k;

    .line 81
    .line 82
    invoke-static/range {v1 .. v6}, Lj8/p;->b(ZLf9/a;Ll8/p;Lf9/k;Lf1/s;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
