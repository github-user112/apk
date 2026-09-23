.class public final Lc1/d2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic e:Lc1/i2;


# direct methods
.method public constructor <init>(Lc1/i2;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/d2;->e:Lc1/i2;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 6
    .line 7
    .line 8
    check-cast p3, Lw8/c;

    .line 9
    .line 10
    new-instance p1, Lc1/d2;

    .line 11
    .line 12
    iget-object p2, p0, Lc1/d2;->e:Lc1/i2;

    .line 13
    .line 14
    invoke-direct {p1, p2, p3}, Lc1/d2;-><init>(Lc1/i2;Lw8/c;)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lc1/d2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc1/d2;->e:Lc1/i2;

    .line 5
    .line 6
    iget-object p1, p1, Lc1/i2;->l:Lb1/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object p1
.end method
