.class public final Lc1/g0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:F

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lr1/p;FJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/g0;->a:Lr1/p;

    .line 2
    .line 3
    iput p2, p0, Lc1/g0;->b:F

    .line 4
    .line 5
    iput-wide p3, p0, Lc1/g0;->c:J

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
    const/16 p1, 0x31

    .line 10
    .line 11
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v0, p0, Lc1/g0;->a:Lr1/p;

    .line 16
    .line 17
    iget v1, p0, Lc1/g0;->b:F

    .line 18
    .line 19
    iget-wide v2, p0, Lc1/g0;->c:J

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lc1/g1;->d(Lr1/p;FJLf1/s;I)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 25
    .line 26
    return-object p1
.end method
