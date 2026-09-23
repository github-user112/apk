.class public final Lw0/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr2/q2;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Lr1/p;

.field public final synthetic e:Lw0/q;


# direct methods
.method public constructor <init>(Lr2/q2;JZLr1/p;Lw0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/f;->a:Lr2/q2;

    .line 5
    .line 6
    iput-wide p2, p0, Lw0/f;->b:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lw0/f;->c:Z

    .line 9
    .line 10
    iput-object p5, p0, Lw0/f;->d:Lr1/p;

    .line 11
    .line 12
    iput-object p6, p0, Lw0/f;->e:Lw0/q;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v2

    .line 19
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget-object p2, Lr2/i1;->s:Lf1/w2;

    .line 26
    .line 27
    iget-object v0, p0, Lw0/f;->a:Lr2/q2;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Lw0/e;

    .line 34
    .line 35
    iget-object v4, p0, Lw0/f;->d:Lr1/p;

    .line 36
    .line 37
    iget-object v5, p0, Lw0/f;->e:Lw0/q;

    .line 38
    .line 39
    iget-wide v1, p0, Lw0/f;->b:J

    .line 40
    .line 41
    iget-boolean v3, p0, Lw0/f;->c:Z

    .line 42
    .line 43
    invoke-direct/range {v0 .. v5}, Lw0/e;-><init>(JZLr1/p;Lw0/q;)V

    .line 44
    .line 45
    .line 46
    const v1, 0x4b1ac501    # 1.0142977E7f

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/16 v1, 0x38

    .line 54
    .line 55
    invoke-static {p2, v0, p1, v1}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 60
    .line 61
    .line 62
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 63
    .line 64
    return-object p1
.end method
