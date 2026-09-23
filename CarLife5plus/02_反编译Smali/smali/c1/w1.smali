.class public final Lc1/w1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc1/m1;


# direct methods
.method public constructor <init>(Lc1/m1;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lc1/w1;->a:Z

    .line 2
    .line 3
    iput-object p1, p0, Lc1/w1;->b:Lc1/m1;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Lc1/i2;

    .line 3
    .line 4
    move-object v9, p2

    .line 5
    check-cast v9, Lf1/s;

    .line 6
    .line 7
    check-cast p3, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget-object v0, Lc1/t1;->a:Lc1/t1;

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0xe

    .line 16
    .line 17
    const/high16 p2, 0x6000000

    .line 18
    .line 19
    or-int v10, p1, p2

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget-boolean v3, p0, Lc1/w1;->a:Z

    .line 23
    .line 24
    iget-object v4, p0, Lc1/w1;->b:Lc1/m1;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    invoke-virtual/range {v0 .. v10}, Lc1/t1;->b(Lc1/i2;Lr1/p;ZLc1/m1;Lf9/n;Lf9/o;FFLf1/s;I)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    return-object p1
.end method
