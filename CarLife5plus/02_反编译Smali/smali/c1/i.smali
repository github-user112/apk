.class public final Lc1/i;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ld0/h0;

.field public final synthetic c:Ln1/c;


# direct methods
.method public constructor <init>(JLd0/h0;Ln1/c;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/i;->a:J

    .line 2
    .line 3
    iput-object p3, p0, Lc1/i;->b:Ld0/h0;

    .line 4
    .line 5
    iput-object p4, p0, Lc1/i;->c:Ln1/c;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    sget-object p1, Lc1/z2;->a:Lf1/w2;

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lc1/y2;

    .line 33
    .line 34
    iget-object v2, p1, Lc1/y2;->m:Lb3/o0;

    .line 35
    .line 36
    new-instance p1, Lc1/h;

    .line 37
    .line 38
    iget-object p2, p0, Lc1/i;->c:Ln1/c;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lc1/i;->b:Ld0/h0;

    .line 42
    .line 43
    invoke-direct {p1, v0, v1, p2}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const p2, 0x4f204156

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p1, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v5, 0x180

    .line 54
    .line 55
    iget-wide v0, p0, Lc1/i;->a:J

    .line 56
    .line 57
    invoke-static/range {v0 .. v5}, Ld1/e;->a(JLb3/o0;Lf9/n;Lf1/s;I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 61
    .line 62
    return-object p1
.end method
