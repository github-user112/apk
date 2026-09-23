.class public final synthetic Lv/q0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lv/s0;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lv/s0;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv/q0;->a:Lv/s0;

    .line 5
    .line 6
    iput p2, p0, Lv/q0;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lv/q0;->a:Lv/s0;

    .line 8
    .line 9
    iget-object v2, p1, Lv/s0;->i:Lf1/k1;

    .line 10
    .line 11
    iget-object v3, p1, Lv/s0;->e:Lf1/i1;

    .line 12
    .line 13
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    iget-object v2, v3, Lf1/i1;->b:Lf1/n2;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lf1/n2;

    .line 32
    .line 33
    iget-wide v4, v2, Lf1/n2;->c:J

    .line 34
    .line 35
    const-wide/high16 v6, -0x8000000000000000L

    .line 36
    .line 37
    cmp-long v2, v4, v6

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3, v0, v1}, Lf1/i1;->f(J)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Lv/s0;->a:Landroid/support/v4/media/session/t;

    .line 45
    .line 46
    iget-object v2, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lf1/k1;

    .line 49
    .line 50
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, v3, Lf1/i1;->b:Lf1/n2;

    .line 56
    .line 57
    invoke-static {v2, v3}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lf1/n2;

    .line 62
    .line 63
    iget-wide v2, v2, Lf1/n2;->c:J

    .line 64
    .line 65
    sub-long/2addr v0, v2

    .line 66
    const/4 v2, 0x0

    .line 67
    iget v3, p0, Lv/q0;->b:F

    .line 68
    .line 69
    cmpg-float v2, v3, v2

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    long-to-double v0, v0

    .line 75
    float-to-double v3, v3

    .line 76
    div-double/2addr v0, v3

    .line 77
    invoke-static {v0, v1}, Li9/a;->O(D)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    :goto_0
    iget-object v3, p1, Lv/s0;->d:Lf1/i1;

    .line 82
    .line 83
    invoke-virtual {v3, v0, v1}, Lf1/i1;->f(J)V

    .line 84
    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/4 v2, 0x0

    .line 91
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lv/s0;->f(JZ)V

    .line 92
    .line 93
    .line 94
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 95
    .line 96
    return-object p1
.end method
