.class public final synthetic Lj8/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr8/j;

.field public final synthetic c:Lf1/h1;

.field public final synthetic d:Lf1/h1;


# direct methods
.method public synthetic constructor <init>(Lr8/j;Lf1/h1;Lf1/h1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lj8/d0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/d0;->b:Lr8/j;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/d0;->c:Lf1/h1;

    .line 6
    .line 7
    iput-object p3, p0, Lj8/d0;->d:Lf1/h1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lj8/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/d0;->c:Lf1/h1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iget-object v2, p0, Lj8/d0;->b:Lr8/j;

    .line 14
    .line 15
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ll9/a;

    .line 18
    .line 19
    iget v2, v2, Ll9/a;->b:F

    .line 20
    .line 21
    cmpg-float v1, v1, v2

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lf1/h1;->g(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lj8/d0;->d:Lf1/h1;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lf1/h1;->g(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lj8/d0;->c:Lf1/h1;

    .line 47
    .line 48
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    iget-object v2, p0, Lj8/d0;->b:Lr8/j;

    .line 54
    .line 55
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Ll9/a;

    .line 58
    .line 59
    iget v2, v2, Ll9/a;->a:F

    .line 60
    .line 61
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    if-lez v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/lit8 v1, v1, -0x1

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lf1/h1;->g(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-object v1, p0, Lj8/d0;->d:Lf1/h1;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lf1/h1;->g(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 84
    .line 85
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
