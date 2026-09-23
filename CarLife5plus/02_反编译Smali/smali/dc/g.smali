.class public final synthetic Ldc/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Ldc/g;->a:I

    .line 2
    .line 3
    iput-wide p2, p0, Ldc/g;->b:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ldc/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ly2/j;

    .line 7
    .line 8
    sget-object v0, Lw0/o0;->c:Ly2/u;

    .line 9
    .line 10
    new-instance v1, Lw0/n0;

    .line 11
    .line 12
    sget-object v5, Lw0/m0;->b:Lw0/m0;

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    sget-object v2, Ll0/h0;->a:Ll0/h0;

    .line 16
    .line 17
    iget-wide v3, p0, Ldc/g;->b:J

    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lw0/n0;-><init>(Ll0/h0;JLw0/m0;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_0
    check-cast p1, Lv1/c;

    .line 29
    .line 30
    iget-object v0, p1, Lv1/c;->a:Lv1/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lv1/a;->g()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    shr-long/2addr v0, v2

    .line 39
    long-to-int v1, v0

    .line 40
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    .line 46
    div-float/2addr v0, v1

    .line 47
    invoke-static {p1, v0}, Lw0/y0;->q(Lv1/c;F)Ly1/f;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ly1/k;

    .line 52
    .line 53
    const/4 v3, 0x5

    .line 54
    iget-wide v4, p0, Ldc/g;->b:J

    .line 55
    .line 56
    invoke-direct {v2, v3, v4, v5}, Ly1/k;-><init>(IJ)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Ll0/c;

    .line 60
    .line 61
    invoke-direct {v3, v0, v1, v2}, Ll0/c;-><init>(FLy1/f;Ly1/k;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_1
    iget-wide v0, p0, Ldc/g;->b:J

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
