.class public final Lf1/y0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lf9/k;


# direct methods
.method public synthetic constructor <init>(Lf9/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf1/y0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/y0;->b:Lf9/k;

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
    .locals 5

    .line 1
    iget v0, p0, Lf1/y0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lp1/j;

    .line 7
    .line 8
    sget-object v0, Lp1/l;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-wide v1, Lp1/l;->e:J

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    int-to-long v3, v3

    .line 15
    add-long/2addr v3, v1

    .line 16
    sput-wide v3, Lp1/l;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    iget-object v0, p0, Lf1/y0;->b:Lf9/k;

    .line 20
    .line 21
    new-instance v3, Lp1/e;

    .line 22
    .line 23
    invoke-direct {v3, v1, v2, p1, v0}, Lp1/e;-><init>(JLp1/j;Lf9/k;)V

    .line 24
    .line 25
    .line 26
    return-object v3

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    .line 29
    throw p1

    .line 30
    :pswitch_0
    iget-object v0, p0, Lf1/y0;->b:Lf9/k;

    .line 31
    .line 32
    check-cast p1, Llb/w;

    .line 33
    .line 34
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-object p1, p0, Lf1/y0;->b:Lf9/k;

    .line 53
    .line 54
    const-wide/32 v2, 0xf4240

    .line 55
    .line 56
    .line 57
    div-long/2addr v0, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
