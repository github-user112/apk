.class public final synthetic Lv/n0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv/s0;


# direct methods
.method public synthetic constructor <init>(Lv/s0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv/n0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv/n0;->b:Lv/s0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lv/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv/n0;->b:Lv/s0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lv/s0;->b()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lv/n0;->b:Lv/s0;

    .line 18
    .line 19
    iget-object v1, v0, Lv/s0;->b:Lf1/k1;

    .line 20
    .line 21
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lv/s0;->c()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v0, Lv/s0;->e:Lf1/i1;

    .line 36
    .line 37
    iget-object v2, v1, Lf1/i1;->b:Lf1/n2;

    .line 38
    .line 39
    invoke-static {v2, v1}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lf1/n2;

    .line 44
    .line 45
    iget-wide v1, v1, Lf1/n2;->c:J

    .line 46
    .line 47
    const-wide/high16 v3, -0x8000000000000000L

    .line 48
    .line 49
    cmp-long v5, v1, v3

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, v0, Lv/s0;->f:Lf1/k1;

    .line 55
    .line 56
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 72
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
