.class public final Ll0/j1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lac/w;Lf1/b1;Lb0/k;Lf1/b1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll0/j1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/j1;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0/j1;->b:Lf1/b1;

    iput-object p3, p0, Ll0/j1;->e:Ljava/lang/Object;

    iput-object p4, p0, Ll0/j1;->d:Lf1/b1;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;Lf1/g1;Lf1/b1;Lf1/g1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll0/j1;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/j1;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0/j1;->d:Lf1/b1;

    iput-object p3, p0, Ll0/j1;->b:Lf1/b1;

    iput-object p4, p0, Ll0/j1;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Lk2/a0;Lw8/c;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ll0/j1;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    sget-object v2, Lx8/a;->a:Lx8/a;

    .line 6
    .line 7
    iget-object v3, p0, Ll0/j1;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Ll0/j1;->b:Lf1/b1;

    .line 10
    .line 11
    iget-object v5, p0, Ll0/j1;->d:Lf1/b1;

    .line 12
    .line 13
    iget-object v6, p0, Ll0/j1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v6, Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    check-cast v5, Lf1/g1;

    .line 21
    .line 22
    check-cast v3, Lf1/g1;

    .line 23
    .line 24
    new-instance v0, Lh0/w;

    .line 25
    .line 26
    invoke-direct {v0, v6, v5, v4, v3}, Lh0/w;-><init>(Landroid/util/DisplayMetrics;Lf1/g1;Lf1/b1;Lf1/g1;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, p2}, Lz/y;->e(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-ne p1, v2, :cond_0

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :cond_0
    return-object v1

    .line 37
    :pswitch_0
    move-object v0, v5

    .line 38
    new-instance v5, Ll0/i1;

    .line 39
    .line 40
    check-cast v6, Lac/w;

    .line 41
    .line 42
    check-cast v3, Lb0/k;

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-direct {v5, v6, v4, v3, v7}, Ll0/i1;-><init>(Lac/w;Lf1/b1;Lb0/k;Lw8/c;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, La8/s0;

    .line 49
    .line 50
    const/16 v3, 0x13

    .line 51
    .line 52
    invoke-direct {v6, v0, v3}, La8/s0;-><init>(Lf1/b1;I)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lz/d2;->a:Lz/g0;

    .line 56
    .line 57
    new-instance v7, Lz/z0;

    .line 58
    .line 59
    invoke-direct {v7, p1}, Lz/z0;-><init>(Ln3/c;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lf1/y1;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v4, p1

    .line 66
    invoke-direct/range {v3 .. v8}, Lf1/y1;-><init>(Lk2/a0;Lf9/o;Lf9/k;Lz/z0;Lw8/c;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v2, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object p1, v1

    .line 77
    :goto_0
    if-ne p1, v2, :cond_2

    .line 78
    .line 79
    move-object v1, p1

    .line 80
    :cond_2
    return-object v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
