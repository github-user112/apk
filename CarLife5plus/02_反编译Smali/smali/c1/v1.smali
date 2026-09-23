.class public final Lc1/v1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Lb0/k;

.field public final synthetic b:Lc1/m1;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lb0/k;Lc1/m1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/v1;->a:Lb0/k;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/v1;->b:Lc1/m1;

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/v1;->c:Z

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lc1/i2;

    .line 2
    .line 3
    move-object v7, p2

    .line 4
    check-cast v7, Lf1/s;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    sget-object v0, Lc1/t1;->a:Lc1/t1;

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const/high16 v8, 0x30000

    .line 16
    .line 17
    iget-object v1, p0, Lc1/v1;->a:Lb0/k;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Lc1/v1;->b:Lc1/m1;

    .line 21
    .line 22
    iget-boolean v4, p0, Lc1/v1;->c:Z

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v8}, Lc1/t1;->a(Lb0/k;Lr1/p;Lc1/m1;ZJLf1/s;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1
.end method
