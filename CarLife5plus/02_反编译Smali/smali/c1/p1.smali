.class public final Lc1/p1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lc1/m1;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lc1/m1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/p1;->a:Lc1/m1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lc1/p1;->b:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, La2/g;

    .line 3
    .line 4
    check-cast p2, Lx1/b;

    .line 5
    .line 6
    iget-wide v4, p2, Lx1/b;->a:J

    .line 7
    .line 8
    sget-object p1, Lc1/t1;->a:Lc1/t1;

    .line 9
    .line 10
    iget-boolean p1, p0, Lc1/p1;->b:Z

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iget-object v1, p0, Lc1/p1;->a:Lc1/m1;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Lc1/m1;->a(ZZ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    sget p1, Lc1/t1;->b:F

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float v3, p1, p2

    .line 28
    .line 29
    const/16 v6, 0x78

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, La2/f;->s(La2/g;JFJI)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method
